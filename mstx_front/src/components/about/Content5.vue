<template>
    <div class="content">
        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>推荐阅读</div>
        </div>
        <div class="pcontent1 pcontent11">
            
            
        </div>

        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>菜谱</div>
        </div>
        <div class="pcontent1 pcontent12">
            
        </div>

        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>话题</div>
        </div>
        <div class="pcontent1 pcontent13">
            
        </div>

        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>食材</div>
        </div>
        <div class="pcontent1 pcontent13">
            
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