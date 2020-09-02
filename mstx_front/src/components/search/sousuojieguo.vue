<template>
  <div class="jieguo">
    <!-- 搜索结果 -->
    <span class="menuName">{{keyword}}</span>
    <span>约{{meunList.length}}条结果</span>
    <div @click="joinBuZou" class="menuBox" v-for="item in meunList" :key="item.id">
      <img :id="item.id" :src="item.src" alt />
      <div class="textdes">
        <span>{{item.name}}</span>
        <p>类型：{{item.kind}}</p>
      </div>
    </div>
  </div>
</template>
<script>
import Bus from "./Bus.js";
export default {
  data: function() {
    return {
      meunList: [],
      keyword: "",
      status:""
    };
  },
  mounted() {
    Bus.$on("getMenuname", keyword => {
      this.keyword = keyword;
    });
    Bus.$on("getMenuList", meunList => {
      this.meunList = meunList;
    });
     Bus.$on("getstatus", status => {
       this.status = status
     });
   
  },
  methods: {
    joinBuZou(e) { 
         // console.log(status)
            if(this.status==2){
               this.$router.push(`/buzou?id=${e.target.id}`);
            }else if(this.status==3){
               this.$router.push(`shicailist?kind=${e.target.innerHTML}`);
              // console.log()
            }       

    }
  }
};
</script>

<style scoped>
.jieguo {
  margin-top:30px;
  width: 65%;
  float: left;
}
.menuName {
  height: 30px;
  display: inline-block;
  font-weight: bolder;
  font-size: 20px;
  color: red;
  border-bottom: 2px solid red;
  margin: 5px;
}
.menuBox img {
  width: 200px;
  height: 200px;
  margin-right: 10px;
  margin-bottom: 10px;
}
.menuBox {
  margin: 10px 0;
  display: flex;
  border-bottom: 2px solid pink;
}
.menuBox span {
 
  font-size: 20px;
}
.textdes span:hover{
  cursor: pointer;
  color: red;
  text-decoration: underline;
}
</style>