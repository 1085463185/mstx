<template>
    <div class="box">
        <banner></banner>
        <div class="aboutzhuti">
            <router-view></router-view>
            <copyright></copyright>
        </div>
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
            copyright: () => import("@/components/about/Copyright.vue")
        },
        methods: {

        }
    }
</script>

<style scoped>
    .box {
        position: relative;
        width: 100%;
        height: auto;
        margin: 0 autos;
    }
    .aboutzhuti {
        position: relative;
        width: 990px;
        height: auto;
        margin: 0 auto;
    }
</style>