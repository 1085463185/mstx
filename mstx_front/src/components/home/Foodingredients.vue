<template>
    <div class="foodingredients" v-cloak>
        <div class="foods">
            <div class="foodstheme">
                <div class="themest" @click="foodtheme">时令食材</div>
            </div>
            <div class="foodsclass" @click="foodother">
                <a>肉禽类</a>
                <a>水产品</a>
                <a>蔬菜</a>
                <a>米面豆乳</a>
                <a>食材首页</a>
            </div>
        </div>
        <div class="shicai">
            <div v-for="(item, index) in shicai" :key="index">
                <div class="shicai_juti">
                    <img :src="item.src">
                    <div class="shicaiming">{{item.name}}</div>
                    <div class="shicaimiaosu">{{item.kind}}</div>
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
                shicai: [],
            }
        },
        created() {
            axios.post("http://localhost:8000/foodshome", {}).then(res => {
                for(let i = 0; i < 7; i++) {
                    this.shicai.push(res.data[i]);
                }
                console.log("食材",this.shicai);
            }).catch(e => {
                console.log("ajax请求失败");
            })
        },
        methods: {
            foodtheme() {
                    this.themest="themest";
            },
            foodother(e) {
                var path;
                switch (e.target.innerHTML.trim()) {
                    case "肉禽类":
                        path = "";
                        break;
                    case "水产品":
                        path = "";
                        break;
                    case "蔬菜":
                        path = "";
                        break;
                    case "米面豆乳":
                        path = "";
                        break;
                    case "食材首页":
                        path = "/food";
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
    .foodingredients {
        position: relative;
        width: 990px;
        height: 250px;
        margin-top: 20px;
    }
    .foods {
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
    .foodstheme {
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
    .foodsclass {
        width: 400px;
        height: 100%;
        display: flex;
        justify-content: space-between;
    }
    .foodsclass>a {
        text-decoration: none;
        color: black;
        cursor: pointer;
    }
    .foodsclass>a:hover {
        color: rgb(255,103,103);
    }

    .shicai {
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
    .shicai_juti {
        position: relative;
        margin-bottom: 20px;
        width: 126px;
        height: 160px;
        text-align: center;
    }
    .shicai_juti:hover {
        color: rgb(255,103,103);
    }
    
    .shicai_juti>img {
        border-radius: 50%;
        width: 126px;
        height: 126px;
        margin-bottom: 10px;
        cursor: pointer;
    }
    .shicaiming {
        font-size: 18px;
        cursor: pointer;
    }
    .shicaimiaosu {
        font-size: 12px;
        color: #ccc;
        cursor: pointer;
    }
</style>