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
}

module.exports = AdminController;
