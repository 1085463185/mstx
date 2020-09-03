<template>
    <div class="briefitd" @mouseenter="showlr" @mouseleave="nonelr">
        <div class="bitext">
            <div class="bitextbox">
                <div class="bizhuti">百种方法打造美味排骨</div>
                <div class="biyonghu">小美的菜单</div>
                <div class="bineirong">想必每个吃货都爱吃又香又美味的排骨吧，那么今天小编就给大家带来N种美味又可口的排骨做法～</div>
            </div>
            <div class="bitextbox">
                <div class="bizhuti">胡萝卜这样做，孩子超爱吃</div>
                <div class="biyonghu">小美的菜单</div>
                <div class="bineirong">胡萝卜是一种质脆味美、营养丰富的家常蔬菜，被誉为“东方小人参”。具有补中气、健康~</div>
            </div>
            <div class="bitextbox">
                <div class="bizhuti">处暑养生，健脾润燥很重要</div>
                <div class="biyonghu">小美的菜单</div>
                <div class="bineirong">处暑是由热转凉的交替时期，从养生的角度来看，处暑节气适宜进食清热安神的食物，多吃滋阴润燥食物</div>
            </div>
        </div>
        <div v-show="bout" class="brfi">
            <div class="brfilr">
                <img src="@/assets/home/banner/向左.png">
            </div>
            <div class="brfilr">
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
        margin: 0 auto;
    }
    .bitextbox {
        width: 280px;
        height: 100%;
    }
    .bizhuti {
        margin-top: 10px;
        font-size: 20px;
        font-weight: 400;
        margin-bottom: 10px;
    }
    .biyonghu {
        font-size: 12px;
        color: #ccc;
        margin-bottom: 10px;
    }
    .bineirong {
        font-size: 12px;
    }
</style>