<template>
    <div class="banner">
        <div class="aboutimg">
            <img src="@/assets/about/banner.png">
        </div>
        <div class="label">
            <button type="button">关于我们</button>
            <button type="button">联系我们</button>
            <button type="button">加入我们</button>
            <button type="button">服务声明</button>
            <button type="button">网站地图</button>
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style scoped> 
    .banner {
        position: relative;
        width: 100%;
        height: 500px;
    }
    .aboutimg {
        position: relative;
        width: 100%;
        height: 500px;
        overflow: hidden;
    }
    .aboutimg>img {
        width: 100%;
        height: 800px;
    }
    .label {
        position: relative;
        width: 100%;
        height: 40px;
        background-color: rgb(205,148,77);
        display: flex;
        justify-content: center;
    }
    .label>button {
        width: 150px;
        height: 100%;
        border: 0;
        outline: none;
        background-color: rgb(205,148,77);
        color: white;
        font-size: 18px;
        box-sizing: border-box;
    }
    .label>button:hover {
        background-color: rgb(255,101,101);
        border-bottom: 3px solid rgb(255, 1, 1);
    }
</style>