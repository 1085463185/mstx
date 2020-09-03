<template>
    <div class="barlist">
        <div class="listco" @mouseenter="showlist" @mouseleave="nonelist">
            <div class="biaot">
                <img src="@/assets/home/banner/icon1.png" class="biaoimg1"  >
            </div>
            <div>菜谱大全</div>
            <div class="xyou">
                <img src="@/assets/home/banner/向右白.png" class="xiangyou">
            </div>
        </div>
        <div class="listco" @mouseenter="showlist" @mouseleave="nonelist">
            <div class="biaot">
                <img src="@/assets/home/banner/icon1.png" class="biaoimg2">
            </div>
            <div>食材大全</div>
            <div class="xyou">
                <img src="@/assets/home/banner/向右白.png" class="xiangyou">
            </div>
        </div>
        <div class="listco" @mouseenter="showlist" @mouseleave="nonelist">
            <div class="biaot">
                <img src="@/assets/home/banner/icon1.png" class="biaoimg3">
            </div>
            <div>其他美食</div>
            <div class="xyou">
                <img src="@/assets/home/banner/向右白.png" class="xiangyou">
            </div>
        </div>
        <div v-show="sblist" class="boxlist" @mouseenter="inlist" @mouseleave="nonelist">
            <div v-for="(item, index) in listext" :key="index" class="listbox">
                <div class="listname">{{item.name}}</div>
                <div class="listdes">{{item.des}}</div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {
                sblist: false,
                listext: [],
                listext1: [
                    {name: "一周热门",des: "近七天最受欢迎"},
                    {name: "人气菜肴",des: "超过50人收藏"},
                    {name: "冬季食谱",des: "看看大家在吃啥"},
                    {name: "早餐",des: "像国王一样早餐"},
                    {name: "高颜值",des: "颜控专用通道"},
                    {name: "凉菜",des: "精选2600"},
                    {name: "热菜",des: "精选42500道"},
                    {name: "主食",des: "精选18000道"},
                    {name: "小吃",des: "精选11000道"},
                ],
                listext2: [
                    {name: "秋葵",des: "新晋VC王"},
                    {name: "西红柿",des: "共3160道菜谱"},
                    {name: "黑木耳",des: "百搭配菜，防雾霾"},
                    {name: "小龙虾",des: "红到勾心，辣到流泪"},
                    {name: "螃蟹",des: "全名爆红"},
                    {name: "鸡翅",des: "可乐鸡翅不香吗"},
                    {name: "肉禽蛋",des: "共288"},
                    {name: "水产品",des: "鱼来了，香"},
                    {name: "蔬菜瓜菌",des: "营养"},
                ],
                listext3: [
                    {name: "我",des: "你"},
                    {name: "拥抱",des: "执着"},
                    {name: "着",des: "的"},
                    {name: "爱",des: "等待"},
                    {name: "当醒来",des: "却"},
                    {name: "从",des: "不"},
                    {name: "梦中",des: "曾"},
                    {name: "醒",des: "离"},
                    {name: "来",des: "开"},
                ],

            }
        },
        components: {

        },
        methods: {
            showlist(e) {
                this.sblist = true;
                if(e.target.innerText.trim() === "菜谱大全") {
                    this.listext = this.listext1;
                    console.log(this.listext);
                } else if(e.target.innerText.trim() === "食材大全") {
                    this.listext = this.listext2;
                    console.log(this.listext);
                } else if(e.target.innerText.trim() === "其他美食") {
                    this.listext = this.listext3;
                    console.log(this.listext);
                }
            },
            inlist() {
                this.sblist = true;
            },
            nonelist(e) {
                this.sblist = false;
            },
        }
    }
</script>

<style scoped>
    .barlist {
        position: absolute;
        top: 0px;
        left: 0px;
        width: 220px;
        height: 100%;
        background: rgba(68, 68, 68, .4);
        padding: 20px 0px 20px 0px;
        box-sizing: border-box;
        font-size: 20px;
        color: white;
    }
    .listco {
        display: flex;
        justify-content: space-between;
        cursor: pointer;
        width: 100%;
        height: 50px;
        line-height: 50px;
        padding-left: 30px;
        box-sizing: border-box;
    }
    .listco:hover {
        background-color: rgb(255,103,103);
    }
    .biaot {
        position: relative;
        width: 20px;
        height: 100%;
        overflow: hidden;
    }
    .biaoimg1 {
        position: absolute;
        left: 0;
        top: 15px;
    }
    .biaoimg2 {
        position: absolute;
        left: -20px;
        top: 15px;
    }
    .biaoimg3 {
        position: absolute;
        left: -40px;
        top: 15px;
    }
    .xyou {
        position: relative;
        height: 100%;
        width: 80px;
    }
    .xiangyou {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        width: auto;
        height: 15px;
    }
    .boxlist {
        position: absolute;
        top: 0;
        left: 220px;
        width: 420px;
        height: 360px;
        box-shadow: 3px 2px 5px rgba(0,0,0,.2);
        background-color: #fff;
        display: flex;
        flex-wrap: wrap;
    }
    .listbox {
        width: 140px;
        height: 120px;
        text-align: center;
        color: black;
    }
    .listname {
        margin-top: 36px;
        font-size: 18px;
        cursor: pointer;
    }
    .listname:hover {
        color: rgb(255,103,103);
    }
    .listdes {
        color: #ccc;
        font-size: 12px;
        cursor: pointer;
    }
</style>