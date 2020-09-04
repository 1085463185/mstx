<template>
    <div class="topic" v-cloak>
        <div class="topicc">
            <div class="topicctheme">
                <div :class="themest1" @click="topictheme(0)">热门话题</div>
                <!-- <div :class="themest2" @click="topictheme(1)">推荐日志</div> -->
            </div>
            <div class="topiclass" @click="topicother">
                <a>全部话题</a>
                <a>社区首页</a>
            </div>
        </div>
        <div class="dynamic">
            <div class="yonghudynamic">
                <div class="tperson">
                    <img src="@/assets/yao.png">
                    <span>瑶妹</span>
                </div>
                <span class="topictime">9小时前</span>
                <br />
                <a class="topica">#早餐#忙里偷闲发个早餐😜</a>
                <br /><br />
                <img :src="dynamic[0].src" class="topicimg">
            </div>
            <div class="yonghudynamic">
                <div class="tperson">
                    <img src="@/assets/anjing.jpeg">
                    <span>安静的吃</span>
                </div>
                <span class="topictime">10小时前</span>
                <br />
                <a class="topica">好吃的晚餐一起来啊！</a>
                <br /><br />
                <img :src="dynamic[1].src" class="topicimg">
                <img :src="dynamic[2].src" class="topicimg">
            </div>
            <div class="yonghudynamic">
                <div class="tperson">
                    <img src="@/assets/liuxing.jpg">
                    <span>爱红烧的流星</span>
                </div>
                <span class="topictime">20小时前</span>
                <br />
                <a class="topica">看我的肉~~~香~~~</a>
                <br /><br />
                <img :src="dynamic[4].src" class="topicimg">
            </div>
            <div class="yonghudynamic">
                <div class="tperson">
                    <img src="@/assets/ludan.png">
                    <span>跳跳爱美食</span>
                </div>
                <span class="topictime">1天前</span>
                <br />
                <a class="topica">来点点心下面~~哈哈哈~~~</a>
                <br /><br />
                <img :src="dynamic[5].src" class="topicimg">
                <img :src="dynamic[6].src" class="topicimg">
                <img :src="dynamic[7].src" class="topicimg">
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
        created() {
            axios.get("http://localhost:8000/showAllMenu1", {}).then(res => {
                this.dynamic = res.data;
                console.log(this.dynamic);
            }).catch(e => {
                console.log("ajax请求失败");
            })
        },
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
                console.log(e.target.innerHTML);
                switch (e.target.innerHTML.trim()) {
                    case "全部话题":
                        path = "/huati";
                        break;
                    case "社区首页":
                        path = "/community";
                        break;
                    default:
                        return;
                }
                if (decodeURI(this.$route.fullPath) === path) {
                    // 重复点击相同的按钮，不会push，直接刷新页面
                    this.$router.go(0);
                } else {
                    console.log("你好")
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
        height: 600px;
        margin-top: 20px;
    }
    .topicc {
        position: relative;
        width: 990px;
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
    .dynamic {
        position: relative;
        width: 100%;
        height: 75%;
        display: flex;
        flex-wrap: wrap;
        margin-top: 20px;
    }
    .tperson {
        display: flex;
        width: 200px;
        height: 50px;
        line-height: 50px;
        font-size: 20px;
    }
    .yonghudynamic {
        width: 50%;
        height: 250px;

    }
    .tperson>img {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        margin-right: 20px;
    }
    .topictime {
        position: relative;
        margin-left: 70px;
        top: -20px;
        font-size: 12px;
        color: #ccc;
    }
    .topica:hover {
        text-decoration: underline;
        color: rgb(255,103,103);
        cursor: pointer;
    }
    .topicimg {
        width: 100px;
        height: 100px;
        margin-right: 20px;
    }
</style>