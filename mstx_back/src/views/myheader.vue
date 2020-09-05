<template>
	<div>
	<div class="container">
		<div class="nav">
			<el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect"
			 background-color="#5e9ce3" text-color="#fff" active-text-color="#ffd04b">
				<el-menu-item :default-active="activerouter" index="1">管理员设置</el-menu-item>
				<el-menu-item :default-active="activerouter" index="2">用户管理</el-menu-item>
				<el-menu-item :default-active="activerouter" index="3">菜谱管理</el-menu-item>
				<el-menu-item :default-active="activerouter" index="4">食材管理</el-menu-item>
			</el-menu>
		</div>
		<div class="admin">
			<img :src="admsg.headimg" />
			<div style="display: inline-block;width: 150px;">
				<span class="use">{{admsg.usename}}&nbsp;&nbsp;<button class="exit" @click="exit">注销登录</button></span>
				<span class="label">个性签名：{{admsg.lable}}</span>
			</div>
		</div>
	</div>
	
	</div>
</template>

<script>
	export default {
		data() {
			return {
				activeIndex: '1',
				activerouter: "",
				admsg: {},
				id: "",
				sh:0
			};
		},
		created() {
			this.getadmin();
			this.saveNav();
		},
		mounted() {
			//获取地址栏中的路由，设置elementui中的导航栏选中状态
			this.activerouter = window.location.pathname;
		},
		methods: {
			exit(){
				window.location.href="http://localhost:8080";
				document.cookie=`id=;expires=${new Date().toGMTString()}`;
				console.log(document.cookie);
				this.sh=1;
				this.$emit("onChange",this.sh)
			},
			saveNav(){
				if(window.location.href.indexOf("admin")!=-1){
					this.activeIndex="1";
				}else if(window.location.href.indexOf("user")!=-1){
					this.activeIndex="2";
				}else if(window.location.href.indexOf("approve")!=-1){
					this.activeIndex="3";
				}else if(window.location.href.indexOf("food")!=-1){
					this.activeIndex="4";
				}else{
					return;
				}
			},
			getadmin() {
				this.id = document.cookie.split("=")[1];
				this.$http.post("http://localhost:8000/getadmin", {
					id: this.id,
					sta: 0
				}).then(res => {
					this.admsg = res.data[0];
				})
			},
			handleSelect(key, keyPath) {
				// console.log(key, keyPath);
				let path;
				switch (key) {
					case "1":
						path = "/admin";
						break;
					case "2":
						path = "/user";
						break;
					case "3":
						path = "/approve";
						break;
					case "4":
						path = "/food";
						break;
					default:
						return;
				}
				if (this.$route.path === path) {
					this.$router.go(0);
				} else {
					this.$router.push(path);
				}
			}
		}
	}
</script>

<style scoped="">
	* {
		margin: 0;
		padding: 0;
	}
	.container {
	/* 	display: flex;
		justify-content: space-around; */
		width: 100vw;
		min-width: 800px;
		height: 70px;
		background-color: #5e9ce3;
		margin: auto;
		overflow: hidden;
	}

	.nav {
		display: inline-block;
		min-width: 400px;
		width: 600px;
		height: 60px;
		margin-left: 160px;
	}

	.admin {
		display: inline-block;
		float: right;
		margin-top: 10px;
		margin-right: 10px;
		width: 300px;
		min-width: 200px;
		height: 40px;
	}
	.use{
		color: white; 
		font-size: 14px;
		white-space: nowrap;
	}
	.use :hover{
		color: red;
	}
	.label{
		 color: palegoldenrod; 
		 font-size: 12px;
		 width: 160px;
		 white-space: nowrap;
	}
	.exit{
		color: #ccc;
		outline: none;
		border: 1px solid navajowhite;
		border-radius: 5px;
		font-size: 18px;
		cursor: pointer;
	}
	img {
		border-radius: 50%;
		background-color: white;
		width: 40px;
		height: 40px;
	}
</style>
