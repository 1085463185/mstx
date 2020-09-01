<template>
	<div class="foodsBox">
		<h3>时令食材</h3>
		<div class="content" v-for="(item,i) in allFoodsList" :key='item.id'>
			<div class="img">
				<img :src="item.src">
				<router-link>{{item.name}}</router-link>
				</div>
				<p>{{item.description}}</p>
		</div>
	</div>
</template>

<script>
	export default{
		data:function(){
			return {
				allFoodsList:""
			}
		},
		
		mounted(){
			getAllFoodsList()
		},
		methods:{
			getAllFoodsList(){
				this.$http.get("/getAllFoodsList",{
					
				}).then((res)=>{
					console.log(res.data)
				})
			}
		}
	}
</script>

<style scoped="scoped">
</style>
