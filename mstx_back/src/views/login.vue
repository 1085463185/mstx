<template>
	<div class="body">
<div class="login-box  login">
			<h2>管理员登录</h2>
			<form>
				<div class="login-field">
					<input type="text" id="no" autocomplete="off" v-model="usename"/>
					<label>用户名</label>
				</div>
				<div class="login-field">
					<input type="password" id="pwd" v-model="pwd"/>
					<label>密码</label>
				</div>
				<div class="line">
				<button @click="login">登录</button>
				</div>
			</form>
		</div>
		</div>
</template>
<script>
	export default {
		data(){
			return {
				usename:"",
				pwd:"",
				is:1
			}
		},
		watch:{
			is:function(){
				this.$emit("event",this.is)
			}
		},
		methods:{
			login(){
				if(this.usename&&this.pwd){
					this.$http.post("http://localhost:8000/maglogin",{
							usename:this.usename,
							pwd:this.pwd
						}).then(res=>{
							alert(res.data.msg);
							if(res.data.id){
								document.cookie=`id=${res.data.id}`;
								this.is=0;
							}
						})
					}else{
						alert("请输入用户名跟密码！")
					}
				}	
		}
	}
</script>

<style scoped="scoped">
	.body{
		width: 100vw;
		height: 100vh;
		background-color: #affff761;
	}
	.login-box{
	
		position: absolute;
		top: 50%;
	
		left: 50%;
	
		transform: translate(-50%,-50%);
	
		width: 400px;
	
		padding:40px;
	
		background: #96c5e799;
	
		box-sizing: border-box;
	
		box-shadow: 0 15px  25px rgba(0,0,0,.5);
	
		border-radius: 10px;
	
	}
	
	.login-box h2{
	
		margin: 0 0 30px;
	
		padding: 0;
	
		text-align: center;
	
		color: #fff;
	
	}
	
	.login-box .login-field{
	
		position: relative;
	
	}
	
	.login-box .login-field  input{
	
		width: 100%;
	
		padding: 10px 0;
	
		font-size: 16px;
	
		color: #fff;
	
		margin-bottom: 30px;
	
		border: none;
	
		border-bottom: 1px solid #fff;
	
		outline: none;
	
		background: transparent;
	
	}
	
	.login-box .login-field  label{
	
		position: absolute;
	
		top: 0;
	
		left: 0;
	
		letter-spacing: 1px;
	
		padding: 10px 0;
	
		font-size: 16px;
	
		color: #fff;
	
		pointer-events: none;
	
		transition: .5s;
	
	}
	
	.login-box .login-field input:focus ~ label,
	
	.login-box .login-field input:valid ~ label{
		top: -23px;
		left: 0;
		color: black;
		font-size: 16px;
	}
	
	.login-box button{
		background: transparent;
		border: none;
		outline: none;
		color: #fff;
		font-weight: 600;
		background: #48d64ead;
		padding: 12px 22px;
		cursor: pointer;
		border-radius: 12px;
		margin-right: 10px;
		font-size: 14px;
	}
	
	
	.login-box .line{
		display: flex;
		justify-content: space-around;
	}
	
	.login-box .line span{
		color: #fff;
		line-height: 40px;
	}
	.login-box .line span:hover{
		cursor: pointer;
	}

	
</style>
