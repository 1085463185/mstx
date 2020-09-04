<template>
	<div class="fb">
		话题描述：<br>
		<el-input v-model="kind" placeholder="请输入描述"></el-input>
		话题图片：
		<el-upload class="upload-demo" :on-success="getImg" action="http://localhost:8000/uploadFile" :on-preview="handlePreview"
		 :on-remove="handleRemove" :file-list="fileList" list-type="picture">
			<el-button size="small" type="primary">点击上传</el-button>
			<div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
		</el-upload>
		
		评论：<br>
		<el-input type="textarea" :rows="2" placeholder="请输入评论内容" v-model="des">
		</el-input><br>
		<el-button type="primary" plain @click="sure">提交</el-button>
		<btinform class="but"></btinform>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				fileList: [],
				id:"",
				name: "",
				kind: "",
				des: "",
				filsrc:"",
				// url:'/chuanshu',
				// methods:'get',
				// params:'params'
			}
		},
		 components:{
           btinform: () => import("@/components/shequ/btinform.vue")			
		},
		mounted() {
			console.log(this.$route.query.tel)
			this.$http.post("/getUser",{
				tel:this.$route.query.tel
			}).then((res)=>{
				console.log(res.data)
				this.id=res.data[0].id
			})
			// console.log(document.sessionStorage.getItem('tel'))
			// this.$http.post("").then((res)=>{
			// 	console.log(res.data)
			// })
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
				this.$http.post("/addPingLun", {
					uid:this.id,
					kind: this.kind,
					des: this.des,
					src:this.filsrc
				}).then(res => {
					console.log(res.data);
					alert("上传话题成功")
					this.$router.push("/huati");
				})
			}
		}
	}
</script>

<style scoped="">
/* 	div {
		margin: 15px;
		width: 50vw;
	} */
	.fb{
		
		width: 900px;
		height: 500px;
		text-align: left;
		position: relative;
	    left: 37.875rem;
	    top: 6.75rem;
		font-size: 0.9375rem;
		
	
	}

	.el-button {
		margin-left: 30px;
	}
	.but{
	 position:fixed;
	 bottom: 0;
	 left: 10.125rem;
	}
</style>