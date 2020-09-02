'use strict'
const Service = require('egg').Service;

class FoodService extends Service {
	async getFoodSort(){
		let sql = "select class,has from foodSort";
		let list = await this.ctx.app.mysql.query(sql);
		return list;
	}
	async getFoodName(food){
		
		let result = await this.ctx.app.mysql.query(`select *  from menu where id between 1 and 6`);
		return result;
	}
	 async foods() {
	 	let result = await this.ctx.app.mysql.query('select * from food');
	 	return result;
	 }
	 async delfood(id) {
	 	let sql=`delete from food where id=${id}`
	 	let result = await this.ctx.app.mysql.query(sql);
	 	return result;
	 }
}

module.exports = FoodService;