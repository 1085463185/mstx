<template>
  <div>
    <div v-for="item in popleftArr" :key="item.id" class="box">
      <!-- <img src="../../assets/logo.png" /> -->
	  <img :src="item.img" alt="">
      <div class="introduction">
        <!-- <a href="#">对肥肠情有独钟，可以说是真爱了！</a> -->
        <!-- <p>菜单 | 喜欢吃的亲们不要错过哦～</p> -->
		<a href="/recip/caidan">{{item.a}}</a>
		<p>{{item.p}}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      popleftArr: [
        {
          id: 1,
          img:
            "https://i3.meishichina.com/attachment/magic/2019/01/19/2019011915478628945668197577.jpg?x-oss-process=style/c80",
          a: "对肥肠情有独钟，可以说是真爱了！",
          p: "菜单 | 喜欢吃的亲们不要错过哦～"
        },
        {
          id: 2,
          img:
            "https://i3.meishichina.com/attachment/magic/2019/01/17/2019011715476924375588197577.jpg?x-oss-process=style/c80",
          a: "金黄酥脆的油炸食品，我的最爱！",
          p: "菜单 | 喜欢吃的亲们不要错过哦～"
        },
        {
          id: 3,
          img:
            "https://i3.meishichina.com/attachment/magic/2019/01/19/2019011915478631346218197577.jpg?x-oss-process=style/c80",
          a: "冬季食5物，缓解胃胀气",
          p: "专题 | 推荐一些缓解胃胀气的食物"
        },
        {
          id: 4,
          img:
            "https://i3.meishichina.com/attachment/recipe/2019/10/16/20191016157122971974610169539.jpg?x-oss-process=style/c320",
          a: "人气菜肴",
          p: "超过50人收藏的菜谱都超赞ˇωˇ"
        },
        {
          id: 5,
          img:
            "https://i3.meishichina.com/attachment/recipe/2019/10/11/2019101115707958802679732003.jpg?x-oss-process=style/c320",
          a: "一周热门",
          p: "近7天来最受欢迎的新菜谱，不容放过"
        },
        {
          id: 6,
          img:
            "https://i3.meishichina.com/attachment/recipe/2018/04/23/20180423152446861967113.jpg?x-oss-process=style/c180",
          a: "快速营养早餐",
          p: "近7天来最受欢迎的新菜谱，不容放过"
        }
      ]
    };
  }
};
</script>

<style scoped="">
img {
  cursor: pointer;
  float: left;
  width: 70px;
  height: 70px;
}
.box {
  width: 310px;
  height: 100px;
}
.introduction {
  float: right;
  width: 235px;
  height: 100px;
}
a {
  display: block;
  margin: 10px 0;
  width: 235px;
  height: 30px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  text-decoration: none;
  font-size: 20px;
  font-family: "微软雅黑";
  color: black;
}
a:hover {
  color: red;
  text-decoration: underline;
}
p {
  color: #999999;
  font-size: 14px;
}
</style>
