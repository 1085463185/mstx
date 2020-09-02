'use strict';

const Controller = require('egg').Controller;

class MenuController extends Controller {
	async allmenu() {
		const {ctx} = this;
		var result = await ctx.service.menu.allmenu();
		ctx.body = result;
	}
	async delmenu() {
		const {ctx} = this;
		let id=ctx.request.body.id
		var result = await ctx.service.menu.delmenu(id);
		ctx.body = result;
	}
}

module.exports = MenuController;
