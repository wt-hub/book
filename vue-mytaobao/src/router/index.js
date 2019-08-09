import Vue from 'vue'
import Router from 'vue-router'
import MainForm from '@/components/mainForm'
import login from '@/components/login'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'MainForm',
      component: MainForm
    },
    {
      path: '/login',
      name: 'login',
      component: login
    }
  ]
})
