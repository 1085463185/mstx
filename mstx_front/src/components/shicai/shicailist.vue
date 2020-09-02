<template>
  <div class="list">
    <p class="listP">{{decodeURI(this.$route.query.kind)}}简介</p>
    <div v-for="item in food" :key="item.id" class="shiwu">
      <img :src="item.src" alt />
      <span>{{item.description}}</span>
    </div>
    <br>
    <p class="myp">{{decodeURI(this.$route.query.kind)}}的做法</p>

    <div class="shicai">
      <div @click="jionbuzou" class="shicaibox" v-for="item in foodArr" :key="item.id">
        <img :id="item.id" :src="item.src" alt />
        <p>{{item.name}}</p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data: function() {
    return {
      food: [],
      foodArr: []
    };
  },
  mounted() {
    this.getkind(decodeURI(this.$route.query.kind));
  },
  methods: {
    jionbuzou(e) {
      this.$router.push(`/buzou?id=${e.target.id}`);
    },
    getkind(foodname) {
      this.$http
        .get("http://192.168.6.36:8000/showfoodByname", {
          params: {
            foodname: foodname
          }
        })
        .then(res => {
          //   console.log(res.data);
          this.food = res.data;
        });
      this.$http
        .get("http://192.168.6.36:8000/showmenuByfood", {
          params: {
            foodname: foodname
          }
        })
        .then(res => {
          //   console.log(res.data);
          this.foodArr = res.data.menu;
        });
    }
  }
};
</script>
<style  scoped>
.list {
  width: 1000px;
  margin: 0 auto;
  margin-top: 100px;
}
.shicai {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
.shicaibox {
  padding: 10px;
  border: 2px solid #bfecd9;
  margin: 10px;
  text-align: center;
}
.shicaibox img {
  width: 200px;
  height: 200px;
}
.myp {
  height: 40px;
  display: inline-block;
  color: red;
  border-bottom: 2px solid red;
  font-size: 20px;
  cursor: pointer;
}
.listP {
  color: red;
  font-size: 20px;
  display: inline-block;
  height: 35px;
  border-bottom: 2px solid red;
  margin-bottom: 10px;
  cursor: pointer;
}
.shiwu{
    display: flex;
}
.shiwu img{
    margin:0 10px;
}
</style>