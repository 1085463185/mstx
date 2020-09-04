<template>
  <div class="grzx">
    <p class="grzxP">个人中心</p>

    <div class="yhxinxi">
      <img :src="filsrc" alt />

      <p>用户昵称：{{name}}</p>
      <p>个性签名：{{label}}</p>
      <el-button type="primary" plain @click="updatexinxi">编辑资料</el-button>
    </div>
    <div class="update">
      <p>头像：</p>

      <el-upload
        class="upload-demo"
        :on-success="getImg"
        action="http://localhost:8000/uploadFile"
        :on-preview="handlePreview"
        :on-remove="handleRemove"
        :file-list="fileList"
        list-type="picture"
      >
        <el-button size="small" type="primary">点击上传</el-button>
        <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
      </el-upload>
      <p>昵称：</p>

      <el-input v-model="name" placeholder="请输入昵称"></el-input>

      <p>个性签名：</p>

      <el-input type="textarea" :rows="2" placeholder="请输入个性签名" v-model="label"></el-input>

      <el-button type="primary" plain @click="sure">提交</el-button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      fileList: [],
      name: "",
      label: "",
      filsrc: "",
      yhid: sessionStorage.getItem("yhid")
    };
  },
  mounted() {
    // console.log(this.yhid);
    console.log(this.yhid)
    this.getuseInform();
  },
  methods: {
    updatexinxi() {
      let updateBox = document.querySelector(".update");
      updateBox.style.display = "block";
    },
    getuseInform() {
      this.$http
        .post("http://localhost:8000/getadmin", {
          id: this.yhid,
          sta: 1
        })
        .then(res => {
            console.log(res.data)
          let list = res.data[0];
          this.name = list.name;
          this.label = list.label;
          this.filsrc = list.headimg;
        });
    },
    getImg(response, file, fileList) {
      this.filsrc = response;
    },
    //图片上传
    handleRemove(file, fileList) {
      console.log(file, fileList);
    },
    handlePreview(file) {
      console.log(file);
    },
    sure() {
      if (this.name && this.label) {
        this.$http
          .post("http://localhost:8000/updatename", {
            sta: 3,
            id: this.yhid,
            name: this.name,
            label: this.label,
            src: this.filsrc
          })
          .then(res => {
            // console.log(res.data);
            alert("修改成功");
            sessionStorage.setItem("name",this.name)
            this.$router.go(0);
            this.getuseInform();
            let updateBox = document.querySelector(".update");
            updateBox.style.display = "none";
          });
      } else {
        alert("设置不能有空项！");
      }
    }
  }
};
</script>

<style scoped="">

div {
  margin: 15px;
  width: 50vw;
}

.el-button {
  margin-left: 30px;
}
.grzx {
  width: 1000px;
  margin: 100px auto;
}
.grzxP {
  color: green;
  border-bottom: 2px solid green;
  font-size: 20px;
  height: 40px;
  margin-bottom: 20px;
}
.update {
  display: none;
}
.update p {
  width: 100px;
  font-size: 20px;
  text-align: center;
}
.yhxinxi button {
  margin: 50px 0;
}
.yhxinxi p {
  background-color: lightblue;
  /* height: 100px; */
  padding: 10px;
}
.yhxinxi img{
   border: 1px solid #ccc;
    width: 100px;
    height: 100px;
    border-radius: 100px;
}
</style>