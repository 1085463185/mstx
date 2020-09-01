<template>
  <div id="app">
    <div id="nav">
    </div>
    
    <homeheader></homeheader>
    <router-view/>
  </div>
</template>

<script>
  export default {
    components: {
      homeheader:() => import("@/components/myheader.vue"),
    }
  }
</script>

<style lang="scss">



</style>
