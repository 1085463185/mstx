<template>
  <div id="myheader" @click="goPage" v-cloak>
    <div class="myheader">
      <div class="myheaderLeft">
        <div :class="{img:true, imgbgc:ok}" @mouseenter="shouye" @mouseleave="shouyel">
          <img src="@/assets/mylogo-白.png" :class="{mylogo:true, mlogo:ok}" />
          <button type="button" :class="{souye:ok}">首页</button>
        </div>

        <button type="button">食谱</button>
        <button type="button">食材</button>
        <button type="button">社区</button>
        <button type="button">话题</button>
        <button type="button">搜索</button>
      </div>
      <!-- <p v-text="yonghu"></p> -->
      <div class="myheaderRight">
        <!-- <div v-for="item in yonghu" :key="item.id" >
          <button type="button">{{item.name}}</button>|
          <button type="button">登陆</button>
        </div>-->
        <div class="dengluBox">
        <button class="denglu" type="button" v-html="this.yonghu.name1">{{yonghu.name1}}</button>
        <button @click="exit" class="exit">退出登陆</button>
        </div>
        <button type="button">{{yonghu.name2}}</button>
       
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      yonghu: {
        name1: "登陆",
        name2: "注册"
      },
      ok: false
    };
  },

  mounted() {
    let myname = sessionStorage.getItem("name");
    if (myname) {
      this.yonghu.name1 = `欢迎<span style='color:red;font-size:20px;margin-left:5px'>${myname}</span>`;
      this.yonghu.name2 = "个人中心";
    } else {
      (this.yonghu.name1 = "登陆"), (this.yonghu.name2 = "注册");
    }
    if (this.yonghu.name1 != "登陆") {
      let denglu = document.querySelector(".denglu");
      let dengluBox = document.querySelector(".dengluBox");
        let exit = document.querySelector(".exit");
      dengluBox.onmouseover = function() {
        denglu.innerHTML = "切换登陆";
        exit.style.display = "block"
      };
      dengluBox.onmouseout = function() {
        denglu.innerHTML = `欢迎<span style='color:red;font-size:20px;margin-left:5px'>${myname}</span>`;
       exit.style.display = "none"
     };
    }
  },

  methods: {
    exit(){
      sessionStorage.clear()
      this.$router.go(0)
    },
    shouye() {
      this.ok = true;
    },
    shouyel() {
      this.ok = false;
    },
    goPage(e) {
      var path;
      switch (e.target.innerHTML.trim()) {
        case "首页":
          path = "/";
          break;
        case "食谱":
          path = "/recip/caipuhome/caipulist?kind=热菜";
          break;
        case "食材":
          path = "/food";
          break;
        case "社区":
          path = "/community";
          break;
        case "搜索":
          path = "/search?kwd=";
          break;
        case "注册":
          path = "/login/sign";
          break;
        case "登陆":
          path = "/login";
          break;
        case "个人中心":
          path = "/gerenzx";
          break;
        case "切换登陆":
          path = "/login";
          break;
        case "话题":
          path = "/huati";
          break;
        // 点击到空白处不触发
        default:
          return;
      }
      if (decodeURI(this.$route.fullPath) === path) {
        // 重复点击相同的按钮，不会push，直接刷新页面
        this.$router.go(0);
      } else {
        this.$router.push(path);
      }
    }
  }
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
#myheader {
  z-index: 100;
  width: 100%;
  height: 40px;
  background-color: #333;
  box-sizing: border-box;
  position: relative;
}

#myheader .myheader {
  position: fixed;
  top: 0px;
  left: 0px;
  display: flex;
  justify-content: space-between;
  width: 100%;
  background-color: #333;
  height: 40px;
  box-sizing: border-box;
}
.myheader button {
  width: 55px;
  cursor: pointer;
  background-color: transparent;
  color: #9e9e9e;
  height: 40px;
  border: none;
  font-size: 14px;
  outline: none;
}
#myheader .myheader button:hover {
  background-color: black;
  color: white;
}
.mylogo {
  width: auto;
  height: 14px;
  margin-top: 13px;
  overflow: hidden;
  cursor: pointer;
  line-height: 40px;
  opacity: 0.5;
}
.mlogo {
  opacity: 1;
}
.img {
  display: flex;
  height: 40px;
  padding-left: 20px;
  border: 0px;
  outline: none;
}
.imgbgc {
  background-color: black;
  opacity: 1;
}
.imgbgc .souye {
  color: white;
}
.myheaderLeft {
  display: flex;
  justify-content: space-between;
}
.myheaderRight {
  display: flex;
  margin-right: 20px;
}
.myheaderRight button {
  width: 100px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.myheaderRight .exit{
  position: absolute;
  height: 40px;
  width: 100px;
  background-color: #333;

  top: 39px;
  display: none;
}

</style>
