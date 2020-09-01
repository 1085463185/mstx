const Service = require('egg').Service;

class User extends Service {
    async login(user) {
        var data = await this.app.mysql.query(`select id from user1 where usename = '${user.name}' and pwd='${user.pwd}'`);
        console.log(data);
        return "登录--";
    }
    async caidanhome() {
        let data = await this.app.mysql.query(`select name, src, description from menu`);
        return data;
    }
    async foodshome() {
        let data = await this.app.mysql.query(`select name, src, kind from food`);
        return data;
    }
}

module.exports = User;