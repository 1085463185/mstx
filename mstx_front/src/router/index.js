import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
Vue.use(VueRouter)

// 陈坤路由
// import Home from '../views/Home.vue'
import login from  "../components/login/login.vue"
import userlogin from "../components/login/userlogin.vue"
import zhuce from "../components/login/userzhuce.vue"
import buzou from "../components/buzouye/buzou.vue"
// 程粤路由
import recip from "@/views/caipu/recip.vue"
import search from "@/views/sousuo/search.vue"
// 引入菜谱内部的子组件
import caipufenlei from "@/components/caipu/caipufenlei.vue"
import caipulist from "@/components/caipu/caipulist.vue"
import caipuhome from "@/components/caipu/caipuhome.vue"
import caidan from "@/components/caipu/caidan.vue"
import food from "../views/shicai/food.vue"

  const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: () => import("@/views/about/About.vue"),
  },
  {
    path: '/food',
    name: 'Food',
    component:food
  },

  // 陈坤路由
  {
    path:"/login" ,
    name:"self",
    component:login,
    redirect:"/login/user",
    children:[{path:"user",component:userlogin},{path:"zhuce",component:zhuce}]
  },
  {
    path: '/buzou',
    name: 'buzou',
    component: buzou
  },
  // 邓志涵路由
  {
    path: '/community',
    component: () => import("@/views/shequ/Shequ")
  },
  // 程粤路由
  {
    path: "/recip", component: recip,
    // redirect: "/recip/caipulist",
    children: [
    
      {
        path: "caipufenlei",
        component: caipufenlei,
      },
      {
        path: "caipuhome",
        component: caipuhome,
        children:[
          {
            path: "caipulist",
            component: caipulist,
          }
        ]
      },
      {
        path: "caidan",
        component: caidan,

      },
    
    ],

  },
  {
    path: '/search',
    component:search
  },
  // {
  //   path: '/recip',
  //   name: 'Recip',
  //   component: () => import("@/views/caipu/recip.vue")
  // },{
  //   path: '/food',
  //   name: 'Food',
  //   component: () => import("@/views/food.vue")
  // },{
  //   path: '/community',
  //   name: 'Community',
  //   component: () => import("@/views/shequ/community.vue")
  // },{
  //   path: '/search',
  //   name: 'Search',
  //   component: () => import("@/views/sousuo/search.vue")
  // }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router;
