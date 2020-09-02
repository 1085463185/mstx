<template>
    <div class="copyright">
        <div class="about">
            <a class="mstx">美食天下 - 让吃更美好！</a>
            <div class="mstxabout" @click="about">
                <a>菜谱</a> ·
                <a>食材</a> 
            </div>
        </div>
        <div class="safe">
            © 2004-2020 美食天下 保留所有权利 - 京ICP证090244号
        </div>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {

            }
        },
        mounted(){
            console.log(this.$route.query)
        },
        methods: {
            about(e) {
                console.log(e.target.innerHTML.trim());
                var path="";
                switch(e.target.innerHTML.trim()) {
                    case "菜谱":
                        path="/recip";
                        break;
                    case "食材":
                        path="/food";
                        break;
                    default:
                        return;
                }
                if(decodeURI(this.$route.fullPath) == path) {
                    // 重复点击相同的按钮，不会push，直接刷新页面
                    window.scrollTo(0,0);
                    this.$router.go(0);
                } else {
                    window.scrollTo(0,0);
                    this.$router.push(path);
                }
            }
        },

    }
</script>

<style scoped>
    .copyright {
        position: relative;
        width: 990px;
        height: 100px;
        color: #666;
        font-size: 12px;
        border-top: 1px solid #ccc;
        padding-top: 20px;
        margin-top: 40px;
    }
    .about {
        width: 100%;
        height: 50px;
    }
    .mstx {
        font-size: 14px;
        color: rgb(255,103,103);
        font-weight: 700;
        cursor: pointer;
    }
    .mstxabout {
        font-size: 12px;
        margin-top: 10px;
    }
    .mstxabout>a {
        cursor: pointer;
    }
    .mstx:hover {
        text-decoration: underline;
    }
    .mstxabout>a:hover {
        color: rgb(255,103,103);
        text-decoration: underline;
    }
    .safe {
        margin-top: 10px;
        width: 100%;
        height: 40px;
    }
</style>