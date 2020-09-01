<template>
    <div id="home" v-cloak @mouseenter="stoptime" @mouseleave="startime">
        <!-- 轮播图 -->
        <img :src = "bannershow">

        <ul class="dot">
            <li :class="{dotcolor:dc[0]}" @click="bardc(0)"></li>
            <li :class="{dotcolor:dc[1]}" @click="bardc(1)"></li>
            <li :class="{dotcolor:dc[2]}" @click="bardc(2)"></li>
            <li :class="{dotcolor:dc[3]}" @click="bardc(3)"></li>
            <li :class="{dotcolor:dc[4]}" @click="bardc(4)"></li>
        </ul>

        <div class="leri">
            <div class="lr" @click="left">
                <img src="@/assets/home/banner/向左.png">
            </div>
            <div class="lr" @click="right">
                <img src="@/assets/home/banner/向右.png">
            </div>
        </div>

        <!-- banner菜单栏 -->
        <bannerlist></bannerlist>
        
    </div>
</template>

<script>
    import axios from "axios";
    export default {
        data: function() {
            return {
                timer:null,
                banner: ["https://i3.meishichina.com/attachment/magic/2020/07/27/2020072715958388195448197577.jpg","https://i3.meishichina.com/attachment/magic/2020/03/19/2020031915845832443168197577.jpg","https://i3.meishichina.com/attachment/magic/2020/06/15/2020061515922058734798197577.jpg",
                "https://i3.meishichina.com/attachment/magic/2020/08/24/2020082415982731159158197577.jpg",
                "https://i3.meishichina.com/attachment/magic/2020/08/11/2020081115971110561328197577.jpg"],
                bannershow: "https://i3.meishichina.com/attachment/magic/2020/07/27/2020072715958388195448197577.jpg",
                currInddex: 0,
                dc:[true,false,false,false,false],
                dotcolor: "rgb(255,103,103)",
            }
        },
        created() {
            this.timer=setInterval(() => {
                this.currInddex = (this.currInddex+1)%this.banner.length;
                this.bannershow = this.banner[this.currInddex];
                this.dc[this.currInddex] = true;
                for(var i = 0; i < this.dc.length; i++) {
                    if(i !== this.currInddex){
                        this.dc[i] = false;
                    }
                }
            },3000);
        },
        beforeDestroy() {
            clearInterval(this.timer);
        },
        components:{
            bannerlist: () => import ("@/components/home/bannerlist.vue"),
        },
        methods: {
            bardc(curr) {
                console.log(curr);
                this.currInddex = curr;
                this.bannershow = this.banner[this.currInddex];
                this.dc[this.currInddex] = true;
                for(var i = 0; i < this.dc.length; i++) {
                    if(i !== this.currInddex){
                        this.dc[i] = false;
                    }
                }
            },
            stoptime() {
                clearInterval(this.timer);
            },
            startime() {
                this.timer=setInterval(() => {
                this.currInddex = (this.currInddex+1)%this.banner.length;
                this.bannershow = this.banner[this.currInddex];
                this.dc[this.currInddex] = true;
                for(var i = 0; i < this.dc.length; i++) {
                    if(i !== this.currInddex){
                        this.dc[i] = false;
                    }
                }
            },3000);
            },
            left() {
                if(this.currInddex > 0) {
                    this.currInddex--;
                }else {
                    this.currInddex = this.banner.length-1;
                }
                this.bannershow = this.banner[this.currInddex];
                this.dc[this.currInddex] = true;
                for(var i = 0; i < this.dc.length; i++) {
                    if(i !== this.currInddex){
                        this.dc[i] = false;
                    }
                }
            },
            right() {
                if(this.currInddex < this.banner.length-1) {
                    this.currInddex++;
                }else {
                    this.currInddex = 0;
                }
                this.bannershow = this.banner[this.currInddex];
                this.dc[this.currInddex] = true;
                for(var i = 0; i < this.dc.length; i++) {
                    if(i !== this.currInddex){
                        this.dc[i] = false;
                    }
                }
            },
        }
    }
</script>

<style scoped>

    [v-cloak] {
        display: none;
    }
    li {
        list-style: none;
    }
    ul {
        margin: 0;
        padding: 0;
    }
    #home {
        position: relative;
        width: 100%;
        height: 360px;
    }
    
    .dot {
        position: absolute;
        right: 20px;
        bottom: 20px;
        width: 120px;
        height: auto;
        display: flex;
        justify-content: space-between;
    }
    .dot>li {
        width: 12px;
        height: 12px;
        background-color: rgba(204,204,204, .5);
        border-radius: 50%;
        cursor: pointer;
    }
    .dot .dotcolor {
        background-color: rgba(255,103,103);
    }
    .leri {
        position: absolute;
        right: 0px;
        top: 50%;
        transform: translateY(-50%);
        display: flex;
        justify-content: space-between;
        width: 770px;
    }
    .lr {
        width: 35px;
        height: 61px;
        cursor: pointer;
    }
    .lr>img {
        width: 35px;
        height: auto;
        margin-top: 13px;
    }
    .lr:hover {
        background-color: rgba(0,0,0,.5);
    }
</style>