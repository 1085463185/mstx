<template>
	<div class="show">
		<div >
			你的位置:美食天下>菜谱>{{kind}}
		</div>
		<div class="caiming">
			<h2>{{cainame}}</h2>
			<a class="user">
				<img src="https://i5.meishichina.com/data/avatar/008/47/13/33_avatar_big.jpg?x-oss-process=style/c320&v=20200831" class="aimg" />
				<span>陈坤</span>
			</a>
		</div>
		<!-- 数据库查询图片 -->
		<img :src="cpimg"  class="cp"/>
		<!-- 数据库查询描述 -->
	    <div class="desc">
			{{description}}
		</div>
		<div class="a">
			<div class="title">
			<span class="red"></span>
			<h3>食材明细</h3>
			</div>
			<fieldset>
				<legend>主料</legend>
				<div>
					<ul >
						<li v-for="item in foodArr" :key="item.id"><b>{{item.name}}</b><p>{{item.large}}克</p></li>
						
					</ul>
				</div>
			</fieldset>
		</div>
		<div>
			<div class="title">
				<span class="red"></span>
				<h3>{{cainame}}的做法和步鄹</h3>
			</div>
				
				<div  class="buzou" v-for="item in buzouArr" :key="item.id">
					<img class="bimg" :src= item.src />
					<div class="set">
						<p class="num">{{item.name}}</p>
						<p class="do">{{item.description}}</p>
					</div>
				</div>
			
		</div>
	</div>
	
</template>

<script>
	import Bus from "./Bus.js"
	export default{
		data:function(){
			return{
				// 数据库请求通过菜谱点击路由传参过来
				cpimg:"",
			    description:"",
				name:"",
				cainame:"",
				buzouArr:[],
				kind:"",
				foodArr:[],
				cid:""
			}
		},
		mounted() {
			Bus.$on("getid",(cid)=>{
				this.cid = cid//通过传值显示页面数据
				console.log(cid)
			})
			// 插叙菜谱步鄹
			this.$http.post("/buzou",{
				cid:7
			}).then((res)=>{
				// console.log(res.data)
				this.buzouArr=res.data
			})
			// 查询需要展示的菜谱图片和描述
			this.$http.post("/show",{
				cid:7
			}).then((res)=>{
				// console.log(res.data)
				this.cainame=res.data[0].name
				this.cpimg=res.data[0].src
				this.description = res.data[0].description
				this.kind = res.data[0].kind
			}),
			// 通过中间表查询食材和用量
			this.$http.post("/zhongjian",{
				cid:7
			}).then((res)=>{
				console.log(res.data)
				this.foodArr=res.data.food
				
				
			})
			
		}
	}
</script>

<style scoped="scoped">
	.aimg{
		width: 34px;
		height: 34px;
	}
	.caiming{
		width: 640px;
		display: flex;
		margin-top: 5px;
		margin-bottom: 10px;
	}
	h2{
		width: 540px;
		line-height: 59px;
		
	}
	h3{
		color: red;
	margin-left: 5px;
	}
	.user{
		width: 35px;
	}
	.show{
		width: 640px;
	}
	.desc{
		margin: 20px 0;
	}
	.cp{
		width: 100%;
	}
	ul{
		display: flex;
	}
	li{
		width: 159px;
		height: 70px;
		list-style: none;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	.a{
		margin-bottom: 40px;
	}
	.buzou{
		width: 640px;
		display: flex;
		margin-bottom: 40px;
		justify-content: space-around;
	}
	.bimg{
		width: 220px;
		height: 165px;
	}
	.num{
		width: 40px;
		height: 40px;
		border-radius: 50%;
		border: 1px solid #ddd;
		text-align: center;
		line-height: 40px;
		font-size: 20px;
		margin-bottom: 20px;
	}
	.set{
		width: 390px;
		height: 100%;
		display: flex;
		flex-direction: column;
	}
	.red{
		display: block;
		width: 20px;
		height: 20px;
		/* background-color: red; */
		background-image: url(https://static.meishichina.com/v6/img/mo.png);
	}
	.title{
		display: flex;
		align-items: center;
		margin-bottom: 10px;
	}
</style>
