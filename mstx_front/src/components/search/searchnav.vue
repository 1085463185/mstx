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
      <button type="button" @click="search()">搜索</button>
    </div>
  </div>
</template>

<script>
import Bus from "./Bus.js";
export default {
  data() {
    return {
      keyword: "",
      activeIndex: "1",
      activeIndex2: "1",
      caipuList: []
    };
  },
  mounted() {
	Bus.$on("getMenuname", keyword => {
      this.keyword = keyword;
    });
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
    search() {
      console.log(this.keyword);
      if (this.keyword) {
        Bus.$emit("getMenuname", this.keyword);
        this.$http
          .get("/showmenuByname", {
            params: {
              keyword: this.keyword
            }
          })
          .then(res => {
            //   传递参数
            console.log(res.data);
            this.caipuList = res.data;

            Bus.$emit("getMenuList", this.caipuList);
          });
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
