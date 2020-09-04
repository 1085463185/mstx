<template>
	<div>
		<!-- <leftpop ></leftpop> -->
		<component :is="Tabc"></component>
		<allsearch></allsearch>
	</div>
</template>

<script>
	import sousuojieguo from "./sousuojieguo.vue"
	import Bus from "./Bus.js";
	import leftpop from "./leftpop.vue";
	import allsearch from "./allsearch.vue";
	export default {
		data:function(){
			return{
				Tabc:"leftpop"
			}
		},
		mounted(){
			Bus.$on("getMenuname",keyword=>{
				this.Tabc="sousuojieguo"
			})
		},
	
		components:{
			leftpop,
			allsearch,
			sousuojieguo
		}
	}
</script>

<style scoped="">
	div{
		width: 990px;
		height: auto;
	}
</style>
