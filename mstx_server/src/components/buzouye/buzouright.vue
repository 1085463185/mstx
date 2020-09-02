<template>
	<div class="right" @click="changeClick">
		<div v-for="item in caipuArr" :key="item.id" >
			<img :id="item.id" :src="item.src"/>
			<p>{{item.description}}</p>
		</div>
	</div>
</template>

<script>
	import Bus from "./Bus.js"
	export default{
		data:function(){
			return{
				caipuArr:[]
			}
		},
		mounted() {
			this.$http.post("/food",{
				
			}).then((res)=>{
				console.log(res.data)
				this.caipuArr = res.data
			})
		},
		methods:{
			changeClick(e){
				console.log(e.target.id)
				// this.$router.replace(`/buzou?id=${e.target.id}`)
				Bus.$emit("getid",e.target.id)
			}
		}
	}
</script>

<style scoped="scoped">
	.right{
		width: 300px;
	}
	img{
		width: 300px;
	}
</style>
