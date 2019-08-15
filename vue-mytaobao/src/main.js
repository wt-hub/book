// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

import './assets/iconfont/iconfont.css'
Vue.use(ElementUI);

import Axios from 'axios';
Vue.prototype.$axios = Axios;
Axios.defaults.baseURL = '/api';
Axios.defaults.headers['Content-Type'] = 'application/json';
// Axios.defaults.withCredentials=true;

// cookie
import {setCookie, getCookie, delCookie} from '@/assets/js/Cookie';
Vue.prototype.$cookieUtils = {setCookie,getCookie,delCookie};

Vue.config.productionTip = false;

//验证
// import '@/assets/js/validate'

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
