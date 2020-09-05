<template>
	<div>
		<login  @event="handle" v-if="sh"></login>
		<div v-else>
			<myheader @onChange="shChange"></myheader>
			<!-- <admin></admin> -->
			<div class="main">
				<router-view></router-view>
			</div>
		</div>
	</div>
	
</template>

<script>
	import myheader from "./views/myheader.vue";
	import login from "./views/login.vue";
	export default {
		data(){
			return {
				sh:1
			}
		},
		components:{
			myheader,
			login
		},
		methods:{
			handle(is){
				this.sh=is;
			},
			shChange(val){
				this.sh=val;
			},
			getcookie(){
				if(document.cookie){
					return document.cookie.split("=")[1];
				}
			}
		},
		created() {
			// if(document.cookie){
			// 	alert("请登录！");
			// 	window.location.href="http://localhost:8081/login/user?id=2&name=%E7%AE%A1%E7%90%86%E5%91%98";
			// }
		},
		mounted() {
			if(this.$route.path=="/"&&document.cookie.indexOf("id")!=-1){
				this.$router.push("/admin");
			}
			if(document.cookie){
				this.sh=0;
			}
		}
	}
</script>
<style>
*{
	margin: 0;
	padding: 0;
}
.main{
	width: 80vw;
	margin: auto;
	margin-top: 50px;
}
</style>
