<template>
	<div class="dd">
		<div class="topic">
			<div class="topicctheme">
				<span class="themest"> 热门话题</span>
			</div>
			<div class="topiclass">
				<a href="https://home.meishichina.com/pai-meishi.html">美食随手拍</a>
				<a href=" https://home.meishichina.com/pai-hongbei.html">烘培圈</a>
				<a href="https://home.meishichina.com/pai-chuyi.html">厨艺交流</a>
				<a href="https://home.meishichina.com/pai-mama.html">妈妈派</a>
				<a href="https://home.meishichina.com/pai.html">话题首页</a><br><br>
			</div>
		</div>
		
	</div>
		
	
</template>

<script>
</script>

<style scoped>
	.dd {
		position: relative;
		width: 900px;
		height: 50px;
	}

	.topic {
		position: absolute;
		top: 0px;
		left: 0px;
		width: 100%;
		height: 46px;
		border-bottom: 1px solid #ccc;
		display: flex;
		justify-content: space-between;
		line-height: 50px;
	}

	.topicctheme {
		width: 200px;
		height: 48px;
		font-size: 20px;
		display: flex;
		justify-content: space-between;
		cursor: pointer;
		box-sizing: border-box;
	}

	.themest {
		color: rgb(255, 103, 103);
		border-bottom: 3px solid rgb(255, 103, 103);
	}

	.topiclass {
		width: 400px;
		height: 100%;
		display: flex;
		justify-content: space-between;
	}

	.topiclass>a {
		text-decoration: none;
		color: black;
		cursor: pointer;
	}

	.topiclass>a:hover {
		color: rgb(255, 103, 103);
	}
	
	

</style>
