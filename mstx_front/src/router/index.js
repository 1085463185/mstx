import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: () => import("@/views/about/About.vue")
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

export default router
