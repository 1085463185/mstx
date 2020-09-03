<template>

	<div>

	
    <div class="box">
		  <p class="boxP">食材分类</p>
		  <br>
      <table v-for="item in foodArr" class="td" :key="item.id">
        <div class="left">{{item.class}}</div>
        <div class="right">
          <td @click="getmenu" v-for="part in item.has.split(',')" :key="part">{{part}}</td>
        </div>
      </table>
	 
    </div>
	<!-- 引入底部关于 -->
	 <btinform class="bottom"></btinform>
	</div>

</template>

<script>
export default {
  data: function() {
    return {
      foodArr: ""
    };
  },
  mounted() {
    this.getAllFoods();
  },
  methods: {
    getmenu(e) {
      this.$router.push(`/shicailist?kind=${e.target.innerHTML}`);
    },
    getAllFoods() {
      this.$http
        .get("http://192.168.6.36:8000/showAllfood", {})
        .then(res => {
          // console.log(res.data);
          this.foodArr = res.data;
          // console.log(typeof res.data[0].has);
          // console.log(res.data[0].has.split(","));
        })
        .catch(e => console.log(e));
    }
  }
};
</script>

<style scoped>
 .bottom{
      position: relative;
      bottom: 0;
    }
table {
 	 margin: 0 auto;
  width: 1000px;
  height: auto;
  border: 1px solid #eaeaea;
  display: flex;
  margin-bottom: 20px;
}
.box {
	 margin: 0 auto;
	 width: 1000px;
  margin-top: 80px;
  display: flex;
  flex-wrap: wrap;
}
td {
  box-sizing: border-box;
  width: 159px;
  height: 120px;
  border: 1px solid #eaeaea;
  text-align: center;
  line-height: 120px;
  cursor: pointer;
  font-size: 20px;
  color: #333;
}
td:hover {
  background-color: #f8f8f8;
}
.left {
  width: 20%;
  height: 100%;
  background-color: rgb(248, 248, 248);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 24px;
}
.right {
  display: flex;
  flex-wrap: wrap;
  width: 80%;
}
.boxP {
  font-size: 25px;
  color: red;
  border-bottom: 2px solid red;
  height: 40px;
}
</style>
