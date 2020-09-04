<template>
	<div class="routelogin">
			<div class="login">
				<div @click="changePage">
					<span>用户登录</span>
					<span>账号注册</span>
				</div>
				 <router-view></router-view>
			</div>
		</div>
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
 			  	case "用户登录":path="/login/user";break;
 			  	case "账号注册":path="/login/sign";break;
				default:break;
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
		width: 400px;
		padding: 10px;
		position: absolute;
		left: 50%;
		top: 200px;
	   background: rgba(33,34,31,.8);
	   box-sizing: border-box;
	   box-shadow: 0 15px  25px rgba(0,0,0,.5);
	   border-radius: 10px;
	}
	
	.login div{
		text-align: center;
		margin: 14px 0;
	}
	.routelogin{
		width: 100%;
		height: 600px;
		background-image: url("https://i3.meishichina.com/attachment/magic/2017/04/11/20170411149189588154913.jpg");
		background-size: 100%;
	}
	span{
		color: #fff;
		line-height: 40px;
		background: transparent;
		border: none;
		outline: none;
		color: #fff;
		background: #2a661c;
		padding: 10px 20px;
		cursor: pointer;
		border-radius: 5px;
		margin: 0 8px;
	}
	span:hover{
		cursor: pointer;
	}
	
</style>
