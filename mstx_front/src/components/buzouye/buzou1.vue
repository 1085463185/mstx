<template>
	<div class="buzou">
		<!-- <myheader></myheader> -->
		<buzouheader></buzouheader>
		<img src="https://static.meishichina.com/img/banner/3.jpg" class="head"/>
		<div class="content">
			<buzoushow></buzoushow>
			<buzouright></buzouright>
		</div>
		<shangchuan></shangchuan>
	</div>
	
</template>

<script>
	import buzouheader from "./buzouheader.vue"
	import buzoushow from "./buzoushow.vue"
	import buzouright from "./buzouright.vue"
	import shangchuan from "./shangchuan.vue"
	export default{
		components:{
			buzouheader,
			buzoushow,
			buzouright,
			shangchuan
		}
	}
</script>

<style scoped>
	.buzou{
		width: 990px;
		margin: 10px auto;
	}
	.head{
		margin: 10px auto;
	}
	.content{
		display: flex;
		justify-content: space-between;
	}
</style>
