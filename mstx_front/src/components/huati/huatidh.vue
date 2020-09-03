<template>
	<div class="dd1">
		<div class="topic1">
			<div class="topicctheme1">
				<span class="themest1" >话题</span>
			</div>
			<div class="topiclass1">
				<a href="https://home.meishichina.com/pai.html">全部</a>
				<a href=" https://home.meishichina.com/pai-hongbei.html">最新</a>
				<a href="https://home.meishichina.com/pai-new.html">热门</a>
				<a href="https://home.meishichina.com/pai-mama-elite.html">精华</a>
				<div><button type="button" @click="fabiao" class="anl">发布话题</button> </div>
			</div>
			
		</div>
	</div>	

	


</template>

<script>
	export default{
		
		methods: {
		
			fabiao() {
				console.log(this.$route.path )
				let path = '/'
				if (this.$route.path == path) {
					this.$router.go(0)
				} else {
					if(sessionStorage.getItem("tel")==null){
						this.$router.push("/login")
					}else{
						this.$router.push(`/publish?tel=${sessionStorage.getItem("tel")}`)
						
					}
					
				}
			}
		}
	}
</script>

<style>
	.dd1 {
		position: relative;
		width: 990px;
		height: 50px;
	}

	.topic1{
		position: absolute;
		top: 0px;
		left: 0px;
		width: 100%;
		height: 46px;
		border-bottom: 1px solid #ccc;
		display: flex;
		justify-content: space-between;
		line-height: 53px;
	}

	.topicctheme1 {
		width: 200px;
		height: 48px;
		font-size: 32px;
		display: flex;
		justify-content: space-between;
		cursor: pointer;
		box-sizing: border-box;
	}

	.themest1 {
		color: rgb(255, 103, 103);
		border-bottom: 3px solid rgb(255, 103, 103);
	}

	.topiclass1 {
		width:400px;
		height: 100%;
		display: flex;
		justify-content: space-between;
	}

	.topiclass1>a {
		text-decoration: none;
		color: black;
		cursor: pointer;
	}

	.topiclass1>a:hover {
		color: rgb(255, 103, 103);
	}
	
	.anl{
		height: 50px;
		width: 200px;
		background-color: #ff6767;
		position: relative;
		top: -6px;
		 border-radius: 12px ;		
	}
</style>
