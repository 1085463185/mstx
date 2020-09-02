<template>
    <div class="box">
        <banner></banner>
        <content></content>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {

            }
        },
        components: {
            banner: () => import("@/components/about/Banner.vue"),
            content: () => import("@/components/about/Content.vue"),
        },
        methods: {

        }
    }
</script>

<style scoped>
    .box {
        position: relative;
        width: 100%;
        height: 800px;
        margin: 0 autos;
    }
</style>