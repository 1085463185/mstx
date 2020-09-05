<template>
	<div>
		  <el-tabs :tab-position="tabPosition" style="height: 600px;">
			<el-tab-pane label="已有食材"><foods></foods></el-tab-pane>
		    <el-tab-pane label="添加食材" ><addfood></addfood></el-tab-pane>
		  </el-tabs>
	</div>
</template>

<script>
	import foods from "../components/foods.vue"
	import addfood from "../components/addfood.vue"
	export default {
	    data() {
	      return {
	        tabPosition: 'left'
	      };
	    },
		components:{
			foods,
			addfood
		},
		methods:{
			 
		}
	  };
</script>

<style scoped="">
	
</style>
