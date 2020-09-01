const Service = require('egg').Service;

class BuZouService extends Service {
  async getAllBuZou(buzou) {
	  
	var result=await this.app.mysql.query(`select *  from step where menuId=${buzou.cid}`);
	return result;
	}
	async getImg(buzou) {
		  
		var result=await this.app.mysql.query(`select *  from menu where id=${buzou.cid}`);
		return result;
		}
	async getFood(buzou) {
		  var result2=[]
		  var result3=[]
		var result=await this.app.mysql.query(`select *  from zhongjian where menuid=${buzou.cid}`);
		for(var i = 0;i<result.length;i++){
			result2.push(result[i].foodid)
			result3.push(result[i].large)
		}
		var result1=await this.app.mysql.query(`select *  from food where id in(${result2.toString()})`);
		console.log(result2)
		for(var i = 0;i<result1.length;i++){
			result1[i].large=result3[i]
		}
		var obj={
			
			food:result1
		}
		return obj;
		}
}

module.exports = BuZouService;