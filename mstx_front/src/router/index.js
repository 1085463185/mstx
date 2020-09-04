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
import caipufenleiList from "@/components/caipu/caipufenleiList.vue"
// 引入个人中心
import gerenzx from "@/components/login/gerenzx.vue"


// 食材
import foodsort from "../views/shicai/foodSort.vue"
import shicailist from "@/components/shicai/shicailist.vue"

// 邓智涵社区  话题
import Shequ from '@/views/shequ/Shequ.vue'
import Huati from '../views/huati/Huati.vue'
import publish from '@/components/huati/publish.vue'


  const routes = [
    // 主页
  {
    path: '/',
    name: 'Home',
    component: Home,
    
  },
  {
		path: '/shequ',
		name: 'Shequ',
		component: Shequ
	},
	{
		path: '/huati',
		name: "Huati",
		component: Huati
	},
	{
		path: '/publish',
		name: publish,
		component: publish
	},

  //关于我们
  {
    path: '/about',
    name: 'About',
    component: () => import("@/views/about/About.vue"),
    children: [{
      path: "content1",
      name: "content1",
      component: () => import("@/components/about/Content1.vue")
    },
    {
      path: "content2",
      name: "content2",
      component: () => import("@/components/about/Content2.vue")
    },{
      path: "content3",
      name: "content3",
      component: () => import("@/components/about/Content3.vue")
    },{
      path: "content4",
      name: "content4",
      component: () => import("@/components/about/Content4.vue")
    },{
      path: "content5",
      name: "content5",
      component: () => import("@/components/about/Content5.vue")
    },]
  },
  // 菜品
  // {
    // path: '/Varietyofdishes',
    // name: 'Varietyod',
    // component: () => import("@/views/caipulei/Varietyofdishes.vue"),
  // },

  // 食材分类
  {
    path: '/food',
    name: 'Food',
    component:foodsort
  },
  {
    // 食材清单
    path: '/shicailist',
    name: 'shicailist',
    component: shicailist,
  },
  // 陈坤路由
  // 登录
  {
    path:"/login" ,
    name:"self",
    component:login,
    redirect:"/login/user",
    children:[{path:"user",component:userlogin},{path:"sign",component:zhuce}]
  },
  // 步骤
  {
    path: '/buzou',
    name: 'buzou',
    component: buzou
  },
  // 邓志涵路由
  // 社区
  {
    path: '/community',
    component: () => import("@/views/shequ/Shequ")
  },
  // 程粤路由
  // 菜谱
  {
    path: "/recip", component: recip,
    // redirect: "/recip/caipulist",
    children: [
    
      {
        path: "caipufenlei",
        component: caipufenlei,
      },
      {
        path: "caipufenleiList",
        component: caipufenleiList,
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
  // 搜索
  {
    path: '/search',
    component:search
  },
  {
    path: '/gerenzx',
    component:gerenzx
  }
 
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// 路由守卫，不要删啊！
router.beforeEach((to, from, next) => {
  if (to.path == "/recip") {
    next("/recip/caipuhome/caipulist?kind=热菜")
  } else {
    next()
  }

})
router.beforeEach((to, from, next) => {
  if (to.path == "/recip/caipuhome") {
    next("/recip/caipuhome/caipulist?kind=热菜")
  } else {
    next()
  }

})

export default router;
