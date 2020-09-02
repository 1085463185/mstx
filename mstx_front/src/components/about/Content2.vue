<template>
    <div class="content">
        <div class="contentitle">
        </div>
        <div class="pcontent1 pcontent11">
            <p>欢迎来到美食天下。</p>
            <br />
            <p>客服邮箱：help@meishichina.com</p>
            <p>关于美食天下的使用问题、改进建议、或举报不良信息，请给我们邮件。您留下的每个字都被用来改善我们的服务。</p>
            
        </div>

        <div class="contentitle">
            <img src="@/assets/logoo.png">
            <div>广告合作</div>
        </div>
        <div class="pcontent1 pcontent12">
            <p>销售电话：186 0059 0890</p>
            <p>合作邮箱：marketing@meishichina.com</p>
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
        height: 150px;
    }
    .pcontent12 {
        height: 100px;
    }
    .pcontent1>p {
        margin-bottom: 16px;
    }
</style>