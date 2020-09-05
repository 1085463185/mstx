<template>
	<div>
		<el-carousel :interval="1900" arrow="always" height="300px">
			<el-carousel-item v-for="(item,index) in imgarr" :key="index">
				<img :src="item" width="100%" height="100%" @click="goPage"/>
			</el-carousel-item>
		</el-carousel>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				imgarr: ["https://i3.meishichina.com/attachment/magic/2020/06/15/2020061515922058734798197577.jpg",
					"https://i3.meishichina.com/attachment/magic/2020/03/19/2020031915845832443168197577.jpg",
					"https://i3.meishichina.com/attachment/magic/2020/08/11/2020081115971110561328197577.jpg"
				]
			}
		},
		methods:{
			goPage(){
				window.open("http://localhost:8080");
			}
		}
	}
</script>

<style scoped="">
	.el-carousel__item {}

	.el-carousel__item:nth-child(2n) {
		background-color: #99a9bf;
	}

	.el-carousel__item:nth-child(2n+1) {
		background-color: #d3dce6;
	}
	img{
		cursor: pointer;
	}
</style>
