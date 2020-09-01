'use strict';

const Controller = require('egg').Controller;

class SortController extends Controller {
	
	//根据菜品分类查询
  async showAll() {
		let sort = this.ctx.request.query.kind; 
		let sortList = await this.ctx.service.sort.getFoodSort(sort);
   		this.ctx.response.body = sortList;
  }
  
  //查询所有菜品
  async showAllMenu() {
  		let menuList = await this.ctx.service.sort.getAllMenu();
   		this.ctx.response.body = menuList;
  }
  
}

module.exports = SortController;
