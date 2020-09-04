<template>
  <div class="caidan">
    <div class="caidanimgBox" v-for="item in caidanList" :key="item.id">
      <div @click="joinBuZou" class="caidanimg">
        <img :id="item.id" :src="item.src" alt />
      </div>
      <p class="tuijianP">{{item.name}}</p>
    </div>
    <div class="pagezj">
      <el-pagination  @current-change="current" background layout="prev, pager, next" :total="count"></el-pagination>
    </div>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      caidanList: [],
      pagenum: "",
      count:0
    };
  },
  mounted() {
    this.getmenu(1);
  },
  methods: {
    current(val){
      console.log(val);
          this.getmenu(val);
    },
    getmenu(pagenum) {
      this.$http
        .get("http://localhost:8000/showAllMenu", {
          params: {
            pagenum: pagenum
          }
        })
        .then(res => {
          // console.log(res.data);
          let list = res.data.list
         this.count = res.data.count[0].num-12
          this.caidanList = list;

        });
    },
    joinBuZou(e) {
      this.$router.push(`/buzou?id=${e.target.id}`);
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
.pagezj{
  width: 1000px;
  margin-left: 300px;
  margin-top: 50px;
}

</style>