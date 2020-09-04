const Service = require('egg').Service;

class PingLunService extends Service {
	async getAllPingLun() {
		let result = await this.ctx.app.mysql.query('select * from pinglun');
	   let result1=[]
	   console.log(result)
	  for(let i=0;i<result.length;i++){
		  result1.push(result[i].uid)
		  
	  }
	  console.log(result1)
	  let result2 = await this.ctx.app.mysql.query(`select * from user1 where id in(${result1.toString()})`)
		console.log(result2)
		// for(let i=0;i<result.length;i++){
		// 	result[i].name= result2[i].name
		// 	result[i].src = result2[i%result.length].headimg
		// }
		let obj={
			pinglun:result,
			user:result2
		}
		return obj;
	}
	// 根据电话号码查询登录用户id
	async getUser(use) {
		let result = await this.ctx.app.mysql.query(`select * from user1 where usename=${use.tel}`);
		return result
	}
	// 添加评论数据
	async addPingLun(pl) {
		let result = await this.ctx.app.mysql.query(`insert into pinglun(des,img,name,uid)values("${pl.des}","${pl.src}","${pl.kind}",${pl.uid})`);
		if(result.affectedRows==1) {
			return {
				status:0,
				msg:"添加成功"
			};
		}else {
			return {
				status:1,
				msg:"添加失败"
			};
		}
	}
	
	
}
module.exports = PingLunService;