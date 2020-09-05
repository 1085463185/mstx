<template>
	<div>
		<imgplay></imgplay>
		<div style="margin-left: 20px;">
			<br><br>
			<h5>头像：</h5><img :src="msg.headimg" width="80px" height="80px" />
			<h5>编号:<span>{{msg.id}}</span></h5>
			<h5>昵称:<span>{{msg.usename}}</span></h5>
			<h5>个性签名:<span>{{msg.lable}}</span></h5>
		</div>
	</div>
</template>

<script>
	import imgplay from "./imgplay.vue"
	export default {
		data: function() {
			return {
				msg:[]
			}
			
		},
		components: {
			imgplay
		},
		watch:{
			
		},
		methods:{
			getadmin(){
				this.id=document.cookie.split("=")[1];
				this.$http.post("http://localhost:8000/getadmin", {
					id:this.id,
					sta:0
				}).then(res => {
					this.msg=res.data[0];
				})
			}
		},
		created() {
			this.getadmin();
		}
	}
</script>

<style scoped="">

h5{
	margin-bottom: 6px;
}
span{
	margin-left: 20px;
	color: dimgray;
	font-size: 14px;
}

</style>
