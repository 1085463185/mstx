<!-- ["../../assets/shequ/lbt/1.jpg","../../assets/shequ/lbt/2.jpg","../../assets/shequ/lbt/3.jpg"] -->


<template>
	<div class="p">

		<el-carousel indicator-position="none">
			<el-carousel-item class="ms" v-for="(item,index) in sty" :key="index">
				<img :src="item.url" alt="" />
				
                <div class="wz">
					<div class="wztopic">
						{{item.name}}
					</div>
					<br />
					<div class="wzimg">
						<img src="@/assets/logo.png">
						<div>{{item.author}}</div>
					</div>
					<br />
					<div class="wzwz">
						{{item.ms}}
					</div>
				</div>

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
						name: "好吃汤",
						author: "智航...",
						ms: "材料准备：冰草，甜菜，油麦菜，生菜，豆腐，卤牛肉cook100麻辣烫调料做法步骤：1.食材...",

					},
					{
						url: require("../../assets/shequ/lbt/2.jpg"),
						name: "好吃汤",
						author: "阳...",
						ms: "一、食材： 去皮绿豆300g，油60-75g，糖75-100g；二、制做： 1､ 去皮绿豆清水浸泡12... "
					},
					{
						url: require("../../assets/shequ/lbt/3.jpg"),
						name: "好吃饼",
						author: "坤...",
						ms: "一、材料： 1､ 转化糖浆：白砂糖600g，水300g，柠檬1个； 2､ 月饼皮：转化糖浆160g，... "
					},
					{
						url: require("../../assets/shequ/lbt/4.jpg"),
						name: "好吃牛",
						author: "朋...",
						ms: "这次做的牛短骨还是离不开洋葱，还加上了广东人喜欢的柱侯酱，好惹味，又用了酱油膏来..."
					},
					{
						url: require("../../assets/shequ/lbt/5.jpg"),
						name: "好吃凤爪",
						author: "粤...",
						ms: "凤爪是很好的消口零食，这次用了盐焗鸡粉，采取冷食，口感Q韧，不火不燥。为了使凤爪的...."
					}
				],
			}

		}

	}
</script>
<style>
	
	.ms {
		display: flex;
		justify-content: space-between;
	}
	.wz {
		width: 60%;
		height: 240px;
		padding: 20px;
		box-sizing: border-box;
	}
	.wztopic {
		width: 100px;
		height: 50px;
		font-size: 20px;
		
	}
	.wzimg {
		width: 100%;
		height: 50px;
		display: flex;
		justify-content: left;
		line-height: 50px;
	}
	.wzimg>img {
		border-radius: 50%;
		width: 50px;
		height: 50px;
		background-color: #fff;
		margin-right: 30px;
	}
	.wzimg>div {
		color: rgb(172,172,172);
	}
	.wzwz{
		height: 100px;
		width: 100%;
	}
	
	.el-carousel__item:nth-child(2n) {
		background-color: rgb(247,247,247);
	}

	.el-carousel__item:nth-child(2n+1) {
		background-color: rgb(247,247,247);
	}
</style>
