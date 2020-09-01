<template>
    <div class="recommendedmenu" v-cloak>
        <div class="menu">
            <div class="menutheme">
                <div :class="themest1" @click="mtheme(0)">新秀菜谱</div>
                <div :class="themest2" @click="mtheme(1)">一周热门</div>
                <div :class="themest3" @click="mtheme(2)">最受欢迎的家常菜</div>
            </div>
            <div class="menuclass" @click="tother">
                <a>热菜</a>
                <a>凉菜</a>
                <a>汤羹</a>
                <a>主食</a>
                <a>小吃</a>
                <a>西餐</a>
                <a>菜谱首页</a>
            </div>
        </div>
        <div class="caidan">
            <div v-for="(item, index) in caidan" :key="index">
                <div class="caidan_juti">
                    <img :src="item.src">
                    <div class="caiming">{{item.name}}</div>
                    <div class="caimiaosu">{{item.description}}</div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import axios from "axios";
    export default {
        data: function() {
            return {
                themest1:"themest",
                themest2:"",
                themest3:"",
                caidan: [],
            }
        },
        created() {
            axios.post("http://localhost:8000/caidanhome", {}).then(res => {
                for(let i = 0; i < 8; i++) {
                    this.caidan.push(res.data[i]);
                }
                console.log("caidan",this.caidan);
            }).catch(e => {
                console.log("ajax请求失败");
            })
        },
        methods: {
            mtheme(omt) {
                if(omt === 0) {
                    this.themest1="themest";
                    this.themest2 = "";
                    this.themest3 = "";
                }else if(omt === 1){
                    this.themest2 ="themest";
                    this.themest1 = "";
                    this.themest3 = "";
                }else if(omt === 2){
                    this.themest3 ="themest";
                    this.themest1 = "";
                    this.themest2 = "";
                }
            },
            tother(e) {
                var path;
                switch (e.target.innerHTML.trim()) {
                    case "热菜":
                        path:"";
                        break;
                    case "凉菜":
                        path:"";
                        break;
                    case "汤羹":
                        path:"";
                        break;
                    case "主食":
                        path:"";
                        break;
                    case "小吃":
                        path:"";
                        break;
                    case "西餐":
                        path:"";
                        break;
                    case "菜谱首页":
                        path:"";
                        break;
                    default:
                        return;
                }
                if (decodeURI(this.$route.fullPath) === path) {
                    // 重复点击相同的按钮，不会push，直接刷新页面
                    this.$router.go(0);
                } else {
                    this.$router.push(path);
                }
            },
        }
    }
</script>

<style scoped>
    .recommendedmenu {
        position: relative;
        width: 990px;
        height: 700px;
        margin-top: 20px;
    }
    .menu {
        position: absolute;
        top: 0px;
        left: 0px;
        width: 100%;
        height: 46px;
        border-bottom: 1px solid #ccc;
        display: flex;
        justify-content: space-between;
        line-height: 50px;
    }
    .menutheme {
        width: 400px;
        height: 48px;
        font-size: 20px;
        display: flex;
        justify-content: space-between;
        cursor: pointer;
        box-sizing: border-box;
    }
    .themest {
        color: rgb(255,103,103);
        border-bottom: 3px solid rgb(255,103,103);
    }
    .menuclass {
        width: 400px;
        height: 100%;
        display: flex;
        justify-content: space-between;
    }
    .menuclass>a {
        text-decoration: none;
        color: black;
        cursor: pointer;
    }
    .menuclass>a:hover {
        color: rgb(255,103,103);
    }

    .caidan {
        position: absolute;
        top: 60px;
        left: 0px;
        width: 990px;
        height: auto;
        margin-bottom: 10px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .caidan_juti {
        position: relative;
        margin-bottom: 20px;
        width: 230px;
        height: 320px;
        text-align: center;
    }
    
    .caidan_juti>img {
        width: 230px;
        height: 230px;
        margin-bottom: 10px;
        transition: all 0.8s ease;
        cursor: pointer;
    }
    .caidan_juti>img:hover {
        width: 250px;
        height: 250px;
    }
    .caiming {
        font-size: 18px;
        cursor: pointer;
    }
    .caiming:hover {
        color: rgb(255,103,103);
    }
    .caimiaosu {
        font-size: 12px;
        color: #ccc;
        cursor: pointer;
    }
    .caimiaosu:hover {
        color: rgb(255,103,103);
    }
</style>