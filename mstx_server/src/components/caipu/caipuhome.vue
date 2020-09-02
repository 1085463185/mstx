<template>
  <div class="recip">
    <div class="reciplbt">
      <button class="toLeft" @click="toLeft">&lt;</button>
      <div class="imgdiv" @click="menuClik">
        <!-- <div v-for="item in imgList" :key="item.id" class="myimg">
          <img :id="item.id" :src="item.src" alt />
        </div>-->
        <img :src="myimg1" alt />
        <img :src="myimg2" alt />
        <img :src="myimg3" alt />
      </div>
      <button class="toRight" @click="toRight">&gt;</button>
    </div>

    <div class="recipkind" @click="goPage">
      <div class="left">
        <button
          type="button"
          :style="{color:left==1?'red':'',borderBottom:left==1?'3px solid #ff6767':''}"
        >热菜</button>
        <button
          type="button"
          :style="{color:left==2?'red':'',borderBottom:left==2?'3px solid #ff6767':''}"
        >凉菜</button>
        <button
          type="button"
          :style="{color:left==3?'red':'',borderBottom:left==3?'3px solid #ff6767':''}"
        >汤羹</button>
        <button
          type="button"
          :style="{color:left==4?'red':'',borderBottom:left==4?'3px solid #ff6767':''}"
        >主食</button>
        <button
          type="button"
          :style="{color:left==5?'red':'',borderBottom:left==5?'3px solid #ff6767':''}"
        >小吃</button>
        <button
          type="button"
          :style="{color:left==6?'red':'',borderBottom:left==6?'3px solid #ff6767':''}"
        >西餐</button>
      </div>
      <div class="right">
        <button
          type="button"
          :style="{color:left==7?'red':'',borderBottom:left==7?'3px solid #ff6767':''}"
        >全部分类</button>
      </div>
    </div>
    <caipulist></caipulist>
  </div>
</template>
<script>
import caipulist from "@/components/caipu/caipulist.vue";

let index = 0;
export default {
  data() {
    return {
      imgList: [],
      myimg1: "",
      myimg2: "",
      myimg3: "",
      left: 1
    };
  },
  mounted() {
    this.getlbtImg();
  },
  components: {
    caipulist
  },
  methods: {
    getlbtImg() {
      this.$http.get("http://192.168.6.36:8000/showAllMenu", {}).then(res => {
        this.imgList = res.data;
        //  console.log(this.imgList[0].src)
        this.myimg1 = this.imgList[0].src;
        this.myimg2 = this.imgList[1].src;
        this.myimg3 = this.imgList[2].src;
      });
    },

    toLeft() {
      if (index == 0) {
        index = this.imgList.length - 1;
      }
      index--;
      this.myimg1 = this.imgList[index + 1].src;
      this.myimg2 = this.imgList[index + 2].src;
      this.myimg3 = this.imgList[index + 3].src;
      // this.id--;
    },
    toRight() {
      if (index == this.imgList.length - 1) {
        index = 0;
      }
      index++;
      this.myimg1 = this.imgList[index - 1].src;
      this.myimg2 = this.imgList[index - 2].src;
      this.myimg3 = this.imgList[index - 3].src;
    },
    menuClik(e) {
      console.log(e.target.src);
    },
    goPage(e) {
      var path;
      switch (e.target.innerHTML.trim()) {
        case "热菜":
          this.left = 1;
          path = "/recip/caipuhome/caipulist?kind=热菜";
          break;
        case "凉菜":
          this.left = 2;
          path = "/recip/caipuhome/caipulist?kind=凉菜";
          break;
        case "汤羹":
          this.left = 3;
          path = "/recip/caipuhome/caipulist?kind=汤羹";
          break;
        case "主食":
          this.left = 4;
          path = "/recip/caipuhome/caipulist?kind=主食";
          break;
        case "小吃":
          this.left = 5;
          path = "/recip/caipuhome/caipulist?kind=小吃";
          break;
        case "西餐":
          this.left = 6;
          path = "/recip/caipuhome/caipulist?kind=西餐";
          break;
        case "全部分类":
          this.left = 7;
          path = "/recip/caipufenlei";
          break;
        // 点击到空白部分不报错
        default:
          path = "/recip/caipulist?kind=热菜";
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

<style  scoped>
.reciplbt button {
  border: 1px solid #ccc;
  outline: none;
  position: absolute;
  font-size: 20px;
  width: 40px;
  height: 50px;
  background-color: #ccc;
  opacity: 0.9;
  color: white;
  cursor: pointer;
}
.reciplbt button:hover {
  background-color: pink;
}
.reciplbt .toLeft {
  left: 0px;
  top: 50%;
  transform: translateY(-50%);
}
.reciplbt .toRight {
  right: 0px;
  top: 50%;
  transform: translateY(-50%);
}
.reciplbt {
  position: relative;
  width: 1000px;
  display: flex;
  margin: 50px auto;
  border: 1px solid #ccc;
}

.reciplbt img {
  width: 300px;
  height: 250px;
  /* margin-right: 75px; */
}
.reciplbt .imgdiv {
  width: 1000px;
  display: flex;
  justify-content: space-between;
  overflow: hidden;
}
.recipkind {
  width: 1000px;
  margin: 10px auto;
  display: flex;
  justify-content: space-between;
  height: 40px;
  border-bottom: 1px solid #ccc;
  border-radius: 5px;
}
.recipkind button {
  color: inherit;
  height: 40px;
  outline: none;
  cursor: pointer;
  border: none;
  background-color: transparent;
  font-size: 20px;
  margin: 0 10px;
}
</style>