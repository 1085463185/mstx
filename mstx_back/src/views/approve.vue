<template>
	<div>
		  <el-tabs :tab-position="tabPosition" style="height: 600px;">
		    <el-tab-pane label="待批审核">待批审核</el-tab-pane>
		    <el-tab-pane label="已通过"><pass></pass></el-tab-pane>
		  </el-tabs>
	</div>
</template>

<script>
	import pass from "../components/pass.vue"
	export default {
	    data() {
	      return {
	        tabPosition: 'left'
	      };
	    },
		components:{
			pass
		}
	  };
</script>

<style>
</style>
