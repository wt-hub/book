<template>
  <div id="Login">

   <div class="login-header">
   </div>

   <div class="login-bg">
    <div class="login-warp">
        <div class="login-box">
            <div class="login-title">密码登录</div>
                <form>
                    <div class="login-imput">
                    <label class="login-imput-label"  for="username" ><i class="iconfont icon-yonghu"></i></label>
                    <input type="text" id="username" placeholder="会员名/邮箱/手机号" class="login-text "/>
                    </div>
                    <div class="login-imput">
                    <label class="login-imput-label"  for="password" ><i class="iconfont icon-mima"></i></label>
                    <input type="password" id="password" placeholder="" class="login-text "/>
                    </div>
                    <div class="submit">
                        <button type="submit" >登录</button>
                    </div>
                </form>
                <div style="margin-top: 24px;line-height: 14px;">
                     <div class="login-buttom">
                        <span class="login-buttom-cont" >微博登录</span>
                    </div>

                    <div class="login-buttom" >
                        <span class="login-buttom-cont" >支付宝登录</span>
                    </div>
                </div>
                <!-- 清除浮动 -->
                <div style="clear:both;"></div>
                <div class="login-box-bottom">
                    <a class="login-bottom-cont" >免费注册</a>
                    <a class="login-bottom-cont" >忘记会员名</a>
                    <a class="login-bottom-cont" >忘记密码</a>
                </div>
            
        </div>
    </div>
   </div>

   <div class="login-footer">
   </div>
  </div>
</template>

<script>


export default {
  name: 'Login',
  data(){
      return{
        form:{
            name:""
        }
      }
      
  }
  
}
</script>

<style scope>
#Login{
  margin: -8px;
  /* background-color: #F5F5F5; */
}

.login-header{
    padding: 22px 0;
    height: 44px;
    width: auto;
    background-color: rgb(255, 255, 255);
}

.login-bg{
    width: 100%;
    height: 600px;
    background-color: rgb(52, 151, 190);
    background-repeat: no-repeat;
    background-position: center center;
    background-image: url(../assets/img/login/bg.jpg)
}
.login-footer{
    margin: 60px auto 0;
    padding: 7px 0 9px;
    border-top: 1px solid #ddd;
    width: 1200px;
}
.login-warp{
    position: absolute;
    top: 120px;
    right: 60px;
    width: 350px;
}

.login-box{
    width: 300px;
    padding: 25px 25px 23px;
    color: #6c6c6c;
    background: #fff;
    position: relative;
    margin: 0 auto;
}
   
.login-title {
    height: 18px;
    line-height: 18px;
    font-size: 16px;
    color: #3c3c3c;
    margin-top: 9px;
    padding-bottom: 8px;
    font-weight: 700;
}
.login-imput{
    margin-top:20px;
    position: relative;
}

.login-imput-label{
    display: block;
    width: 40px;
    height: 40px;
    line-height: 40px;
    color: #fff;
    background: #ddd;
    text-align: center;
    position: absolute;
    left: 1px;
    top: 1px;
    outline: 0;
}

.login-text {
    width: 240px;
    font-size: 14px;
    line-height: 18px;
    height: 18px;
    padding: 11px 8px 11px 50px;
    border: 1px solid #ddd;
}

.submit{
    margin-top: 20px;
}

.login-box .submit button {
    width: 300px;
    height: 42px;
    border: 0;
    /* display: inline-block; */
    overflow: hidden;
    /* vertical-align: top; */
    line-height: 42px;
    font-size: 16px;
    font-weight: 700;
    color: #fff;
    background: #f40;
    border-radius: 3px;
    cursor: pointer;
    /* zoom: 1; */
}

.login-buttom{
    float: left;
    height: 100%;
    width: auto;
    position:relative;
    cursor: default;
    padding: 0 6px;
}
.login-buttom-cont{
    float: right; 
    height: 100%; 
    font-size: 12px;
    cursor: pointer;
    /* 垂直居中 */
    display: flex;
    justify-content: space-around;
    flex-direction: column;
    margin-right: 20px;
}

.login-buttom-cont:hover{
    color: rgb(255, 60, 0);
}

.login-box-bottom{
    margin-top: 25px;
    overflow: hidden;
    text-align: right;

}

.login-box-bottom .login-bottom-cont{
    margin-right: 10px;
}

.login-bottom-cont{
    float: right; 
    height: 100%; 
    font-size: 12px;
    cursor: pointer;
    /* 垂直居中 */
    display: flex;
    justify-content: space-around;
    flex-direction: column;
    margin-right: 20px;
}

.login-bottom-cont:hover{
     color: rgb(255, 60, 0);
}
</style>
