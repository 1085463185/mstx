<template>
    <div class="briefitd" @mouseenter="showlr" @mouseleave="nonelr">
        <div class="bitext">
            <div class="bitextbox">
                <div class="bizhuti"></div>
                <div class="biyonghu"></div>
                <div class="bineirong"></div>
            </div>
            <div class="bitextbox">
                <div class="bizhuti"></div>
                <div class="biyonghu"></div>
                <div class="bineirong"></div>
            </div>
            <div class="bitextbox">
                <div class="bizhuti"></div>
                <div class="biyonghu"></div>
                <div class="bineirong"></div>
            </div>
        </div>
        <div v-show="bout" class="brfi">
            <div class="brfilr" @click="huoqunew">
                <img src="@/assets/home/banner/向左.png">
            </div>
            <div class="brfilr" @click="huoqunew">
                <img src="@/assets/home/banner/向右.png">
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {
                bout: false,
            }
        },
        created() {

        },
        methods: {
            showlr() {
                this.bout = true;
            },
            nonelr() {
                this.bout = false;
            },
            huoqunew() {
                console.log("ajax请求");
            },
        }
    }
</script>

<style scoped>
    .briefitd {
        position: relative;
        margin-top: 20px;
        width: 990px;
        height: 150px;
        background-color: rgb(238,238,238);
        padding: 15px 10px;
        box-sizing: border-box;
    }
    .brfi{
        position: absolute;
        left: 10px;
        top: 50%;
        width: 970px;
        height: auto;
        transform: translateY(-50%);
        display: flex;
        justify-content: space-between;
    }
    .brfilr{
        padding: 5px;
        width: 30px;
        height: 30px;
        border-radius: 50px;
        box-sizing: border-box;
    }
    .brfilr>img {
        width: 20px;
        height: 20px;
    }
    .brfilr:hover {
        background-color: rgb(166,166,166);
    }
    .bitext {
        display: flex;
        justify-content: space-between;
        width: 900px;
        height: 120px;
        background-color: #ccc;
        margin: 0 auto;
    }
    .bitextbox {
        width: 280px;
        height: 100%;
        background-color: #000;
    }
    .bizhuti {
        font-size: 20px;
        font-weight: 400;
    }
    .biyonghu {
        font-size: 12px;
        color: #ccc;
    }
    .bineirong {
        font-size: 12px;
    }
</style>