import Vue from 'vue'
import VeeValidate,{ Validator } from 'vee-validate'
import zh_CN from 'vee-validate/dist/locale/zh_CN'

Vue.use(VeeValidate);


//提示语汉化
Validator.locale ==="en" ? "zh_CN" : "en";
Validator.localize(Validator.locale,{
    messages: zh_CN.messages,
    attributes:{
        username:'登录名',
        loginPassword:'密码'
    }
});


Validator.extend('phone', {
    getMessage: (field, [args]) => `请输入正确的手机号码`,
    validate: (value, [args]) =>{
        const reg = /^((13|14|15|17|18)[0-9]{1}\d{8})$/;
        return reg.test(value) 
    }  
});

