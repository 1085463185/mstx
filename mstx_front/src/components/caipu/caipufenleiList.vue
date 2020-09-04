<template>
  <div class="caipuList">
    <p class="kindname">{{decodeURI(this.$route.query.kind)}}</p>
    <div @click="jionbuzou" class="caipuListBox" v-for="item in kindArr" :key="item.id">
      <img :id="item.id" :src="item.src" alt />
      <div class="describe">
        <p>{{item.name}}</p>
        <p>{{item.description}}</p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      kindArr: []
    };
  },
  watch: {
    "$route.query.kind": function() {
      this.getkind(decodeURI(this.$route.query.kind));
    }
  },
  mounted() {
    this.getkind(decodeURI(this.$route.query.kind));
    // console.log(this.getkind)
  },
  methods: {
    //   点击跳转到步骤
    jionbuzou(e) {
        this.$router.push(`/buzou?id=${e.target.id}`)
    },
    getkind(kind) {
      this.$http
        .get("http://localhost:8000/showMenu", {
          params: {
            kind: kinde
          }
        })
        .then(res => {
          //  console.log(res.data)
          this.kindArr = res.data;
        });
    }
  }
};
</script>
<style scoped>
.kindname {
  color: red;
  border-bottom: 2px solid red;
  height: 30px;
  font-size: 20px;
}
.caipuList {
  width: 1000px;
  margin: 0 auto;
}
.caipuList img {
  width: 200px;
  height: 200px;
  margin-right: 10px;
}
.caipuListBox {
  display: flex;
  margin: 20px 0;
  align-items: center;
}
.describe p:first-child{

  color: #38976F;
  font-size: 20px;
}
.describe p:last-child{

  color: #999;
  font-size: 14px;
}
</style>