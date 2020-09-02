<template>
	<div class="routelogin">
		<!-- <myheader></myheader> -->
		<div class="login">
			
			<el-button-group @click.native="changePage">
			  <el-button type="primary" icon="el-icon-arrow-left">用户登录</el-button>
			  <el-button type="primary" >管理登录</el-button>
			  <el-button type="primary">用户注册<i class="el-icon-arrow-right el-icon--right"></i></el-button>
			</el-button-group>
			 <router-view></router-view>
		</div>
	</div>
  </el-tabs>
</template>
<script>
  export default {
	  created() {
	  	// console.log(this)
	  },
	  data:function(){
		  return{
			  
		  }
		 
	  },
	  methods:{
		  changePage(e){
			  var path;
			  console.log(e.target.innerHTML)
			  switch(e.target.innerHTML){
			  	case "用户登录":path="/login/user?id=1&name=用户名";break;
			  	case "管理登录":path="/login/user?id=2&name=管理员";break;
			  	default : path="/login/zhuce";break;
			  }
			  if(decodeURI(this.$route.fullPath)===path){
				  this.$router.go(0)
			  }else{
				  this.$router.push(path)
			  }
			  
		  }
	  }
	  
    }
</script>

<style scoped="scoped">
	.login{
		width: 343px;
		height: 301px;
		position: absolute;
		left: 50%;
		top: 200px;
	   background-color: rgba(253,252,250,0.5);
	}
	.routelogin{
		width: 100%;
		height: 600px;
		background-image: url("https://i3.meishichina.com/attachment/magic/2017/04/11/20170411149189588154913.jpg");
		background-size: 100%;
	}
</style>
