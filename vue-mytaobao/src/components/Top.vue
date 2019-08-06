<template>
    <div id="top">
    <div style="float: left;height: 100%;width: 80px;"></div>
    <!-- 左 -->
        <div class="select"  >
            <span class="select-cont">
                    中国大陆<i class="el-icon-arrow-down select-down"></i>
            </span>
            <ul  class="option-area">
                <li v-for="item in country"  :key='item.id' type="checkbox" 
                name="hobby" :value="item.id" class="option-area-item" >
                    <div style="display:inline-table;">{{item.value}}</div>
                </li>
            </ul>
        </div>
               
        <div class="select">        
                <span class="select-cont">
                    用户名<i class="el-icon-arrow-down select-down"></i>
                </span>
                <div  class="option-user">
                    <div class="user-img">
                        <img :src="img.url"/>
                    </div>
                    <div class="user-info">
                        <p class="user-info-id">
                        账号管理|退出
                        </p>
                        <p class="user-info-value">
                        淘气值：614
                        </p>
                        <p class="user-info-vip">
                        普通会员
                        </p> 
                    </div>
                    <div style="clear:both;"></div>
                    <a style="display: block;text-align:center;border:1px solid #FFE8DE;background:#FFF0E8;padding:4px 0;">
                        查看你的专属权益
                    </a>
                </div>
        </div>

        <div class="select">        
                <span class="select-cont">
                   <i class="iconfont icon-xinfeng"></i> 消息<i class="el-icon-arrow-down select-down"></i>
                </span>
                <div  class="option-message">
                    查看全部
                </div>
        </div>
        <div class="phone">
             <span class="phone-cont" style="">手机逛淘宝</span>
        </div>
    <!-- 右 -->
    <div style="float: left;height: 100%;width: 290px;"></div>
        <div class="select"  >
            <span class="select-cont">
                    我的淘宝<i class="el-icon-arrow-down select-down"></i>
            </span>
            <ul  class="option-myinfo">
                <li v-for="item in myinfo"  :key='item.id' type="checkbox" 
                name="hobby" :value="item.id" class="option-myinfo-item" >
                    <div style="display:inline-table;">{{item.value}}</div>
                </li>
            </ul>
        </div>
        <div class="select"  >
            <span class="select-cont">
                    购物车<i class="el-icon-arrow-down select-down"></i>
            </span>
            <div  class="option-message">
                    查看我的购物车
            </div>
        </div>
        <div class="select"  >
            <span class="select-cont">
                    收藏夹<i class="el-icon-arrow-down select-down"></i>
            </span>
            <ul  class="option-myinfo">
                <li v-for="item in collect"  :key='item.id' type="checkbox" 
                name="hobby" :value="item.id" class="option-myinfo-item" >
                    <div style="display:inline-table;">{{item.value}}</div>
                </li>
            </ul>
        </div>
    </div>
    

</template>

<script>
export default {
    data(){
        return{
            token:'',//判断是否登录的参数，在加载主页时直接判断
            area:false,
            active:'',
            country: [
                {id:1,value:"全球"},
                {id:2,value:"中国大陆"},
                {id:3,value:"香港"},
                {id:4,value:"台湾"},
                {id:5,value:"澳门"},
                {id:6,value:"韩国"},
                {id:7,value:"马来西亚"},
                {id:8,value:"澳大利亚"},
                {id:9,value:"新加坡"},
                {id:10,value:"新西兰"},
                {id:11,value:"加拿大"},
                {id:12,value:"美国"},
                {id:13,value:"日本"}
                ],
            img: {url:require('../assets/img/top/user.png')},
            myinfo:[ 
                {id:1,value:"已买到的宝贝"},
                {id:2,value:"我的足迹"},
                ],
            collect:[
                {id:1,value:"收藏的宝贝"},
                {id:2,value:"收藏的店铺"},
            ]
        }
    },
    methods:{

    }
       
}

</script>

<style scope>
#top{
  margin: -8px;
  background-color: #F5F5F5;
  height: 40px;

/* border: 1px solid #F00; */
}
/* 区域 */
.select{
    float: left;
    height: 100%;
    width: auto;
    position:relative;
    cursor: default;

    border: 1px solid rgb(47, 113, 212);
}
.select-cont{
    height: 100%;
    width: 100%;
    display: inline-table;
    padding-top: 12px;
    font-family: "宋体";
    font-size: 13px;
    letter-spacing:-1px;
    padding-left: 2px;
    margin-right: 7px;
    /* background-color: rgb(226, 21, 21); */
    
}


.select-cont:hover{
    background-color: #ffffff
}

.select-down{
    display: inline;
    margin-left: 10px;
    /* margin-right: 10px; */
    /* background-color: #cf1010 */
}

.select:hover .option-area {
    display: block;
}

.select:hover .option-user {
    display: block;
}

.select:hover .option-message {
    display: block;
}

.select:hover .option-myinfo {
    display: block;
}

.option-area{
    display: none;
    list-style: none;
    position: absolute; 
    top:25px;
    left:-2px;
    border: 1px solid  #F5F5F5;
    border-top:none;
    height:290px;
    width:270px;
    overflow-y: auto;
    padding: 10px 5px;

    /* background-color: rgb(186, 228, 33); */
}
.option-area-item{
    width: 270px;
    height: 30px;
    font-family: "宋体";
    font-size: 13px;
/* 垂直居中 */
    display: flex;
    justify-content: space-around;
    flex-direction: column;
}
.option-area-item:hover{
    
    background-color: #F5F5F5;
    cursor: pointer;
}

.option-user{
    display: none;
    position: absolute; 
    width: 248px;
    height: auto;
    padding: 8px;
    left:-2px;
    font-family: "宋体";
    font-size: 12px;

    /* border: 1px solid rgb(47, 113, 212); */
    /* background-color: aquamarine; */
}
.option-message{
    display: none;
    position: absolute; 
    width: 248px;
    height: auto;
    padding: 8px;
    font-family: "宋体";
    font-size: 12px;
    text-align: right;
    left:-2px;

    border: 1px solid rgb(47, 113, 212);
}

.option-myinfo{
    display: none;
    position: absolute; 
    width: auto;
    height: auto;
    padding: 8px 0;
    font-family: "宋体";
    font-size: 12px;
    text-align: right;

    top:25px;
    left:-2px;
    border: 1px solid  #F5F5F5;
    border-top:none;

    /* border: 1px solid rgb(47, 113, 212); */
}

.option-myinfo-item{
    /* width: 270px;
    height: 30px; */
    font-family: "宋体";
    font-size: 13px;
    line-height: 28px;
    padding: 0 5px;
    /* 文本不换行 */
    white-space: nowrap;
/* 垂直居中 */
    display: flex;
    justify-content: space-around;
    flex-direction: column;
}
.option-myinfo-item:hover{
    background-color: #F5F5F5;
    cursor: pointer;
}
.user-img{
    margin-right: 10px;
    margin-left: 9px;
    width: 62px;
    height: 62px;
    padding: 9px;
    float: left;
    box-sizing: content-box;
    
    /* background-color: chocolate; */
}
.user-info{
    overflow: hidden;
}
.user-info-id{
    margin:0px 0px;
    padding:0px;
    line-height: 20px;
    text-align:right;
}
.user-info-value{
   margin:5px 0px 0px 0px;
   padding:0px;
   line-height: 20px;
   text-align:left;
}
.user-info-vip{
   margin:0px;
   padding:0px;
   line-height: 20px;
   text-align:left;
}

.phone{
    float: left;
    height: 100%;
    width: auto;
    position:relative;
    cursor: default;
    padding: 0 6px;

    border: 1px solid rgb(47, 113, 212);

}
.phone-cont{
    float: left; 
    height: 100%; 
    font-size: 12px;
    cursor: pointer;
    /* 垂直居中 */
    display: flex;
    justify-content: space-around;
    flex-direction: column;

    /* background-color: #0f00f0; */
}

.phone-cont:hover{
    color: rgb(255, 60, 0);
}

</style>
