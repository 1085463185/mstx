'use strict'
const Service = require('egg').Service;

class FoodService extends Service {
	async addShiCai(shicai){
		console.log(shicai)
		let result = await this.ctx.app.mysql.query(`insert into food(name, src, kind,description)values("${shicai.name}","${shicai.src}"," ${shicai.kind}", "${shicai.des}")`);
		    if(result.affectedRows==1) {
		    	return {
					status:0,
					msg:"成功"
				};
		    }else {
		    	return {
		    		status:1,
		    		msg:"失败"
		    	};
		    }
		}
	
	
}

module.exports = FoodService;