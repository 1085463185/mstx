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
        <div v-show="sblist" class="boxlist">
            
        </div>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {
                sblist: false,
            }
        },
        components: {

        },
        methods: {
            showlist(e) {
                this.sblist = true;
                if(e.target.innerText.trim() === "菜谱大全") {

                } else if(e.target.innerText.trim() === "食材大全") {

                } else if(e.target.innerText.trim() === "其他美食") {

                }
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
        width: 400px;
        height: 360px;
        box-shadow: 3px 2px 5px rgba(0,0,0,.2);
        background-color: #fff;
    }
    .boxlist {
        display: flex;
        flex-wrap: wrap;
    }
</style>