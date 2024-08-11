import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'

     import users from '@/views/modules/users/list'
    import dictionary from '@/views/modules/dictionary/list'
    import fangwu from '@/views/modules/fangwu/list'
    import shoufei from '@/views/modules/shoufei/list'
    import tingchewei from '@/views/modules/tingchewei/list'
    import yonghu from '@/views/modules/yonghu/list'
    import zuzhuxinxi from '@/views/modules/zuzhuxinxi/list'
    import dictionaryBaoxiu from '@/views/modules/dictionaryBaoxiu/list'
    import dictionaryChuli from '@/views/modules/dictionaryChuli/list'
    import dictionaryFangwu from '@/views/modules/dictionaryFangwu/list'
    import dictionaryJiaofei from '@/views/modules/dictionaryJiaofei/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryShoufei from '@/views/modules/dictionaryShoufei/list'
    import dictionaryTousu from '@/views/modules/dictionaryTousu/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    } ,{
        path: '/users',
        name: '管理信息',
        component: users
      }
    ,{
        path: '/dictionaryBaoxiu',
        name: '报修类型',
        component: dictionaryBaoxiu
    }
    ,{
        path: '/dictionaryChuli',
        name: '是否处理',
        component: dictionaryChuli
    }
    ,{
        path: '/dictionaryFangwu',
        name: '房产类型',
        component: dictionaryFangwu
    }
    ,{
        path: '/dictionaryJiaofei',
        name: '是否缴费',
        component: dictionaryJiaofei
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryShoufei',
        name: '收费类型',
        component: dictionaryShoufei
    }
    ,{
        path: '/dictionaryTousu',
        name: '投诉类型',
        component: dictionaryTousu
    }


    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/fangwu',
        name: '房产信息',
        component: fangwu
      }
    ,{
        path: '/shoufei',
        name: '收费信息',
        component: shoufei
      }
    ,{
        path: '/tingchewei',
        name: '车位',
        component: tingchewei
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }
    ,{
        path: '/zuzhuxinxi',
        name: '租住信息',
        component: zuzhuxinxi
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
