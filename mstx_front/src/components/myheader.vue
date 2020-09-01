<template>
  <div id="myheader" @click="goPage" v-cloak>
    <!-- <el-container>
    <el-header>-->
    <div class="myheader">
      <div class="myheaderLeft" >
        <div :class="{img:true, imgbgc:ok}" @mouseenter="shouye" @mouseleave="shouyel">
          <img src="@/assets/mylogo-白.png" :class="{mylogo:true, mlogo:ok}">
          <button type="button" :class="{souye:ok}" >首页</button>
        </div>
        
        <button type="button">食谱</button>
        <button type="button">食材</button>
        <button type="button">社区</button>
        <button type="button">搜索</button>
      </div>
      <div class="myheaderRight">
        <button type="button">注册</button>|
        <button type="button">登陆</button>
      </div>
    </div>
    <!-- </el-header>
     
   
    </el-container>-->
  </div>
</template>

<script>
  export default {
    data: function() {
      return {
        ok: false,
      }
    },
    methods: {
      shouye() {
        this.ok = true;
      },
      shouyel() {
        this.ok = false;
      },
      goPage(e) {
        var path;
        // switch (e.target.innerHTML.trim()) {
        //   case "首页":
        //     path = "/";
        //     break;
        //   case "食谱":
        //     path = "/recip";
        //     break;
        //   case "食材":
        //     path = "/food";
        //     break;
        //   case "社区":
        //     path = "/community";
        //     break;
        //   case "搜索":
        //     path = "/search";
        //     break;
        //   case "注册":
        //     path = "/sign";
        //     break;
        //   case "登陆":
        //     path = "/login";
        //     break;
        //   // 点击到空白处不触发
        //   default:
        //     return;
        // }
        // if (decodeURI(this.$route.fullPath) === path) {
        //   // 重复点击相同的按钮，不会push，直接刷新页面
        //   this.$router.go(0);
        // } else {
        //   this.$router.push(path);
        // }
      }
    }
  };
</script>
<style >
* {
  margin: 0;
  padding: 0;
}
#myheader {
  z-index: 100;
  position: fixed;
  top: 0px;
  left: 0px;
  width: 100%;
  height: 40px;
  background-color: #333;
  box-sizing: border-box;
}
#myheader .myheader {
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
.mlogo{
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
  margin-right: 20px;
}

</style>
