<template>

  <div class="caipu">
    <recipheader></recipheader>
    <btinform></btinform>
  </div>
</template>
<script>

import recipheader from "./recipheader.vue";

export default {
  components: {
    recipheader,
    btinform: () => import("@/components/shequ/btinform.vue"),
  },
}
</script>
<style scoped>
</style>

