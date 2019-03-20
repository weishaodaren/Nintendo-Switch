const express=require('express');
const pool=require('../pool');
// 路由
var router=express.Router();
//获取轮播img
    router.get('/index',(req,res)=>{
    pool.query('SELECT imgUrl FROM nin_carousel',(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

//获取轮播下方推荐游戏
    router.get('/index_top',(req,res)=>{
        pool.query('SELECT aname,imgUrl FROM nin_adv',(err,result)=>{
            if(err) throw err;
            res.send(result);
        });
    });

//获取最新话题热点游戏图片
    router.get('/index_middle',(req,res)=>{
        pool.query('SELECT tname,publishTime,Gamer,imgUrl FROM nin_tabbar',(err,result)=>{
            if(err) throw err;
            res.send(result);
        });
    });

//获取支持图片
    router.get('/index_bottom',(req,res)=>{
        pool.query('SELECT toolName,imgUrl FROM nin_tool',(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

// 底部推荐游戏图
    router.get('/index_reco',(req,res)=>{
        pool.query('SELECT * FROM nin_recommand',(err,result)=>{
            if(err) throw err;
            res.send(result);
        })
    })
module.exports=router;