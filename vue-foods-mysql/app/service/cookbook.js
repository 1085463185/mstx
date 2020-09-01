'use strict';
const Service = require('egg').Service;

class FoodService extends Service {
	async getFoodSort(){
		let sql = "select className,has from cbSort";
		let list = await this.ctx.app.mysql.query(sql);
		return list;
	}
}

module.exports = FoodService;