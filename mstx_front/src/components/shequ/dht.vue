<template>
  <div class="box1">
    <div class="header1">
      <a href="http://localhost:8080/#/">
        <!-- <img src="../../../public/img/1.png" alt /> -->
      </a>

      <div @click="goPage">
        <div class="myheader">
          <div class="logo">
            <img src="@/assets/mylogo.png" class="blogo" />
            <div>我所有的朋友都是吃货</div>
          </div>
          <button type="button" class="t1">社区</button>

          <div class="headerbtn">
            <button type="button" class="listbtn">
              社区广场
              <!-- <i></i>
              <b></b> -->
            </button>
            <button type="button" class="listbtn">话题</button>
            <button type="button" class="listbtn">日志</button>
            <button type="button" class="listbtn">活动</button>
          </div>
          <div class="search">
            <input type="text" placeholder="请输入要搜索内容" />
            <button type="button" class="ssbtn">搜索</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    goPage(e) {
      var path;
      switch (e.target.innerHTML.trim()) {
        case "首页":
          path = "/";
          break;
        case "食谱":
          path = "/recip";
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
<style scoped="scoped">
.header1 {
  position: relative;
  display: flex;
  align-items: center;
  width: 990px;
  height: auto;
  margin: 20px auto;
  margin-top: 60px;
  /* background-color: aquamarine; */
}
.header1 img {
  margin-right: 100px;
}
.myheader {
  display: flex;
  justify-content: space-between;
  width: 990px;
}
.t1 {
  background-color: rgb(255, 103, 103);
  height: 30px;
  width: 60px;
  font-size: 20px;
  color: #fff;
  border-radius: 5px;
  margin-top: 7px;
}
.headerbtn {
  position: relative;
  margin-left: 200px;
  margin-top: -8px;
  display: flex;
  justify-content: left;
  width: 350px;
}
.headerbtn button i {
  position: absolute;
  bottom: 0;
  left: 11%;
  display: block;
  overflow: hidden;
  margin-left: -9px;
  width: 0px;
  height: 0px;
  border: 9px dashed transparent;
  border-bottom: 9px solid rgb(255, 103, 103);
}
.headerbtn button b {
  position: absolute;
  bottom: -1.3px;
  left: 11%;
  z-index: 2;
  display: block;
  overflow: hidden;
  margin-left: -9px;
  width: 0px;
  height: 0px;
  border: 9px dashed transparent;
  border-bottom: 9px solid #fff;
}
.listbtn {
  border: none;
  outline: none;
  background-color: transparent;
  font-size: 20px;
  cursor: pointer;
  width: 80px;
  height: 60px;
}
.myheader button:first-child {
  color: red;
}
.search {
  margin-top: 10px;
  display: flex;
  height: 20px;
}

.listbtn:hover {
  color: tomato;
}

.ssbtn {
  border: none;
  outline: none;
  height: 26px;
  width: 55px;
  background-color: #999;
  color: white;
  font-size: 16px;
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
}

.ssbtn:hover {
  background-color: tomato;
}

.search input {
  height: 26px;
  outline: none;
  border: 1px solid black;
  border-right: 0px;
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
  box-sizing: border-box;
  font-size: 12px;
  text-align: center;
}

.logo {
  width: 130px;
  height: auto;
  font-size: 9px;
  letter-spacing: 1px;
  cursor: pointer;
  margin-right: 40px;
}

.blogo {
  margin: 0px;
  width: 130px;
  height: auto;
  margin-bottom: 4px;
}
</style>
