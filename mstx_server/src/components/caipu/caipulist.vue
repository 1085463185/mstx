
<template>
  <div class="caipulist">
    <!-- <h2>分类：{{dept}}</h2> -->
     <a  v-for="item in kindArr" :key="item.id"  @click="joinBuZou">
      <img :id="item.id" :src="item.src" alt />
      <p class="tuijianP">{{item.name}}</p>
      <p>{{item.description}}</p>
      <!-- <p>{{kindArr}}</p> -->
    </a>
  </div>

</template>

<script>

export default {
  watch:{
    "$route.query.kind": function() {
     this.getkind(decodeURI(this.$route.query.kind));
     }
  },
  mounted(){   
    this.getkind(decodeURI(this.$route.query.kind));
  },

  data: function() {
    return {
      kindArr: [],
      caipuList: []
    };
  },
  methods:{
    getkind(kind){
      console.log(kind)
       this.$http.get("http://192.168.6.36:8000/showMenu",{
         params:{
           kind:kind,
         }
       }).then(res=>{
        //  console.log(res.data)
         this.kindArr = res.data;

       })
     

    },
   joinBuZou(e){
      // console.log(e.target.id)
      this.$router.push(`/buzou?id=${e.target.id}`)
   }
  }
};
</script>

<style scope="scope">
.caipulist {
    width: 1000px;
    margin: 20px auto;
    display: flex;
    justify-content: space-around;
    text-align: center;
    flex-wrap: wrap;

   
}
.caipulist a{
  display: inline-block;
  border: 1px solid #ccc;
  box-shadow: 2px 2px 2px #ccc;
  height: 300px;
  overflow: hidden;
  overflow-x:hidden;
  overflow-y:scroll;
  box-sizing: border-box;
  padding: 5px;
}
.caipulist a::-webkit-scrollbar{
    display: none;
}
.caipulist a:hover{
   border: 1px solid pink;
  box-shadow: 2px 2px 2px pink;
}
.tuijianP{
   
    font-weight: bolder;
}
.caipulist img{
    width: 230px;
    height: 230px;
}
.caipulist p{
  width: 230px;
}


</style>
<style >
    a{
        text-decoration: none;
        color: black;
    }
</style>