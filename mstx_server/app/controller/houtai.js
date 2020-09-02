'use strict';

const Controller = require('egg').Controller;

class HouTaiController extends Controller {
  
  async  addShiCai() {
  		const { ctx } = this;
  		 	ctx.body=await this.ctx.service.houtai.addShiCai(ctx.request.body);
  }
 
}

module.exports = HouTaiController;