// This file is created by egg-ts-helper@1.25.8
// Do not modify this file!!!!!!!!!

import 'egg';
type AnyClass = new (...args: any[]) => any;
type AnyFunc<T = any> = (...args: any[]) => T;
type CanExportFunc = AnyFunc<Promise<any>> | AnyFunc<IterableIterator<any>>;
type AutoInstanceType<T, U = T extends CanExportFunc ? T : T extends AnyFunc ? ReturnType<T> : T> = U extends AnyClass ? InstanceType<U> : U;
import ExportAdmin = require('../../../app/service/admin');
import ExportAllFoods = require('../../../app/service/allFoods');
import ExportBuzou = require('../../../app/service/buzou');
import ExportCookbook = require('../../../app/service/cookbook');
import ExportFood = require('../../../app/service/food');
import ExportHoutai = require('../../../app/service/houtai');
import ExportMenu = require('../../../app/service/menu');
import ExportPinglun = require('../../../app/service/pinglun');
import ExportSort = require('../../../app/service/sort');
import ExportUser = require('../../../app/service/user');
import ExportUsers = require('../../../app/service/users');

declare module 'egg' {
  interface IService {
    admin: AutoInstanceType<typeof ExportAdmin>;
    allFoods: AutoInstanceType<typeof ExportAllFoods>;
    buzou: AutoInstanceType<typeof ExportBuzou>;
    cookbook: AutoInstanceType<typeof ExportCookbook>;
    food: AutoInstanceType<typeof ExportFood>;
    houtai: AutoInstanceType<typeof ExportHoutai>;
    menu: AutoInstanceType<typeof ExportMenu>;
    pinglun: AutoInstanceType<typeof ExportPinglun>;
    sort: AutoInstanceType<typeof ExportSort>;
    user: AutoInstanceType<typeof ExportUser>;
    users: AutoInstanceType<typeof ExportUsers>;
  }
}
