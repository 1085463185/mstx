<template>
	<div class="box">
		<toTop></toTop>
		<table v-for="(item,i) in foodArr" class="td" :key="item.id">
			<div class="left">{{item.class}}</div>
			<div class="right">
				<td v-for="part in item.has.split(',')" :key="part">{{part}}</td>
			</div>
		</table>
		<btinform></btinform>
	</div>
</template>

<script>
	import btinform from "../Bt_information/Bt_inform.vue"
	import toTop from "../toTop/toTop.vue"
	export default{
		data:function(){
			return {
				foodArr:''
		}
	},
	components:{
		toTop,
		btinform
	},
	mounted(){
		this.getAllFoods()
	},
	methods:{
		getAllFoods(){
		this.$http.get("/showAllfood",{
			
		})
		.then((res)=>{
			console.log(res.data)
			this.foodArr = res.data
			console.log(typeof res.data[0].has)
			console.log(res.data[0].has.split(","))
		})
		.catch(e=>console.log(e))
		}
	}
	
	}
</script>

<style scoped>
	table{
		width: 1200px;
		height: auto;
		border: 1px solid #EAEAEA;
		display: flex;
		margin-bottom: 20px;
	}
	.box{
		display: flex;
		flex-wrap: wrap;
		margin-left:100px;
	}
	td{
		box-sizing: border-box;
		width: 160px;
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
		font-size:24px ;
	}
	.right{
		display: flex;
		flex-wrap: wrap;
		width: 80%;
	}
</style>
