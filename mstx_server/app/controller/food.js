'use strict';

const Controller = require('egg').Controller;

class FoodController extends Controller {
  async showAll() {
		let foodList = await this.ctx.service.food.getFoodSort();
   		this.ctx.response.body = foodList;
  }
  async  getFoodName() {
  		let foodList = await this.ctx.service.food. getFoodName();
   		this.ctx.response.body = foodList;
  }
  // 周鹏后台管理获取
 async foods() {
 	const {ctx} = this;
 	var result = await ctx.service.food.foods();
 	ctx.body = result;
 }
 async delfood() {
 	const {ctx} = this;
 	let id=ctx.request.body.id
 	var result = await ctx.service.food.delfood(id);
 	ctx.body = result;
 }
}

module.exports = FoodController;
