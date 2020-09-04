<template>
	<div class="user">
		<div class="iwidth right">
			<span>姓名:</span>
			<el-input
			  placeholder="请输入身份证姓名"
			  v-model="name"
			  clearable>
			</el-input>
			
		</div>
		<div class="iwidth left">
			<span>手机号:</span>
			<el-input
			  placeholder="请输入手机号/名称"
			  v-model="tel"
			  clearable
			  @change.native="telIput">
			</el-input>
			<p v-html="telh"></p>
		</div>
		<div class="pwidth yizhi">
			<span>密码:</span>
			<el-input placeholder="请输入密码" v-model="input1" show-password @change.native="pwdIput"></el-input>
			<p v-html="pwdh"></p>
		</div>
		<div class="pwidth">
			<span>确认密码:</span>
			<el-input placeholder="请输入密码" v-model="input2" show-password @change.native="surPwd"></el-input>
			<p v-html="surpwdh"></p>
		</div>
		<el-button type="success" @click.native="zhuCe" class="zhuCe">注册</el-button>
		</div>
	
</template>

<script>
	export default{
		data:function(){
			return{
				input1:"",
				name:"",
				tel:"",
				input2:"",
				telh:"请输入数字十一位的手机号码",
				pwdh:"请输入包含字母数字特殊字符的密码",
				surpwdh:"",
				flag:true
			}
		},
		methods:{
			zhuCe(){
			
				this.$http.post("http://localhost:8000/zhuce",{
					name:this.name,
					tel:this.tel,
					pwd:this.input1
				}).then((res)=>{
					alert(res.data.msg)
					console.log(res.data)
					this.$router.push("/login/user")
				}).catch((err)=>{
					alert("用户名不存在")
				})
			},
			telIput(){
				console.log(1)
				let regx=/^1[3-9]\d{9}$/
				if(regx.test(this.tel)){
					this.telh=`<p style="color:green;margin: 0;">输入正确</p>`
				}else{
					this.telh=`<p style="color:red;margin: 0;">输入格式错误请重新输入</p>`
				}
			},
			pwdIput(){
				let regx=/^(?=.*\d+)(?=.*[A-z]+)(?=.*[_])(?=.*\W+).{6,16}$/
				if(regx.test(this.input1)){
					this.pwdh=`<p style="color:green;margin: 0;">输入正确</p>`
				}else{
					this.pwdh=`<p style="color:red;margin: 0;">密码输入格式错误请重新输入</p>`
				}
			},
			surPwd(){
				console.log(1)
				if(this.input2==this.input1){
					this.surpwdh=""
				}else{
					this.surpwdh=`<p style="color:red;margin: 0;">密码错误请重新输入</p>`
				}
			}
		}
	}
</script>

<style scoped="scoped">
	.user>div{
		margin-left: -20px;
	}
	.el-input{
		margin-bottom: 5px;
		width: 70%;
	}
	
	.iwidth{
		width: 100%;
		margin-top: 10px;
	}
	.pwidth{
		width: 100%;
	}
	.user{
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	span{
		color:#59B5AD;
		display: inline-block;
		width: 70px;
		font-size: 16px;
		font-weight: 700;
	}
	.el-button{
		width: 56%;
		margin-top: 10px;
	}
	p{
		color: red;
		font-size: 14px;
		margin: 5px;
	}
</style>
