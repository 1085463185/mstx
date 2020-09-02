<template>
    <div class="content">
        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>用户协议</div>
        </div>
        <div class="pcontent1 pcontent11">
            <p>巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉~~~</p>
            
        </div>

        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>版权声明</div>
        </div>
        <div class="pcontent1 pcontent12">
            <p>巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉~~~</p>
        </div>

        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>免责声明</div>
        </div>
        <div class="pcontent1 pcontent13">
            <p>阿巴巴巴~~~</p>
        </div>

        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>附则</div>
        </div>
        <div class="pcontent1 pcontent13">
            <p>对版权声明、免责声明、用户协议的解释、修改及更新权均属于美食天下所有。</p>
        </div>
    </div>
    
</template>

<script>
    export default {
        
    }
</script>

<style scoped>
    /* .content{
        width: 990px;

    } */
    .contentitle {
        width: auto;
        height: 20px;
        margin-top: 80px;
        margin-bottom: 20px;
        font-size: 20px;
        color: rgb(255,101,101);
        display: flex;
        justify-content: left;
        line-height: 20px;
        box-sizing: border-box;
    }
    .contentitle>img {
        width: 20px;
        height: 20px;
        margin-right: 10px;
    }
    .pcontent1 {
        width: 100%;
        font-size: 18px;
    }
    .pcontent11 {
        height: 20px;
    }
    .pcontent12 {
        height: 20px;
    }
    .pcontent13 {
        height: 20px;
    }
    .pcontent1>p {
        margin-bottom: 16px;
    }
</style>