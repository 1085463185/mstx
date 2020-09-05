<template>
	<div>
		新密码：<br>
		<el-input v-model="pwd" placeholder="请输入新密码"></el-input>
		<el-button type="primary" plain @click="sure">提交</el-button>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				pwd: "",
				id:""
			}
		},
		methods: {
			sure() {
					if(this.pwd){
						this.id=document.cookie.split("=")[1];
						this.$http.post("http://localhost:8000/updatename", {
							id:this.id,
							pwd: this.pwd,
							sta:1
						}).then(res => {
							console.log(res.data);
							alert(res.data.msg)
							this.pwd="";
						})
					}else{
						alert("设置不能为空！")
					}
				
			}
		}
	}
</script>

<style scoped="">
	div{
		margin: 40px;
		width: 300px;
	}
</style>
