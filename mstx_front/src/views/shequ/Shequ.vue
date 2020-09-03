<template>

	<div class="shequ">
		<!-- 导航条 -->
		<dht></dht>

		<lbt class="lbt"></lbt>
		<topic class="ht"></topic>
		<div style="width: 900px;">
			<comment v-for="" class="pl"></comment>
		</div>
		<btinform></btinform>
	</div>



</template>

<script>
	export default {
		name: 'shequ',
		components: {
			dht: () => import("@/components/shequ/dht.vue"),
			myheader: () => import("@/components/myheader.vue"),
			lbt: () => import("@/components/shequ/lbt.vue"),
			topic: () => import("@/components/shequ/topic.vue"),
			comment: () => import("@/components/shequ/comment.vue"),
			btinform: () => import("@/components/shequ/btinform.vue")
			
		}
	}
</script>

<style scoped>
	.shequ {
		position: relative;
		width: 990px;
		height: auto;
		margin: auto;
	}
</style>
