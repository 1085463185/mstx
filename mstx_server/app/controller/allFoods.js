'use strict';

const Controller = require('egg').Controller;

class allFoodsController extends Controller {
	// 展示所有食材
  async showAll() {
		let allFoodsList = await this.ctx.service.allFoods.getAllFoods();
   		this.ctx.response.body = allFoodsList;
  }
}

module.exports = allFoodsController;