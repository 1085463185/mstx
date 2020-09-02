const Service = require('egg').Service;

class MenuService extends Service {
	async allmenu() {
		let result = await this.ctx.app.mysql.query('select * from menu');
		return result;
	}
	async delmenu(id) {
		let sql=`delete from menu where id=${id}`
		let result = await this.ctx.app.mysql.query(sql);
		return result;
	}
}
module.exports = MenuService;
