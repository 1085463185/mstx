'use strict';

const Controller = require('egg').Controller;

class FoodController extends Controller {
  async showAll() {
		let cookbookList = await this.ctx.service.cookbook.getFoodSort();
   		this.ctx.response.body = cookbookList;
  }
}

module.exports = FoodController;
