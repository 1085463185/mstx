<template>
	<div class="bt_information">
		<div class="box">
		<router-link to="/" class="top">美食天下-让吃更美好!</router-link>
		<div class="ul"><br />
			<router-link to="/recip">菜谱</router-link>
			·
			<router-link to="/food">食材</router-link>
			·
			<router-link to="/about/content1?id=0">关于我们</router-link>
			·
			<router-link to="/about/content1?id=1">联系我们</router-link>
			·
			<router-link to="/about/content1?id=2">加入我们</router-link>
			·
			<router-link to="/about/content1?id=3">服务声明</router-link>
			·
			<router-link to="/about/content1?id=4">网站地图</router-link>
		</div>
		<p>© 2004-2017 meishichina.com, all rights reserved</p>
		</div>
	</div>
</template>

<script>
</script>

<style scoped>
	.top{
		color: #f50;
	}
	.box{
		width: 990px;
		height: 140px;
	}
	a{
		text-decoration: none;
	}
	a:hover{
		text-decoration:underline;
		color: #ff6767;
	}
	.bt_information{
		width: 100%;
		height: 80px;
		border-top: 1px solid #EAEAEA;
		padding-top: 12px;
		display: flex;
		justify-content: center;
		margin-top: 30px;
	}
</style>
