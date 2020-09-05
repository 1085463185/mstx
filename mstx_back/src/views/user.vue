<template>
	<div>
		  <el-tabs :tab-position="tabPosition" style="height: 600px;">
		    <el-tab-pane label="用户信息"><usermsg></usermsg></el-tab-pane>
			<el-tab-pane label="权限提升">权限提升</el-tab-pane>
		  </el-tabs>
	</div>
</template>

<script>
	import usermsg from "../components/usermsg.vue"
	export default {
	    data() {
	      return {
	        tabPosition: 'left'
	      };
	    },
		components:{
			usermsg
		}
	  };
</script>

<style>
</style>
