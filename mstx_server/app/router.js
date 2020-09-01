'use strict';


module.exports = app => {
  const { router, controller } = app;
  
  router.post('/login', controller.userc.login);
  router.post('/caidanhome', controller.userc.caidanhome);
  router.post('/foodshome', controller.userc.foodshome);
};
