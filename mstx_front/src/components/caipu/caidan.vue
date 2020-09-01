<template>
  <div class="caidan">
    <div class="caidanimgBox" v-for="item in caidanList" :key="item.id">
      <div @click="joinBuZou" class="caidanimg">
        <img :id="item.id" :src="item.src" alt />
      </div>
      <p class="tuijianP">{{item.name}}</p>
    </div>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      caidanList: []
    };
  },
  mounted() {
    this.$http.get("http://192.168.6.36/showAllMenu", {}).then(res => {
      this.caidanList = res.data;
    });
  },
  methods:{
      joinBuZou(e){
            this.$router.push(`/buzou?id=${e.target.id}`)
      }
  }
};
</script>
<style >
.caidan {
  margin: auto;
  width: 1000px;
  /* margin: 0 auto; */
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.caidan .caidanimgBox {
  margin: 5px 0;
  text-align: center;
  width: 300px;
  height: 300px;
  border: 1px solid #ccc;
  /* margin: 0 20px; */
}
.caidanimg {
  height: 80%;
  overflow: hidden;
}
.caidan img {
  vertical-align: middle;
  height: 100%;
  width: 100%;
}
.caidan img:hover {
  transition: all 0.5s ease-in-out;
  height: 110%;
  width: 110%;
}
p {
  margin-top: 10px;
}
</style>