'use strict';
const Service = require('egg').Service;

class sortService extends Service {
	
	//根据菜品分类查询
	async getFoodSort(sort){
		let sql = `select * from menu where kind like '%${sort}%'`
		let list = await this.ctx.app.mysql.query(sql);
		return list;
	}
	
	//查询所有菜品
	async getAllMenu(){
		let sql = `select * from menu`
		let list = await this.ctx.app.mysql.query(sql);
		return list;
	}
}

module.exports = sortService;