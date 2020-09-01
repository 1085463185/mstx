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
 
}

module.exports = FoodController;
