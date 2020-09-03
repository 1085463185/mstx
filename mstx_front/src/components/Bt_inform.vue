<template>
	<div class="bt_information">
		<div class="box">
		<router-link to="/" class="top">美食天下-让吃更美好!</router-link>
		<div class="ul">
			<router-link to="/">菜谱</router-link>
			·
			<router-link to="/">食材</router-link>
			·
			<router-link to="/">魔方</router-link>
			·
			<router-link to="/">关于我们</router-link>
			·
			<router-link to="/">联系我们</router-link>
			·
			<router-link to="/">加入我们</router-link>
			·
			<router-link to="/">服务声明</router-link>
			·
			<router-link to="/">友情链接</router-link>
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
		width: 1000px;
	}
	a{
		text-decoration: none;
	}
	a:hover{
		text-decoration:underline;
		color: #ff6767;
	}
	.bt_information{
		background-color: white;
		margin-top: 100px;
		width: 100%;
		height: 80px;
		border-top: 1px solid #EAEAEA;
		padding-top: 12px;
		display: flex;
		justify-content: center;
		position: absolute;

	
	}
</style>
