<template>
	<div class="user">
		<div class="iwidth">
			<span>{{name}}:</span>
			<el-input
			  placeholder="请输入手机号/名称"
			  v-model="tel"
			  clearable>
			</el-input>
			<p style="color: red;">{{uerr}}</p>
		</div>
		<div class="pwidth">
			<span>密码:</span>
			<el-input placeholder="请输入密码" v-model="pwd" show-password ></el-input>
			<p style="color: red;">{{perr}}</p>
		</div>
		<el-button type="success" @click.native="userLogin">登录</el-button>
	</div>
</template>

<script>
	export default {
	    data() {
	         return {
	           pwd: '',
			   tel:"",
			   name:"",
			   uerr:"",
			   perr:""
	         }
	       },
		   mounted() {
		   	this.name=this.$route.query.name
		   },
		  methods:{
			  userLogin(){
				  console.log(1)
				  // 数据库查询并验证传入参数为 pwd tel
				  // 跳转路由到首页
				  if(this.$route.query.id==1){
					  this.$http.post("http://192.168.6.36:8000/login",{
					  					  params:{
					  						  pwd:this.pwd,
					  						  tel:this.tel
					  					  }
					  }).then((res)=>{
					  					  console.log(res.data)
					  					  if(res.data.status==0){
					  						  this.$router.push("/")
											  sessionStorage.setItem('tel','this.tel');
											  
					  						  alert(res.data.msg)
					  					  }else if(res.data.status==1){
					  						  this.uerr=res.data.msg
					  					  }else{
					  						  this.perr = res.data.msg
					  					  }
					  })
				  }else if(this.$route.query.id==2){
					  console.log(1)
					 
					  this.$http.post("http://192.168.6.36:8000/maglogin",{
					  					  params:{
					  						  pwd:this.pwd,
					  						  tel:this.tel
					  					  }
					  }).then((res)=>{
					  					  console.log(res.data)
					  					  if(res.data.status==0){
					  						  this.$router.push("/")//后台管理页面
					  						  alert(res.data.msg)
					  					  }else if(res.data.status==1){
					  						  this.uerr=res.data.msg
					  					  }else{
					  						  this.perr = res.data.msg
					  					  }
					  })
				  }
			  }
		  } 
	  }
</script>

<style scoped="scoped">
	.el-input{
		margin-bottom: 20px;
		width: 80%;
	}
	
	.iwidth{
		width: 80%;
		margin-top: 20px;
	}
	.pwidth{
		width: 80%;
		padding-left: 16px;
	}
	.user{
		display: flex;
		flex-direction: column;
		justify-content: space-around;
		align-items: center;
	
	}
	span{
		
		font-size: 16px;
		
	}
	.el-button{
		width: 80%;
	}
</style>
