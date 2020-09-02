<template>
	<div class="box">
		<img src="../../assets/logo.png"/>
		<div class="introduction">
			<a href="#">对肥肠情有独钟，可以说是真爱了！</a>
			<p>菜单 | 喜欢吃的亲们不要错过哦～</p>
		</div>
	</div>
</template>

<script>
</script>

<style scoped="">
	img{
		cursor: pointer;
		float: left;
		width: 70px;
		height: 70px;
	}
	.box{
		width: 310px;
		height: 100px;
	}
	.introduction{
		float: right;
		width: 235px;
		height: 100px;
	}
	a{
		display: block;
		margin:10px 0;
		width: 235px;
		height: 30px;
		overflow: hidden;
		text-overflow:ellipsis;
		white-space: nowrap;
		text-decoration: none;
		font-size: 20px;
		font-family: "微软雅黑";
		color: black;
	}
	a:hover{
		color: red;
		text-decoration:underline;
	}
	p{
		color: #999999;
		font-size: 14px;
	}
</style>
