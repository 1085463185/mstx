<template>
	<div>
		<el-button type="primary" round @click.native="addCaiPu">发布菜品</el-button>
		<div v-show="flag">
			<el-input placeholder="请输入内容" v-model="name">
				<template slot="prepend">菜品名</template>
			</el-input>
			<el-input placeholder="请输入内容" v-model="sex">
				<template slot="prepend">菜品类别</template>
			</el-input>
			<div>
				<p>菜品描述</p>
				<el-input type="textarea" :rows="2" placeholder="请输入内容" v-model="desc">
				</el-input>
			</div>
			<p>菜品图片</p>
			<el-upload class="upload-demo" :on-success="getImgUrl" action="http://localhost:8000/uploadFile" :on-preview="handlePreview"
			 :on-remove="handleRemove" :file-list="fileList2" list-type="picture">
				<el-button size="small" type="primary">点击上传</el-button>
				<div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
			</el-upload>
			<p>菜品主食材</p>
			<el-checkbox-group 
			    v-model="checkedCities1"
			    :min="1"
			    :max="3">
			    <el-checkbox v-for="city in cities" :label="city" :key="city">{{city}}</el-checkbox>
			  </el-checkbox-group>
			  <el-button type="primary" round @click.native="showMyCp">发布</el-button>
		</div>
	</div>
</template>
<script>
	export default {
		data: function() {
			return {
				name: "",
				sex: "",
				flag: false,
				desc: "",
				fileList2: [],
				fileSrc:"",
				checkedCities1: [],
				cities: []
			
			}
		},
		mounted() {
			this.$http.get("http://localhost:8000/getAllFoodsList",{}).then((res)=>{
				// console.log(res.data)
				for(let i=0;i<res.data.length;i++){
					this.cities.push(res.data[i].name)
				}
			})
		},
		methods: {
			getImgUrl(response, file, fileList){
				console.log(response)
				this.fileSrc=response
			},
			addCaiPu() {
				this.flag = !this.flag
			},
			showMyCp(){
				this.$http.post("http://localhost:8000/addCaiPu",{
					name:this.name,
					sex:this.sex,
					desc:this.desc,
					src:this.fileSrc,
				}).then((res)=>{
					console.log(res.data)
					alert(res.data.msg)
				})
			},
			handleRemove(file, fileList) {
				console.log(file, fileList);
			},
			handlePreview(file) {
				console.log(file);
			}
		}
	}
</script>

<style scoped="scoped">
	div {
		width: 640px;
	}
</style>
