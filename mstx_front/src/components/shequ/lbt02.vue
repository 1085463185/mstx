<!-- ["../../assets/shequ/lbt/1.jpg","../../assets/shequ/lbt/2.jpg","../../assets/shequ/lbt/3.jpg"] -->


<template>
	<div class="p">

		<el-carousel indicator-position="none">
			<el-carousel-item class="ms" v-for="(item,index) in sty" :key="index">
				<img :src="item.url" alt="" />
				
                 <span class="wz">{{item.ms}}</span>

			</el-carousel-item>
		</el-carousel>

	</div>

</template>


<script>
	export default {


		data() {
			return {
				sty: [{
						url: require("../../assets/shequ/lbt/1.jpg"),
						ms: "材料准备：冰草，甜菜，油麦菜，生菜，豆腐，卤牛肉cook100麻辣烫调料做法步骤：1.食材...",

					},
					{
						url: require("../../assets/shequ/lbt/2.jpg"),
						ms: "一、食材： 去皮绿豆300g，油60-75g，糖75-100g；二、制做： 1､ 去皮绿豆清水浸泡12... "
					},
					{
						url: require("../../assets/shequ/lbt/3.jpg"),
						ms: "一、材料： 1､ 转化糖浆：白砂糖600g，水300g，柠檬1个； 2､ 月饼皮：转化糖浆160g，... "
					},
					{
						url: require("../../assets/shequ/lbt/4.jpg"),
						ms: "这次做的牛短骨还是离不开洋葱，还加上了广东人喜欢的柱侯酱，好惹味，又用了酱油膏来..."
					},
					{
						url: require("../../assets/shequ/lbt/5.jpg"),
						ms: "凤爪是很好的消口零食，这次用了盐焗鸡粉，采取冷食，口感Q韧，不火不燥。为了使凤爪的...."
					}
				],
			}

		}

	}
</script>
<style>
	
	.wz{
		height: 100px;
		width: 50%;
		position: relative;
		float: right;
		top: 35%;
		right: 100px;
	}
	
	
	/* .perent {
		position: relative;
		float: left;
		display: none;
		width: 100%;
		height: 100%;
		text-align: right;
	}

	.child {
		float: left;
		width: 50%;
		margin-top: -50%;
		font-size: 15px;
		/* padding-top: 50%; 

	}
	.span{
		position:absolute;
		top:0px;
	}
 */
	.el-carousel__item:nth-child(2n) {
		background-color: white;
	}

	.el-carousel__item:nth-child(2n+1) {
		background-color: white
	}
</style>
