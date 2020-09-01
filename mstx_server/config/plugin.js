'use strict';

/** @type Egg.EggPlugin */
module.exports = {
  // had enabled by egg
  // static: {
  //   enable: true,
  // }
  
  
  //cnpm i --save egg-mysql
  mysql:{
	  enable:true,
	  package:"egg-mysql"
  },
  
  
  //cnpm i --save egg-cors  //解决前端跨域问题
  cors:{
    enable: true,
    package: 'egg-cors',
  }

  
  
};
