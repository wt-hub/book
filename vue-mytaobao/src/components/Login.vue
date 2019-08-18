<template>
  <div id="Login">

   <div class="login-header">
   </div>

   <div class="login-bg">
    <div class="login-warp">
        <div class="login-box">
            <div class="login-title" v-show="!error.tag">密码登录</div>
            <div class="login-msg" v-show="error.tag">
                <i class="iconfont icon-unie044 " style="padding-right: 10px;float: left;font-size: 16px; color: #f40;"></i>
                <p style="font-size: 12px;color: #3c3c3c; padding:0; margin:0;">
                   {{ error.msg}}
                </p>
            </div>
                <form>
                    <div class="login-imput">
                    <label class="login-imput-label"  for="username" ><i class="iconfont icon-yonghu"></i></label>
                    <input type="text" name="username" placeholder="会员名/邮箱/手机号" v-validate.initial="'required'" class="login-text " v-model.trim="form.username"/>
                    </div>
                   
                    <div class="login-imput">
                    <label class="login-imput-label"  for="password" ><i class="iconfont icon-mima"></i></label>
                    <input type="password" name="password" placeholder="" v-validate.initial="'required'" class="login-text " v-model.trim="form.password"/>
                    </div>
                    <div class="submit">
                        <button type="button" @click="submit()">登录</button>
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

import store from '../vuex/store.js';
export default {
  name: 'Login',
  data(){
      return{
        error:{
            tag:false,
            msg:''
        },
        form:{
            username:"",
            password:""
        }
      }
      
  },
  store,
  methods:{
      submit(){
        let vipName =null;
        let email =null;
        let phone =null;

        let phoneReg = /^((13|14|15|17|18)[0-9]{1}\d{8})$/;
        let emailReg = /^\w+@[a-z0-9]+\.[a-z]{2,4}$/;
        if(phoneReg.test(this.form.username)){
            //手机号登陆
            phone = this.form.username;
        }else if(emailReg.test(this.form.username)){
            //邮箱登陆
            email = this.form.username;
        }else{
            //会员名登陆
            vipName = this.form.username;
        }
// debugger;
        //非空校验  
        if(this.isEmpty(vipName)&&this.isEmpty(email)&&this.isEmpty(phone)){
            this.error.tag = true;
            this.error.msg = "请填写账户名";
            return;
            if(this.isEmpty(this.form.password)){
            this.error.tag = true;
            this.error.msg = "请输入账户名和密码";
            return;
            }
       
        }else if(this.isEmpty(this.form.password)){
            this.error.tag = true;
            this.error.msg = "请输入密码";
            return;
        }
            //发送
            let formData = {vipName:vipName,email:email,phone:phone,password:this.form.password}
            formData = JSON.stringify(formData);
            // console.log(formData);
            this.$axios.post('/login' ,formData)
            .then( (response) => {
                console.log(response);
                if(response.data.code==100){
                    console.log(response.data.token);
                    // debugger;
                    this.$store.commit('$_setTokenToStorage',response.data.token);
                    this.$store.commit('$_setUserToStorage',response.data.user);
                    this.$router.push( '/');

                }else{
                    alert("账户与密码不匹配");
                    console.log(response.data.token);
                }
            
            })
            .catch((error) => {
                console.log(error);
            });
        

      },
    isEmpty(obj){
        if(typeof obj == "undefined" || obj == null || obj == ""){
            return true;
        }else{
            return false;
        }
    },
  },
   

  
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

.login-msg{
    line-height: 16px;
    padding: 6px 10px;
    overflow: hidden;
    width: 278px;
    background: #fef2f2;
    border: 1px solid;
    border-color: #ffb4a8;
    background-color: #fef2f2;
    color: #6C6C6C;
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
