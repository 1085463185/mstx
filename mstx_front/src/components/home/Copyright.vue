<template>
    <div class="copyright">
        <div class="about">
            <a class="mstx">美食天下 - 让吃更美好！</a>
            <div class="mstxabout" @click="about">
                <a>关于我们</a> ·
                <a>联系我们</a> ·
                <a>加入我们</a> ·
                <a>服务声明</a> ·
                <a>网站地图</a>
            </div>
        </div>
        <div class="friend">
            <div>友情连接：</div>愉悦妈妈 自然乐 爱奇艺生活 中国美食网 太平洋亲子网 美食杰 红餐网 妈妈网 宝宝网 6296网址大全 中国地图 三九养生堂 饭菜网 波奇网 慧聪网 企业服务平台 农经网 885财经 餐饮杰
        </div>
        <div class="safe">
            版权所有 © 2004-2020 美食天下 保留所有权利 -  京公网安备 11010502031041号 / 京ICP证090244号 / 京ICP备10020153号
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
            console.log(this.$route)
        },
        methods: {
            about(e) {
                console.log(e.target.innerHTML.trim());
                var path="";
                switch(e.target.innerHTML.trim()) {
                    case "关于我们":
                        path = "/about/content1?id=0";
                        break;
                    case "联系我们":
                        path = "/about/content2?id=1";
                        break;
                    case "加入我们":
                        path = "/about/content3?id=2";
                        break;
                    case "服务声明":
                        path = "/about/content4?id=3";
                        break;
                    case "网站地图":
                        path = "/about/content5?id=4";
                        break;
                    default:
                        return;
                }
                if(decodeURI(this.$route.fullPath) == path) {
                    // 重复点击相同的按钮，不会push，直接刷新页面
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
        height: 150px;
        color: #666;
        font-size: 12px;
        border-top: 1px solid #ccc;
        padding-top: 20px;
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
    .friend {
        margin-top: 10px;
        width: 100%;
        height: 40px;
    }
    .friend>div {
        color: black;
        font-weight: 700;
    }
    .safe {
        margin-top: 10px;
        width: 100%;
        height: 40px;
    }
</style>