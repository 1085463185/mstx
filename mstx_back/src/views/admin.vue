<template>
	<div>
		  <el-tabs :tab-position="tabPosition" style="height: 80vh;">
			<el-tab-pane label="管理员信息"><admsg></admsg></el-tab-pane>
		    <el-tab-pane label="昵称修改"><updatename></updatename></el-tab-pane>
		    <el-tab-pane label="密码修改"><updatepwd></updatepwd></el-tab-pane>
			<el-tab-pane label="添加管理员"><addadmin></addadmin></el-tab-pane>
		  </el-tabs>
	</div>
</template>

<script>
	import admsg from "../components/admsg.vue";
	import addadmin from "../components/addadmin.vue";
	import updatename from "../components/updatename.vue";
	import updatepwd from "../components/updatepwd.vue";
	export default {
	    data() {
	      return {
	        tabPosition: 'left'
	      };
	    },
		components:{
			admsg,
			addadmin,
			updatename,
			updatepwd
		}
	  };
</script>

<style scoped="">
	
</style>
