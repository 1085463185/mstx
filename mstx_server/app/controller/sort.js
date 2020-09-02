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
  // 搜索查询
  async showmenuByname() {
  		const { ctx } = this;
  		 	ctx.body=await this.ctx.service.sort.showmenuByname(ctx.request.query);
  }
  // 食材查询菜品
  async showmenuByfood() {
  		const { ctx } = this;
  		 	ctx.body=await this.ctx.service.sort.showmenuByfood(ctx.request.query);
  }
  // 食材查询食材
  async showfoodByname() {
  		const { ctx } = this;
  		 ctx.body=await this.ctx.service.sort.showfoodByname(ctx.request.query);
  }
  
}

module.exports = SortController;
