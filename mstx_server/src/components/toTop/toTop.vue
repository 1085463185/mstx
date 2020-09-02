<template>
	<div class="icon" @click="toTop">
	</div>
</template>

<script>
	export default{
		mounted(){
			let toTop = document.getElementsByClassName("icon")[0]
			document.addEventListener("scroll",function(e){
				let scrollTop = document.documentElement.scrollTop;
				if(scrollTop == 0){
					toTop.style.display = "none";
				}else{
					toTop.style.display = "block";
				}
			})
		},
		methods:{
			toTop(){
				document.documentElement.scrollTop = 0;
			}
		}
	}
</script>

<style scoped>
	.icon{
		background: url(//static.meishichina.com/v6/img/wap_a/gotop.png) no-repeat scroll center center / 58px 58px;
		width: 58px;
		height: 58px;
		border-radius: 50%;
		position: fixed;
		right:8%;
		bottom: 12px;
		display: none;
		cursor: pointer;
	}
</style>
