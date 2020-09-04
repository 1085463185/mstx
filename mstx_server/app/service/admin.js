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
	async addadmin(admin) {
		  
		var result=await this.app.mysql.query(`insert into user2(usename,pwd,headimg,lable)values('${admin.name}',${admin.pwd},'${admin.src}','${admin.label}')`);
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
	// 修改管理员信息
	async updateadmin(admin) {
		  if(admin.sta==0){
			  var result=await this.app.mysql.query(`update user2 set usename='${admin.name}' where id= ${admin.id}`);
		  }else if(admin.sta==1){
			   var result=await this.app.mysql.query(`update user2 set pwd='${admin.pwd}' where id= ${admin.id}`);
		  }else if(admin.sta==2){
			  var result=await this.app.mysql.query(`update user2 set headimg=${admin.src} where id= ${admin.id}`);
		  }else if(admin.sta==3){
			  var result=await this.app.mysql.query(`update user1 set name='${admin.name}',label='${admin.label}',headimg='${admin.src}' where id= ${admin.id}`);
		  }
		
		if(result.affectedRows==1) {
			return {
				status:0,
				msg:"修改成功"
			};
		}else {
			return {
				status:1,
				msg:"修改失败"
			};
		}
	}
	async getadmin(admin) {
		// 获取管理信息
		  if(admin.sta==0){
			  var result=await this.app.mysql.query(`select * from user2 where id=${admin.id}`);
		  }else if(admin.sta==1){
			  // 获取用户信息
			  var result=await this.app.mysql.query(`select * from user1 where id=${admin.id}`);
		  }
		
		   return result
		}
	
	
}
module.exports = AdminService;
