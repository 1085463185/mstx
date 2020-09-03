<template>
  <div>
    <div class="container">
      <searchnav></searchnav>
      <searchrec></searchrec>
      <winbotm></winbotm>
    </div>
    <!-- 引入底部关于 -->
    <btinform class="bottom"></btinform>
  </div>
</template>

<script>
import searchnav from "@/components/search/searchnav.vue";
import searchrec from "@/components/search/searchrec.vue";
import winbotm from "@/components/search/winbotm.vue";
export default {
  components: {
    searchnav,
    searchrec,
    winbotm
  }
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
}
.container {
  width: 1000px;
  margin: 50px auto;
}
.bottom{
  position: absolute;
  bottom: 0;
}
</style>
