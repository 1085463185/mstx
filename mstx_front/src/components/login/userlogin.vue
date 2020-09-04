<template>
	<div class="user">
		<form>
			<div class="login-field">
				<input type="text" id="no" autocomplete="off" v-model="tel" placeholder="请输入手机号"/>
				<p style="color: red;">{{uerr}}</p>
				<label>用户</label>
			</div>
			<div class="login-field">
				<input type="password" id="pwd" v-model="pwd" placeholder="请输入密码"/>
				<p style="color: red;">{{perr}}</p>
				<label>密码</label>
			</div>
			<el-button type="success" @click.native="userLogin">登录</el-button>
		</form>
	</div>
</template>

<script>
export default {
  data() {
    return {
      pwd: "",
      tel: "",
      name: "",
      uerr: "",
      perr: ""
    };
  },
  mounted() {
    this.name = this.$route.query.name;
  },
  methods: {
    userLogin() {
      // 数据库查询并验证传入参数为 pwd tel
      // 跳转路由到首页
      
        this.$http
          .post("http://localhost:8000/login", {
            params: {
              pwd: this.pwd,
              tel: this.tel
            }
		  })
		//   15680260863
		// 123abc_@
          .then(res => {
			  console.log(res.data)
			  let yhid = res.data.result[0].id
			    sessionStorage.setItem("yhid", yhid);
			let myname = res.data.result[0].name
            if (res.data.status == 0) {
			  this.$router.push(`/`);
			   this.$router.go(0);
              sessionStorage.setItem("tel", this.tel);
              sessionStorage.setItem("name", myname);
             
              alert(res.data.msg);
            } else if (res.data.status == 1) {
              this.uerr = res.data.msg;
            } else {
              this.perr = res.data.msg;
            }
          });
       
      
    }
  }
};
</script>

<style scoped="scoped">
/* 	mybutton{
		outline: none;
		border: none;
		background-color: #88d2fb;
		width: 54%;
		height: 38px;
		border-radius: 5px;
		font-size: 18px;
		font-weight: 400;
	} */
	.user form{
		text-align: center;
		padding-top: 24px;
	}
	.user{
		margin-top: 34px;
	}
	.user .login-field {
		position: relative;
	}

	.user .login-field input {
		width: 84%;
		padding: 10px 8px;
		font-size: 16px;
		color: #fff;
		margin-bottom: 40px;
		border-bottom: 1px solid #fff;
		outline: none;
		border-radius: 12px;
		background: transparent;
	}

	.user .login-field label {
		position: absolute;
		top: 0;
		left: 0;
		letter-spacing: 1px;
		padding: 10px 0;
		font-size: 16px;
		color: #fff;
		pointer-events: none;
		transition: .5s;
	}

	.user .login-field input:focus~label,
	.user .login-field input:valid~label {
		top: -42px;
		left: 22px;
		color: #16e6fd;
		font-size: 22px;
	}
</style>
