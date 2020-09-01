
const Service = require('egg').Service;

class UserService extends Service {
  async login(user) {
	  console.log(user)
	var result=await this.app.mysql.query(`select *  from user1 where usename=${user.params.tel}`);
	if(result.length<1){
		return {
			status:1,
			msg:"用户不存在"
		}
	}else{
		
		if(user.params.pwd==result[0].pwd){
			return {
				status:0,
				msg:"恭喜您，登陆成功"
			}
		}else{
			return {
				status:1,
				msg:"密码错误"
			}
		}
	}

  }
  async maglogin(user) {
  	  console.log(user)
  	var result=await this.app.mysql.query(`select *  from user2 where usename=${user.params.tel}`);
  	if(result.length<1){
  		return {
  			status:1,
  			msg:"用户不存在"
  		}
  	}else{
  		
  		if(user.params.pwd==result[0].pwd){
  			return {
  				status:0,
  				msg:"恭喜您，登陆成功"
  			}
  		}else{
  			return {
  				status:1,
  				msg:"密码错误"
  			}
  		}
  	}
  }
   async zhuCe(user) {
	   console.log(user)
	   
  var result=await this.app.mysql.query(`insert into user1(usename,pwd,name)values(${user.tel},${user.pwd},"${user.name}")`);
    
		return{
			 status:0,
			 msg:"恭喜您，注册成功" 
		}
	
  }
}

module.exports = UserService;