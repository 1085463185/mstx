<template>
	<div class="leftpop">
		<span>流行与排行</span>
		<div>
			<pop></pop>
			<pop></pop>
			<pop></pop>
			<pop></pop>
			<pop></pop>
			<pop></pop>
		</div>
	</div>
</template>

<script>
	import pop from "./pop.vue";
	export default {
		components:{
			pop
		}
	}
</script>

<style scoped="">
	.leftpop{
		float: left;
		margin-top: 20px;
		width: 620px;
		height: 380px;
		
	}
	span{
		display: block;
		padding: 20px;
		font-size: 20px;
		color: #ff6767;
	}
	.leftpop div{
		display: flex;
		flex-wrap: wrap;
	}
</style>
