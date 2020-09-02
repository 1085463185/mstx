const Service = require('egg').Service;
const path=require("path")
const fs=require("fs")

class BuZouService extends Service {
  async getAllBuZou(buzou) {
	  
	var result=await this.app.mysql.query(`select *  from step where menuId=${buzou.cid}`);
	console.log(`select *  from step where menuId=${buzou.cid}`)
	console.log("------+++++")
	console.log(result)
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
		// 获取发布的菜品图片
		async uploadGoods() {
			const file = this.ctx.request.files[0];
			console.log("file------------")
			console.log(file)
			const toFileName = '/public/upload/'+Date.now()+file.filename;
			let to = path.dirname(__dirname)+toFileName;
			await fs.copyFileSync(file.filepath, to);
			//删除临时文件
			await fs.unlinkSync(file.filepath);
			
			//上传文件的网络访问 url
			const newUrl = "http://localhost:8000"+toFileName;
			console.log(newUrl)
			return newUrl
			// let name = this.ctx.request.body.name;
			// let sex = this.ctx.request.body.sex;
			// let description = this.ctx.request.body.description;
			// const sql = "insert into menu(name, src, kind,description)values(?, ?, ?, ?)";
			// let r = await this.ctx.app.mysql.query(sql, [name, newUrl,sex,descriptions]);
			// if(r.affectedRows==1) {
			// 	return newUrl;
			// }else {
			// 	return "http://localhost:7001/public/upload/e.png";
			// }
		}
		async addCaiPu(caipu) {
		  
		   let result = await this.ctx.app.mysql.query(`insert into menu(name, src, kind,description)values("${caipu.name}","${caipu.src}", "${caipu.sex}", "${caipu.desc}")`);
		    if(result.affectedRows==1) {
		    	return {
					status:0,
					msg:"发布成功"
				};
		    }else {
		    	return {
		    		status:1,
		    		msg:"发布失败"
		    	};
		    }
		}
}

module.exports = BuZouService;