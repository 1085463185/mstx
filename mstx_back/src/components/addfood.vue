<template>
	<div>
		图片：
		<el-upload class="upload-demo" :on-success="getImg" action="http://192.168.6.36:8000/uploadFile" :on-preview="handlePreview"
		 :on-remove="handleRemove" :file-list="fileList" list-type="picture">
			<el-button size="small" type="primary">点击上传</el-button>
			<div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
		</el-upload>
		名称：<br>
		<el-input v-model="name" placeholder="请输入名称"></el-input>
		种类：<br>
		<el-input v-model="kind" placeholder="请输入种类"></el-input>
		描述：<br>
		<el-input type="textarea" :rows="2" placeholder="请输入描述内容" v-model="des">
		</el-input><br>
		<el-button type="primary" plain @click="sure">提交</el-button>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				fileList: [],
				name: "",
				kind: "",
				des: "",
				filsrc:""
			}
		},
		methods: {
			getImg(response, file, fileList){
				console.log(response)
				this.filsrc=response
			},
			//图片上传
			handleRemove(file, fileList) {
				console.log(file, fileList);
			},
			handlePreview(file) {
				console.log(file);
			},
			sure() {
				console.log(this.name,
					this.kind,
					this.des,
					this.filsrc);
					if(this.name&&this.kind&&this.des&&this.filsrc){
						this.$http.post("http://localhost:8000/addShiCai", {
							name: this.name,
							kind: this.kind,
							des: this.des,
							src:this.filsrc
						}).then(res => {
							console.log(res.data);
						})
					}else{
						alert("上传不能有空项！")
					}
				
			}
		}
	}
</script>

<style scoped="">
	div {
		margin: 15px;
		width: 50vw;
	}

	.el-button {
		margin-left: 30px;
	}
</style>
