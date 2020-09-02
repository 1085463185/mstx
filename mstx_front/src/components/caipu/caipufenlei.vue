<template>
	<div class="box">
		<toTop></toTop>
		<table v-for="item in cookbookArr" class="td" :key="item.id">
			<div class="left">{{item.className}}</div>
			<div @click="gotomenuPage" class="right">
				<td  v-for="part in item.has.split(',')" :key="part">{{part}}</td>
			</div>
		</table>

	</div>
</template>
<!-- {{item.has.split(",")[index]}} -->
<script>

	import toTop from "../toTop/toTop.vue"
	export default{
		data:function(){
			return {
            cookbookArr:'',
            kindArr:[]
		}
	},
	components:{
		toTop,

	},
	mounted(){
		this.getAllCookbook()
	},
	methods:{
      gotomenuPage(e){
         
         this.$router.push(`/recip/caipufenleiList?kind=${e.target.innerHTML}`)
       
      },
       
		getAllCookbook(){
      
		this.$http.get("http://192.168.6.36:8000/showAllcookbook",{
			
		}).then((res)=>{
         this.cookbookArr = res.data
         console.log(res.data)
		})
		}
   }
      }
</script>

<style scoped>
	table{
		width: 1000px;
		height: auto;
		border: 1px solid #EAEAEA;
		display: flex;
		margin-bottom: 20px;
	}
	.box{
      width: 1000px;

		display: flex;
		flex-wrap: wrap;
      margin: 0 auto;
	}
	td{
		box-sizing: border-box;
		width: 159px;
		height: 120px;
		border: 1px solid #EAEAEA;
		text-align: center;
		line-height: 120px;
		cursor: pointer;
		font-size: 20px;
		color: #333;
	}
	td:hover{
		background-color: #f8f8f8;
	}
	.left{
		width: 20%;
		height: 100%;
		background-color: rgb(248, 248, 248);
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.right{
		display: flex;
		flex-wrap: wrap;
		width: 80%;
	}
</style>
