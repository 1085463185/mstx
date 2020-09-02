'use strict';


module.exports = app => {
  const { router, controller } = app;
  
  // 陈坤路由接口
  router.post('/login', controller.user.login);
  router.post('/maglogin', controller.user.maglogin);
  router.post('/zhuce', controller.user.zhuCe);
  router.post('/buzou', controller.buzou.getAllBuZou);
  router.post('/show', controller.buzou.getImg);
  router.post('/zhongjian', controller.buzou.getFood);
  router.post('/food', controller.food.getFoodName);
  router.post("/uploadFile",controller.buzou.uploadFile)//图片地址获取
   router.post("/addCaiPu",controller.buzou.addCaiPu)
   router.post("/addShiCai",controller.houtai.addShiCai)
  // 夏阳路由接口
  // 测试接口
  router.get("/showAllcookbook",controller.cookbook.showAll);
  router.get("/showAllfood",controller.food.showAll);
  router.get("/showMenu",controller.sort.showAll);
  router.get("/showAllMenu",controller.sort.showAllMenu);
  router.get("/getAllFoodsList",controller.allFoods.showAll);
  // 俞正理路由接口
  router.post('/caidanhome', controller.userc.caidanhome);
  router.post('/foodshome', controller.userc.foodshome);
  // 程悦接口制定
  router.get("/showmenuByname",controller.sort.showmenuByname);
  router.get("/showmenuByfood",controller.sort.showmenuByfood);
   router.get("/showfoodByname",controller.sort.showfoodByname);
   // 周鹏接口
   router.get('/adlogin', controller.admin.adlogin);
   router.post('/deluser',controller.admin.deluser);
   router.get('/allfood',controller.food.foods);
   router.post('/delfood',controller.food.delfood);
   router.get('/allmenu',controller.menu.allmenu);
   router.post('/delmenu',controller.menu.delmenu);
 
   
};
