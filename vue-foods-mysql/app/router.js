'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
	const {
		router,
		controller
	} = app;

    // 陈坤路由接口
	router.post('/login', controller.user.login);
	router.post('/maglogin', controller.user.maglogin);
	router.post('/zhuce', controller.user.zhuCe);
	router.post('/buzou', controller.buzou.getAllBuZou);
	router.post('/show', controller.buzou.getImg);
	router.post('/zhongjian', controller.buzou.getFood);
	router.post('/food', controller.food.getFoodName);
	// 夏阳路由接口
	//测试接口
	router.get("/showAllcookbook",controller.cookbook.showAll);
	router.get("/showAllfood",controller.food.showAll);
	router.get("/showMenu",controller.sort.showAll);
	router.get("/showAllMenu",controller.sort.showAllMenu);
	router.get("/getAllFoodsList",controller.allFoods.showAll);
	////登录接口制定
	//查询所有商品
	 
	//分页查询商品的接口
	
	//按部门查询部门人员
};
