<template>
    <div class="banner">
        <div class="aboutimg">
            <img src="@/assets/about/banner.png">
        </div>
        <div class="label" @click="aboutrouter" @mousedown="aboutbanye">
            <button type="button" :class="benye[0]">关于我们</button>
            <button type="button" :class="benye[1]">联系我们</button>
            <button type="button" :class="benye[2]">加入我们</button>
            <button type="button" :class="benye[3]">服务声明</button>
            <button type="button" :class="benye[4]">网站地图</button>
        </div>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {
                benye: ["","","","",""],
            }
        },
        created() {
            console.log(this.$route.query.id);
            for(let i = 0; i < 5; i++) {
                if(this.$route.query.id == i) {
                    this.benye[i] = "benye";
                } else {
                    this.benye[i] = "";
                }
            }
        },
        methods: {
            aboutbanye(e) {
                var path;
                this.benye=["","","","",""]
                switch(e.target.innerHTML.trim()) {
                    case "关于我们":
                        this.benye[0] = "benye"; 
                        break;
                    case "联系我们":
                        this.benye[1] = "benye";
                        break;
                    case "加入我们":
                        this.benye[2] = "benye";
                        break;
                    case "服务声明":
                        this.benye[3] = "benye";
                        break;
                    case "网站地图":
                        this.benye[4] = "benye";
                        break;
                    default:
                        return;
                }
            },
            aboutrouter(e) {
                console.log(e.target.innerHTML.trim());
                var path;
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
                if(decodeURI(this.$route.fullPath) === path) {
                    this.$router.go(0); 
                } else {
                    this.$router.push(path);
                }
            }
        }
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
        width: 198px;
        height: 100%;
        border: 0;
        outline: none;
        background-color: rgb(205,148,77);
        color: white;
        font-size: 18px;
        box-sizing: border-box;
        cursor: pointer;
    }
    .label .benye {
        background-color: rgb(255,101,101);
        border-bottom: 3px solid rgb(255, 0, 0);
    }
    .label>button.on {
        background-color: rgb(255,101,101);
        border-bottom: 3px solid rgb(255, 0, 0);
    }
    .label>button:hover {
        background-color: rgb(255,101,101);
    }
</style>