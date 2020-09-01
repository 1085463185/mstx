/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
	/**
	 * built-in config
	 * @type {Egg.EggAppConfig}
	 **/
	const config = exports = {};

	// use for cookie sign key, should change to your own and keep security
	config.keys = appInfo.name + '_1591599511708_2672';

	// add your middleware config here
	config.middleware = [];

	config.security = {
		csrf: {
			enable: false,
			ignoreJSON: true
		}
	}



	config.mysql = {
		client: {
			host: "localhost",
			port: "3306",
			user: "root",
			password: "123",
			database: "vue"
		}
	}

	config.cluster = {
		listen: {
			path: '',
			// hostname:"localhost",
			port: 8000
			// ,
			// hostname: 'admin.jianmian.com'//默认localhost和ip地址,上线时用0.0.0.0
		}
	}

	//cnpm i --save egg-cors
	//plugin.js  里做配置
	// 跨域的配置
	config.cors = {
	  // origin: 'http://localhost'
	  // ,allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH'
	  // // 允许跨域携带凭证
	  // ,credentials: true
	  
	  origin: '*'
	  ,allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH'
	  
	};
	
	
	config.multipart = {
	  mode: 'file'
	};


	// add your user config here
	const userConfig = {
		// myAppName: 'egg',
	};

	return {
		...config,
		...userConfig,
	};
};
