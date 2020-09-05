// This file is created by egg-ts-helper@1.25.8
// Do not modify this file!!!!!!!!!

import 'egg';
import ExportAdmin = require('../../../app/controller/admin');
import ExportAllFoods = require('../../../app/controller/allFoods');
import ExportBuzou = require('../../../app/controller/buzou');
import ExportCookbook = require('../../../app/controller/cookbook');
import ExportFood = require('../../../app/controller/food');
import ExportHoutai = require('../../../app/controller/houtai');
import ExportMenu = require('../../../app/controller/menu');
import ExportPinglun = require('../../../app/controller/pinglun');
import ExportSort = require('../../../app/controller/sort');
import ExportUser = require('../../../app/controller/user');
import ExportUserc = require('../../../app/controller/userc');

declare module 'egg' {
  interface IController {
    admin: ExportAdmin;
    allFoods: ExportAllFoods;
    buzou: ExportBuzou;
    cookbook: ExportCookbook;
    food: ExportFood;
    houtai: ExportHoutai;
    menu: ExportMenu;
    pinglun: ExportPinglun;
    sort: ExportSort;
    user: ExportUser;
    userc: ExportUserc;
  }
}
