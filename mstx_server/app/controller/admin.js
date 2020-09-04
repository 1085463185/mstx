'use strict';

const Controller = require('egg').Controller;

class AdminController extends Controller {
	async adlogin() {
		const {ctx} = this;
		let type=ctx.request.query.type;
		
		var result = await ctx.service.admin.adlogin(type);
		ctx.body = result;
	}
	async deluser() {
		const {ctx} = this;
		let id=ctx.request.body.id;
		console.log(id);
		var result = await ctx.service.admin.deluser(id);
		ctx.body = result;
	}
	// 添加管理员
	async addadmin() {
	  const { ctx } = this;
		ctx.body=await this.ctx.service.admin.addadmin(ctx.request.body);
	}
	// 修改管理员信息
	async updateadmin() {
	  const { ctx } = this;
		ctx.body=await this.ctx.service.admin.updateadmin(ctx.request.body);
	}
	// 查询管理员信息
	async getadmin() {
	  const { ctx } = this;
		ctx.body=await this.ctx.service.admin.getadmin(ctx.request.body);
	}
}

module.exports = AdminController;
