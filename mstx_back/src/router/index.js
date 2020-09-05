import Vue from 'vue';
import VueRouter from 'vue-router';
// import Home from '../views/Home.vue'
import admin from '../views/admin.vue';
import user from '../views/user.vue';
import approve from '../views/approve.vue';
import food from '../views/food.vue';
Vue.use(VueRouter)

  const routes = [
  // {
  //   path: '/',
  //   name: 'Home',
  //   component: Home
  // }
  {
    path: '/admin',
    name: 'Admin',
    component: admin
  },
  {
    path: '/user',
    name: 'user',
    component: user
  },
  {
    path: '/approve',
    name: 'Approve',
    component: approve
  },
  {
    path: '/food',
    name: 'Food',
    component: food
  }
]

const router = new VueRouter({
  mode: 'hash',
  base: process.env.BASE_URL,
  routes
})

export default router
