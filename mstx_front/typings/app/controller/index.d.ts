// This file is created by egg-ts-helper@1.25.8
// Do not modify this file!!!!!!!!!

import 'egg';
import ExportUserc = require('../../../app/controller/userc');

declare module 'egg' {
  interface IController {
    userc: ExportUserc;
  }
}
