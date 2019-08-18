import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

/*1.state在vuex中用于存储数据*/
var state={
    user:null,
    token:null
}

var getters={
    getStorage: (state) => {
        if(!state.user){
            state.user = JSON.parse(sessionStorage.getItem("user") || null);
        }
        return state.user;
    }
} 

// mutations里面放的是方法，方法主要用于改变state里面的数据
var mutations={
    $_setTokenToStorage(state,value){
        state.token = value;
        localStorage.setItem("token",value);
    },
    $_setUserToStorage(state,value){
        state.user = value;
        sessionStorage.setItem("user",JSON.stringify(value));
    },
    $_removeStorage(state){
        state.user = null;
        state.token = null;
        localStorage.removeItem("token");
    },
}

const store = new Vuex.Store({
    state : state,
    mutations : mutations,
   
})

export default store;