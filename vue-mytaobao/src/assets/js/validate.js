import Vue from 'vue'
import VeeValidate,{ Validator } from 'vee-validate'
import zh_CN from 'vee-validate/dist/locale/zh_CN'

// 配置中文
Validator.addLocale(zh_CN);

const config = {
    locale: 'zh_CN',
  };

Vue.use(VeeValidate,config);

// 自定义validate 
const dictionary = {
    zh_CN: {
       messages: {
        username: () => '请填写账户名1111',
        password: () => '请输入密码2222',
        required: ( field )=> "请输入" + field
       },
       attributes:{
         username:'账户名',
         password:'密码'
       }
   }
 };
 
 Validator.updateDictionary(dictionary);


// const validator = new Validator({
//     email: 'required|email',
//     name: 'required|alpha|min:3',
// });


