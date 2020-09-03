<template>

	<div class="Huati">
		<!-- 导航条 -->

		<dht></dht>
		<img src="../../assets/shequ/lbt/6.jpg" alt="">
		<huatidh> </huatidh>


		<yh></yh>


		<btinform></btinform>
	</div>



</template>

<script>
	export default {
		name: 'Huati',
		components: {
			myheader: () => import("@/components/myheader.vue"),
			dht: () => import("@/components/huati/dht.vue"),
			huatidh: () => import("@/components/huati/huatidh.vue"),
			yh: () => import("@/components/huati/yh.vue"),
			btinform: () => import("@/components/shequ/btinform.vue")



		}

	}
</script>

<style scoped>
	.Huati {
		position: relative;
		width: 990px;
		height: auto;
		margin: auto;
	}
</style>
