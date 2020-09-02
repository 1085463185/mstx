const Service = require('egg').Service;

class AdminService extends Service {
	async adlogin(type) {
		let sql='select * from user1 ';
		var result = await this.ctx.app.mysql.query(sql);
		return result;
		
	}
	async deluser(id) {
		let sql=`delete from user1 where id=${id}`;
		var result = await this.ctx.app.mysql.query(sql);
		
		return result;
		
	}
}
module.exports = AdminService;
