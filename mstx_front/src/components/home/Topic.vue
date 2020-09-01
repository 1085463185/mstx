<template>
    <div class="topic" v-cloak>
        <div class="topicc">
            <div class="topicctheme">
                <div :class="themest1" @click="topictheme(0)">热门话题</div>
                <div :class="themest2" @click="topictheme(1)">推荐日志</div>
            </div>
            <div class="topiclass" @click="topicother">
                <a>全部话题</a>
                <a>全部日志</a>
                <a>社区首页</a>
            </div>
        </div>
        <div class="dynamic">
            <div v-for="(item, index) in dynamic" :key="index">
                <div class="yonghudynamic">
                    <div>

                    </div>
                    <a></a>
                    <div></div>
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
                dynamic: [],
                themest1:"themest",
                themest2:"",
            }
        },
        // created() {
            // axios.post("http://localhost:8000/foodshome", {}).then(res => {
            //     for(let i = 0; i < 7; i++) {
            //         this.shicai.push(res.data[i]);
            //     }
            //     console.log("食材",this.shicai);
            // }).catch(e => {
            //     console.log("ajax请求失败");
            // })
        // },
        methods: {
            topictheme(omt) {
                if(omt === 0) {
                    this.themest1="themest";
                    this.themest2 = "";
                }else if(omt === 1){
                    this.themest2 ="themest";
                    this.themest1 = "";
                }
            },
            topicother(e) {
                var path;
                switch (e.target.innerHTML.trim()) {
                    case "全部话题":
                        path:"";
                        break;
                    case "社区首页":
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
    .topic {
        position: relative;
        width: 990px;
        height: 250px;
        margin-top: 20px;
    }
    .topicc {
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
    .topicctheme {
        width: 200px;
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
    
    .topiclass {
        width: 250px;
        height: 100%;
        display: flex;
        justify-content: space-between;
    }
    .topiclass>a {
        text-decoration: none;
        color: black;
        cursor: pointer;
    }
    .topiclass>a:hover {
        color: rgb(255,103,103);
    }
    
</style>