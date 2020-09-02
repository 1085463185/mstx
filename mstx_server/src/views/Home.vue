<template>
  <div class="home">
    
    <!-- 头部导航 -->
    <myheader></myheader>

    <!-- banner组件 -->
    <banner></banner>

    <!-- 菜品简介 -->
    <briefitd></briefitd>

    <!-- 推荐菜单 -->
    <recommendedmenu></recommendedmenu>

    <!-- 推荐食材 -->
    <foodingredients></foodingredients>

    <!-- 话题 -->
    <topic></topic>

    <!-- 版权 -->
    <copyright></copyright>
  </div>
</template>

<script>
  export default {
    name: 'Home',
    components: {
      myheader:() => import("@/components/home/homeHeader.vue"),
      banner: () => import( "@/components/home/Banner.vue"),
      briefitd: () => import("@/components/home/Briefitd.vue"),
      recommendedmenu: () => import("@/components/home/Recommendedmenu.vue"),
      foodingredients: () => import("@/components/home/Foodingredients.vue"),
      topic: () => import("@/components/home/Topic.vue"),
      copyright: () => import("@/components/home/Copyright.vue"),
    }
  }
</script>

<style scoped>
  .home {
    position: relative;
    width: 990px;
    height: auto;
    margin: auto;
  }
</style>
