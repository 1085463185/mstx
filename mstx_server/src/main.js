import Vue from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
import axios from 'axios'
import totop from "@/components/toTop/toTop.vue"
// 全局组件引入处


import myheader from "@/components/myheader.vue"
import btinform from "@/components/Bt_inform.vue"
Vue.component("myheader",myheader)
// 底部全局组件
Vue.component("btinform",btinform)
// 胡萝卜回到顶部
Vue.component("totop",totop)




Vue.prototype.$http=axios;

Vue.config.productionTip = false;

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
