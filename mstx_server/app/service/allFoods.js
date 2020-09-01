'use strict';
const Service = require('egg').Service;

class allFoodsService extends Service {
	async getAllFoods(){
		let sql = "select name,src,description,kind from food";
		let list = await this.ctx.app.mysql.query(sql);
		return list;
	}
}
module.exports = allFoodsService;