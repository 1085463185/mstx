<template>
  <div class="searchnav">
    <el-menu
      :default-active="activeIndex"
      class="el-menu-demo"
      mode="horizontal"
      @select="handleSelect"
    >
      <el-menu-item index="1">综合</el-menu-item>
      <el-menu-item index="2">菜谱</el-menu-item>
      <el-menu-item index="3">食材</el-menu-item>
      <el-menu-item index="4">专题</el-menu-item>
    </el-menu>
    <div class="search">
      <input type="text" v-model="keyword" placeholder="搜索菜谱/食材或专题···" />
      <button type="button" @click="search">搜索</button>
    </div>
  </div>
</template>

<script>
import Bus from "./Bus.js";

export default {
  data() {
    return {
      keyword: "",
      status: 1,
      activeIndex: "1",
      activeIndex2: "1",
      caipuList: [],
      shicaiList: [],
      list: []
    };
  },
  watch: {
    "$route.query.kwd": function() {
      this.getkwd(decodeURI(this.$route.query.kwd));
    }
  },
  mounted() {
    this.getkwd(decodeURI(this.$route.query.kwd));
    Bus.$on("getMenuname", keyword => {
      this.keyword = keyword;
    });
  },
  methods: {
    getkwd(kwd) {
      if (kwd) {
        this.keyword = kwd;
      } else {
        this.keyword = "";
      }
    },
    handleSelect(key, keyPath) {
      // console.log(typeof key);
      this.status = key;
      this.search();
    },
    showmenu() {
      this.$http
        .get("http://192.168.6.36:8000/showmenuByname", {
          params: {
            keyword: this.keyword
          }
        })
        .then(res => {
          // 传递参数
          this.caipuList = res.data;
          if (this.status == "1") {
            this.showfood();
          } else if (this.status == "2") {
            this.getcaipu();
          }
        });
    },
    showfood() {
      this.$http
        .get("http://192.168.6.36:8000/showfoodByname", {
          params: {
            foodname: this.keyword
          }
        })
        .then(res => {
          // 传递参数
          this.shicaiList = res.data;
          if (this.status == "1") {
            this.getmenu();
          } else if (this.status == "3") {
            this.getshicai();
          }
        });
    },
    getcaipu() {
      Bus.$emit("getMenuList", this.caipuList);
    },
    getshicai() {
      Bus.$emit("getMenuList", this.shicaiList);
    },
    getmenu() {
      this.list = this.caipuList.concat(this.shicaiList);
      Bus.$emit("getMenuList", this.list);
    },
    search() {
      
      if (this.keyword) {
        Bus.$emit("getMenuname", this.keyword);
        if (this.status == "1") {
          this.showmenu();
          this.showfood();
          Bus.$emit("getstatus", this.status);
        } else if (this.status == "2") {
          this.showmenu();
          Bus.$emit("getstatus", this.status);
        } else if (this.status == "3") {
          this.showfood();
          Bus.$emit("getstatus", this.status);
        }
      } else return;
    }
  }
};
</script>

<style scoped="">
.searchnav {
  margin: auto;
  width: 640px;
  height: 120px;
}
.search {
  border: 2px solid #ff6767;
  /* padding: 0 10px; */
  margin-top: 8px;
  width: 640px;
  height: 40px;
}
input {
  border: 0;
  outline: none;
  padding-left: 10px;
  width: 538px;
  height: 34px;
}
button {
  border: 0;
  background-color: #ff6767;
  color: white;
  outline: none;
  cursor: pointer;
  width: 92px;
  height: 40px;
}
</style>
