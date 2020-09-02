<template>
	<div class="winbotm" @mouseenter="showdel" @mouseleave="closedel" v-if="is">
		<div>
			<img src="../../assets/s1.jpg" />
			<img style="margin-top: 50px;height: 25px;width: 344px;" src="../../assets/s2.jpg" />
			<img src="../../assets/s3.jpg" />
			<p>扫描下载手机客户端<br>海量菜谱，超千万注册会员，一个有趣的吃货星球</p>
		</div>
		<img class="del" src="../../assets/x.png" v-if="isdel" @click="closeBot" />
	</div>
</template>

<script>
	export default {
		data(){
			return {
				is:1,
				isdel:0
			}
		},
		methods:{
			showdel(){
				this.isdel=1;
			},
			closedel(){
				this.isdel=0;
			},
			closeBot(){
				this.is=0;
			}
		}
	}
</script>

<style scoped="">
	.winbotm{
		position: fixed;
		z-index: 1;
		left: 0;
		bottom: 0;
		width: 100%;
		min-width: 990px;
		height: 150px;
		background-color: #f5f5f5;
	}
	.winbotm div{
		position: relative;
		display: flex;
		justify-content: space-between;
		width: 670px;
		margin: auto;
	}
	p{
		width: 670px;
		height: 60px;
		font-size: 14px;
		text-align: center;
		left: 60px;
		position: absolute;
		left: 0;
		top: 80px;
	}
	.del{
		cursor: pointer;
		background-color: white;
		position: absolute;
		right: 15px;
		top: 15px;
		width: 15px;
	}
</style>
