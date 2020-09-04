<template>
  <div id="app">
    <div id="nav">
    </div>
    
    <myheader></myheader>
    <router-view/>
    <!-- <totop></totop> -->
  </div>
</template>

<script>
  export default {
    components: {
      myheader:() => import("@/components/myheader.vue"),
    }
  }
</script>

<style lang="scss">



</style>
