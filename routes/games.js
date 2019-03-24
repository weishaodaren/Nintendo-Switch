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
        pool.query('SELECT tid,tname,publishTime,Gamer,imgUrl FROM nin_tabbar',(err,result)=>{
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
        });
    });

    //搜索游戏
    router.get('/index_select',(req,res)=>{
        res.send([
          { "value": "马里奥 奥德赛", "address": "Nintendo" },
          { "value": "任天堂全明星大乱斗 特别版", "address": "Nintendo" },
          { "value": "塞尔达传说 荒野之息", "address": "Nintendo" },
          { "value": "Asterix & Oblix XXL2", "address": "H2 INTERACTIVE" },
          { "value": "战斗公主玛德琳", "address": "3goo" },
          { "value": "BLADE ARCUS Rebellion from Shining", "address": "Sega" },
          { "value": "苍翼默示录 神观之梦 特别版", "address": "H2 INTERACTIVE" },
          { "value": "卡里古拉·过量强化", "address": "Arc System Works" },
          { "value": "Dragon''s Dogma:Dark Arisen", "address": "CAPCOM" },
          { "value": "真三国无双7 猛将传DX", "address": "Koei Tecmo" },
          { "value": "Fate/EXTELLA LINK", "address": "SEGA" },
          { "value": "Gear.Club Unlimited 2", "address": "H2 Interactive" },
          { "value": "少女与战车 战车梦幻大会战 DX", "address": "Bandai Namco" },
          { "value": "Lapis x Labyrinth 深渊狂猎", "address": "Sega" },
          { "value": "青梅竹马是人鱼姬!?My Girldriend is a Mermaid!?", "address": "Cosen" },
          { "value": "Mulaka", "address": "Lienzo" },
          { "value": "New超级马里奥兄弟U 豪华版", "address": "Nintendo" },
          { "value": "Onimusha:Warlords", "address": "CAPCOM" },
          { "value": "逆转裁判123成步堂精选集", "address": "CAPCOM" },
          { "value": "生化危机1", "address": "CAPCOM" },
          { "value": "生化危机4", "address": "CAPCOM" },
          { "value": "英雄不再", "address": "Grasshopper Manufacture Inc" },
          { "value": "机兽战记 狂野爆发 王者爆发", "address": "TAKARA TOMY" }
        ]);
    })

    //SVG 矢量图
    router.get('/index_svg',(req,res)=>{
        pool.query('SELECT svgUrl FROM nin_svg',(err,result)=>{
            if(err) throw err;
            res.send(result);
        });
    });


    // 商品列表
router.get('/about_games',(req,res)=>{
    pool.query('SELECT * FROM nin_games',(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;