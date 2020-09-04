'use strict';

const Controller = require('egg').Controller;

class PingLunController extends Controller {
  
  async  getAllPingLun() {
  		const { ctx } = this;
  		 	ctx.body=await this.ctx.service.pinglun.getAllPingLun(ctx.request.body);
  }
  // 获取登录用户信息
  async   getUser() {
  		const { ctx } = this;
  		 	ctx.body=await this.ctx.service.pinglun.getUser(ctx.request.body);
  }
  async   addPingLun() {
  		const { ctx } = this;
  		 	ctx.body=await this.ctx.service.pinglun.addPingLun(ctx.request.body);
  }

}

module.exports = PingLunController;