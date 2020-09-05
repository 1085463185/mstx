<template>
	<div>
		昵称：<br>
		<el-input v-model="name" placeholder="请输入新昵称"></el-input>
		<el-button type="primary" plain @click="sure">提交</el-button>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				name: "",
				id:""
			}
		},
		methods: {
			sure() {
					if(this.name){
						this.id=document.cookie.split("=")[1];
						this.$http.post("http://localhost:8000/updatename", {
							id:this.id,
							name: this.name,
							sta:0
						}).then(res => {
							console.log(res.data);
							alert(res.data.msg)
							this.name="";
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
