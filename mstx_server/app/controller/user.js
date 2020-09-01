'use strict';

const Controller = require('egg').Controller;

class UserController extends Controller {
	// 用户登录验证
  async login() {
    const { ctx } = this;
	ctx.body=await this.ctx.service.user.login(ctx.request.body);
  }
  // 管理权限登录
  async maglogin() {
    const { ctx } = this;
  	ctx.body=await this.ctx.service.user.maglogin(ctx.request.body);
  }
  // 用户注册
  async zhuCe() {
    const { ctx } = this;
  	ctx.body=await this.ctx.service.user.zhuCe(ctx.request.body);
  }
  
}

module.exports = UserController;
