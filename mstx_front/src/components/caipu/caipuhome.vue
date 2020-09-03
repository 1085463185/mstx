<template>
  <div class="recip">
    <div class="reciplbt" v-if="imgList.length!==0">
      <div class="imgdiv1" @click="menuClik" :style="{left:posit1+'px'}">
        <!-- <div v-for="item in imgList" :key="item.id" class="myimg">
          <img :id="item.id" :src="item.src" alt />
        </div>-->
        <img :src="myimg[0]" alt />
        <img :src="myimg[1]" alt />
        <img :src="myimg[2]" alt />
      </div>
      <div class="imgdiv2" @click="menuClik" :style="{left:posit2+'px'}">
        <!-- <div v-for="item in imgList" :key="item.id" class="myimg">
          <img :id="item.id" :src="item.src" alt />
        </div>-->
        <img :src="myimg[3]" alt />
        <img :src="myimg[4]" alt />
        <img :src="myimg[5]" alt />
      </div>
      <div class="imgdiv3" @click="menuClik" :style="{left:posit3+'px'}">
        <!-- <div v-for="item in imgList" :key="item.id" class="myimg">
          <img :id="item.id" :src="item.src" alt />
        </div>-->
        <img :src="myimg[6]" alt />
        <img :src="myimg[7]" alt />
        <img :src="myimg[8]" alt />
      </div>
      <button class="toLeft" @click="toLeft">&lt;</button>
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
      myimg: ["","","","","","","","",""],
      posit1: "-1000",
      posit2: "0",
      posit3: "1000",
      left: 1,
      timer: "",
    };
  },
  created() {
    this.getlbtImg();
  },
  // mounted() {
  //   this.getlbtImg();
  // },
  components: {
    caipulist
  },
  methods: {
    getlbtImg() {
      this.$http.get("http://localhost:8000/showAllMenu", {}).then(res => {
        // for(let i = 0; i < 6; i++){
        //   this.imgList.push(res.data[i]);
        // }
        this.imgList=res.data.splice(0,6)
        console.log(this.imgList[0].src)
        console.log(this.imgList[0].src)
        this.myimg[0] = this.imgList[3].src;
        this.myimg[1] = this.imgList[4].src;
        this.myimg[2] = this.imgList[5].src;
        this.myimg[3] = this.imgList[0].src;
        this.myimg[4] = this.imgList[1].src;
        this.myimg[5] = this.imgList[2].src;
        this.myimg[6] = this.imgList[3].src;
        this.myimg[7] = this.imgList[4].src;
        this.myimg[8] = this.imgList[5].src;
      });
    },

    toLeft() {
      var s = 0;
      console.log(this.posit1);
      if(this.posit1 == "-1000"){
        this.timer = setInterval(() => {
            this.posit1 = Number(this.posit1) + 20;
            this.posit2 = Number(this.posit2) + 20;
            s++;
            if(s === 50) {
              clearInterval(this.timer);
            }
        }, 20);
          this.posit3 = "-1000";
          if(this.myimg[6] === this.imgList[0].src){
            this.myimg[6] = this.imgList[3].src;
            this.myimg[7] = this.imgList[4].src;
            this.myimg[8] = this.imgList[5].src;
          }
      } else if(this.posit1 == "0"){
        this.timer = setInterval(() => {
          this.posit1 = Number(this.posit1) + 20;
          this.posit3 = Number(this.posit3) + 20;
            s++;
            if(s === 50) {
              clearInterval(this.timer);
            }
        }, 20);
        this.posit2 = "-1000";
        if(this.myimg[3] === this.imgList[0].src){
          this.myimg[3] = this.imgList[3].src;
          this.myimg[4] = this.imgList[4].src;
          this.myimg[5] = this.imgList[5].src;
        }
      } else if(this.posit1 == "1000"){
        this.timer = setInterval(() => {
            this.posit2 = Number(this.posit2) + 20;
            this.posit3 = Number(this.posit3) + 20;
            s++;
            if(s === 50) {
              clearInterval(this.timer);
            }
        }, 20);
        this.posit1 = "-1000";
        if(this.myimg[0] === this.imgList[0].src){
          this.myimg[0] = this.imgList[3].src;
          this.myimg[1] = this.imgList[4].src;
          this.myimg[2] = this.imgList[5].src;
        }
      } else {
        return;
      }
    },
    toRight() {
      var s = 0;
      console.log(this.posit1);
      if(this.posit1 == "-1000"){
        this.timer = setInterval(() => {
            this.posit2 = Number(this.posit2) - 20;
            this.posit3 = Number(this.posit3) - 20;
            s++;
            if(s === 50) {
              clearInterval(this.timer);
            }
        }, 20);
          this.posit1 = "1000";
          if(this.myimg[6] === this.imgList[0].src){
            this.myimg[6] = this.imgList[3].src;
            this.myimg[7] = this.imgList[4].src;
            this.myimg[8] = this.imgList[5].src;
          }
      } else if(this.posit1 == "0"){
        this.timer = setInterval(() => {
          this.posit1 = Number(this.posit1) - 20;
          this.posit2 = Number(this.posit2) - 20;
            s++;
            if(s === 50) {
              clearInterval(this.timer);
            }
        }, 20);
        this.posit3 = "1000";
        if(this.myimg[3] === this.imgList[0].src){
          this.myimg[3] = this.imgList[3].src;
          this.myimg[4] = this.imgList[4].src;
          this.myimg[5] = this.imgList[5].src;
        }
      } else if(this.posit1 == "1000"){
        this.timer = setInterval(() => {
            this.posit1 = Number(this.posit1) - 20;
            this.posit3 = Number(this.posit3) - 20;
            s++;
            if(s === 50) {
              clearInterval(this.timer);
            }
        }, 20);
        this.posit2 = "1000";
        if(this.myimg[0] === this.imgList[0].src){
          this.myimg[0] = this.imgList[3].src;
          this.myimg[1] = this.imgList[4].src;
          this.myimg[2] = this.imgList[5].src;
        }
      } else {
        return;
      }
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
.reciplbt {
  position: relative;
  width: 1000px;
  height: 250px;
  display: flex;
  margin: 50px auto;
  overflow: hidden;
}
.imgdiv1 {
  position: absolute;
  top: 0px;
  width: 1000px;
  height: auto;
  display: flex;
  justify-content: space-between;
}
.imgdiv2 {
  position: absolute;
  top: 0px;
  width: 1000px;
  height: auto;
  display: flex;
  justify-content: space-between;
}
.imgdiv3 {
  position: absolute;
  top: 0px;
  width: 1000px;
  height: auto;
  display: flex;
  justify-content: space-between;
}
.reciplbt button {
  border: 0px;
  outline: none;
  position: absolute;
  font-size: 20px;
  width: 40px;
  height: 60px;
  background-color: black;
  opacity: 0.3;
  color: white;
  cursor: pointer;
}
.reciplbt button:hover {
  opacity: 0.6;
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
.reciplbt img {
  width: 300px;
  height: 250px;
  /* margin-right: 75px; */
  transition: all .5s ease-in-out;
}
.reciplbt img:hover {
  transform: scale(1.1,1.1);
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