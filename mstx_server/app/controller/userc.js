'use strict';

const Controller = require('egg').Controller;
var path=require("path");
var fs=require("fs");

class User extends Controller {
	
    async caidanhome() {
        const {ctx} = this;
        ctx.body = await this.ctx.service.users.caidanhome();
    }
    async foodshome() {
        const {ctx} = this;
        ctx.body = await this.ctx.service.users.foodshome();
    }
}

module.exports = User;