<template>
	<!-- 评论 -->
	<div>
		<div class="L0" v-for="(item,index) in array" :key="index">
			<div class="L1" >
				<div class="Ll">
					<img :src="item.headimg" alt="">
					<span v-text="item.username"></span>
				</div>
				<div class="L2" >
					<span v-text="item.titles"></span><br>
					<span></span>
					<div class="L3">
						<img :src="item.img" alt=""   style="width: 200px; height:200px">
						<div class="L4">
							<span>一个喜欢,{{item.num}}条评论</span>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				array: [],
				uerArr:[]
			}
		},
		mounted() {
			console.log(1)
			// console.log(sessionStorage.getItem('tel'))
			this.$http.post('http://localhost:8000/getAllPingLun',{}).then((res)=>{
				console.log(res.data)
				this.array = res.data.pinglun
				this.uerArr = res.data.user
				for (var i = 0; i < this.array.length; i++) {
					
						this.array[i].headimg=this.uerArr[i%this.uerArr.length].headimg
						this.array[i].username   =this.uerArr[i% this.uerArr.length].name
						
				}
			})
		}

	}
</script>

<style>
	.L0 {
		position: relative;
		width: 900px;
		height: 250px;
		margin-bottom: 80px;

	}

	.L1 {
		position: relative;
	}
	.Ll {
		position: relative;
		display: flex;
		justify-content: left;
		width: 300px;
		height: 50px;
		line-height: 50px;
	}
	.Ll>img {
		position: relative;
		width: 50px;
		height: 50px;
		border-radius: 50%;
		overflow: hidden;
		margin-right: 20px;
	}

	.L2 {
		position: relative;
		left: 80px;
	}

	.L4>span {
		font-size: 15px;
	}
</style>


<!-- 
	.L0 {
		position: relative;
		width: 900px;
		height: 200px;
		margin-bottom: 80px;

	}

	.L1 {
		position: relative;
	}

	.L1>img {
		position: relative;
		width: 50px;
		height: 50px;
		border-radius: 50%;
		overflow: hidden;
	}

	.L2{
		position: relative;
		left: 80px;
	}
	.L4>span{
		font-size: 15px;
	} -->