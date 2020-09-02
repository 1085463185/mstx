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
	// 根据输入字段进行菜谱查询
	async showmenuByname(menu){
		// console.log(menu)
		let result = await this.ctx.app.mysql.query(`select * from menu where name like '%${menu.keyword}%'`);
		console.log(result)
		return result;
	}
	// 根据食材查询菜谱
	async showmenuByfood(fo){
		console.log(fo)
		let result = await this.ctx.app.mysql.query(`select * from food where name ='${fo.foodname}'`);
		console.log(result)
		if(result.length==1){
			console.log("--------")
			var result2=[]
			var result1 = await this.ctx.app.mysql.query(`select * from zhongjian where foodid ='${result[0].id}'`)
			console.log(result1)
			for(let i = 0;i<result1.length;i++){
				result2.push(result1[i].menuid)
			}
			console.log(result2)
			var result3 = await this.ctx.app.mysql.query(`select * from menu where id in(${result2.toString()})`)
			var obj={
				menu:result3
			}
			return obj;
		}else{
			return {
				msg:"数据获取有误"
			}
		}
	}
	async showfoodByname(fo){
		let result = await this.ctx.app.mysql.query(`select * from food where name ='${fo.foodname}'`);
		return result;
	}

}

module.exports = sortService;