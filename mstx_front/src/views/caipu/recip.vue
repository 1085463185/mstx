<template>

  <div class="caipu">
    <recipheader></recipheader>
    <btinform class="bottom"></btinform>
  </div>
</template>
<script>

import recipheader from "./recipheader.vue";

export default {
  components: {
    recipheader
  },
}
</script>
<style scoped>
    .bottom{
      position: relative;
      bottom: 0;
    }
</style>

