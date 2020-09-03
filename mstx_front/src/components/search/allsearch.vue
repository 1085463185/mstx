<template>
  <div class="allsearch">
    <span>大家都在搜</span>
    <ul>
      <li @click="capumenu" v-for="item in searchArr" v-text="item"></li>
    </ul>
  </div>
</template>

<script>
import Bus from "./Bus.js"
export default {
  data() {
    return {
      searchArr: ["南瓜", "牛肉", "红烧肉", "排骨", "鱼", "汤", "虾"],
	  keyword: "",
	  caipuList:[]
    };
  },
  methods: {
    capumenu(e) {
	Bus.$emit("getMenuname", e.target.innerHTML); 
      this.$http
        .get("http://192.168.6.36:8000/showmenuByname", {
          params: {
            keyword: e.target.innerHTML
          }
        })
        .then(res => {
          //   传递参数
          this.caipuList = res.data;

		  Bus.$emit("getMenuList", this.caipuList);
		  console.log(this.caipuList)
        });
    }
  }
};
</script>

<style scoped="">
.allsearch {
  float: right;
  width: 200px;
  margin: 30px 0 0 40px;
}
ul {
  margin-left: 40px;
}
span {
  display: block;
  padding: 20px;
  font-size: 20px;
  color: #ff6767;
}
li {
  cursor: pointer;
  list-style: circle;
  padding: 0 0 10px;
}
li:hover {
  text-decoration: underline;
  color: red;
}
</style>
