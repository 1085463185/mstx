<template>
	<div>
		头像：
		<el-upload class="upload-demo" :on-success="getImg" action="http://192.168.6.36:8000/uploadFile" :on-preview="handlePreview"
		 :on-remove="handleRemove" :file-list="fileList" list-type="picture">
			<el-button size="small" type="primary">点击上传</el-button>
			<div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
		</el-upload>
		名称：<br>
		<el-input v-model="name" placeholder="请输入名称"></el-input>
		密码：<br>
		<el-input v-model="pwd" placeholder="请设置密码"></el-input>
		个性签名：<br>
		<el-input type="textarea" :rows="2" placeholder="请输入个性签名" v-model="label">
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
				pwd: "",
				label:"",
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
					if(this.name&&this.pwd&&this.label&&this.filsrc){
						this.$http.post("locahost:8000/addadmin", {
							name: this.name,
							pwd: this.pwd,
							label: this.label,
							src:this.filsrc
						}).then(res => {
							console.log(res.data);
						})
					}else{
						alert("设置不能有空项！")
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
