'use strict';

const Controller = require('egg').Controller;

class BuZouController extends Controller {
	// 获取步鄹数据
  async getAllBuZou() {
    const { ctx } = this;
	ctx.body=await this.ctx.service.buzou.getAllBuZou(ctx.request.body);
  }
  // 获取菜谱图片
 async getImg() {
   const { ctx } = this;
 	ctx.body=await this.ctx.service.buzou.getImg(ctx.request.body);
 }
 // 获取食材数据
  async getFood() {
    const { ctx } = this;
  	ctx.body=await this.ctx.service.buzou.getFood(ctx.request.body);
  }
  // 添加发布菜品图片
  async uploadFile() {
  	let newUrl = await this.ctx.service.buzou.uploadGoods();
  	this.ctx.response.body = newUrl; 
  }
  // 添加发布菜品
  async addCaiPu() {
    const { ctx } = this;
  	ctx.body=await this.ctx.service.buzou.addCaiPu(ctx.request.body);
  }
}

module.exports = BuZouController;