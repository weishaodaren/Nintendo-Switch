const express=require('express');
const pool=require('../pool');
// 路由
var router=express.Router();

var URL = 'http://127.0.0.1:6605/';
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
        pool.query('SELECT tid,lid,tname,publishTime,Gamer,imgUrl FROM nin_tabbar',(err,result)=>{
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

//VR 眼睛
router.get('/about_games_vr',(req,res)=>{
    pool.query('SELECT * FROM nin_games_vr',(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//
router.get('/about_games_msg',(req,res)=>{
    pool.query('SELECT * FROM nin_games_msg',(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

// ----------------------------------------------------------------------------------
 
 router.get("/newslist",(req,res)=>{
   //1:获取参数 pno pageSize
   var pno = req.query.pno;
   var pageSize = req.query.pageSize;
   //2:设置默认值  pno 1 pageSize 7
   if(!pno){
     pno = 1;
   }
   if(!pageSize){
     pageSize = 7;
   }
   //3:创sql语句
   var sql = " SELECT id,title,img_url";
   sql +=" ,ctime,point";
   sql +=" FROM xz_news";
   sql +=" LIMIT ?,?";
   var ps = parseInt(pageSize);
   var offset = (pno-1)*pageSize;
   pool.query(sql,[offset,ps],(err,result)=>{
      if(err)throw err;
      res.send({code:1,data:result});
   })
   //4:返回 
 })
 
 // 分页
 router.get("/products",(req,res)=>{
   var pno = req.query.pno;
   var pageSize = req.query.pageSize;
   if(!pno) pno = 1;
   if(!pageSize) pageSize = 7;
   //这个sql语句 查询的二个表   
   //先写from 后面的  表名
   //在写 表里面相等的数据
   //最后 select 。。。。
   var sql = "select l.lid,l.title,l.price,p.md from xz_laptop l,xz_laptop_pic p where l.lid = p.laptop_id GROUP by l.lid limit ?,?";
   var ps = parseInt(pageSize);
   var offset = (pno-1)*pageSize;
   pool.query(sql,[offset,ps],(err,result)=>{
     if(err)throw err;
     res.send({code:1,data:result});
  })
 })
 
 // 商品详细情况
 router.get("/findNewsInfo",(req,res)=>{
   var id = req.query.id
   var reg = /^\d{1,}$/;
   if(!reg.test(id)){
     res.send({code:404,msg:"err "})
     return;
   }
   var sql = " SELECT id,title,content,ctime";
       sql +=" ,img_url FROM xz_news";
       sql +=" WHERE id = ?";
       pool.query(sql,[id],(err,result)=>{
         if(err)throw err;
         res.send({code:1,data:result});
      })
 })
 
 
 //功能四:获取评论列表
 router.get("/getComment",(req,res)=>{
   //1:参数 nid 新闻编号 pno 页码 pageSize 
   //页大小
   var nid = req.query.nid;
   var pno = req.query.pno;
   var pageSize = req.query.pageSize;
   //2:设置默认值 
   if(!pno){pno=1}
   if(!pageSize){pageSize=5}
   //3:sql语句
   var sql = " SELECT id,content,ctime,nid";
       sql +=" FROM xz_comment";
       sql +=" WHERE nid = ?";
       sql +=" LIMIT ?,?";
   //4:offset 行偏移量    
   var offset = (pno-1)*pageSize;
   //5:页大小造型
   pageSize = parseInt(pageSize);
   pool.query(sql,[nid,offset,pageSize],(err,result)=>{
       if(err)throw err;
       res.send({code:1,data:result});
   });
 })
 
 //服务器项目目录
 //vue_server_00
 //   public
 //   pool.js
 //   db.sql
 //   app.js 
 
 
 //功能五：发表评论
 //1.用户post请求/addcomment
 router.post("/addcomment",(req,res)=>{
 //2:获取二个参数 nid content
 var nid = req.body.nid;        //新闻编号
 var content = req.body.content;//评论内容
 //3:创建sql语句
 var sql = "INSERT INTO xz_comment VALUES";
     sql+="(null,?,now(),?)";
 //4:发送sql语句并且返回返回结果
 pool.query(sql,[content,nid],(err,result)=>{
     if(err)throw err;
     //判断执行insert语句影响行数
     if(result.affectedRows>0){
       res.send({code:1,msg:"评论发表成功"});
     }else{
       res.send({code:-1,msg:"评论发表失败"});
     }
 })
 //5:判断 评论成功 评论失败
 });
 //6:加载body-parser模块 配置 写在 app.js 前面 
 
 
 //功能七
 router.get('/findProduct',(req,res)=>{
   var pid=req.query.pid;//参数
   pool.query('SELECT lname,price FROM xz_laptop WHERE lid= ?',[pid],(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   });
 });
 
 //功能八 用户登录
 router.get('/login',(req,res)=>{
   //参数
   var uname=req.query.uname;
   var upwd=req.query.upwd;
   //sql
   pool.query('SELECT id FROM xz_login WHERE uname= ? AND upwd= md5(?)',[uname,upwd],(err,result)=>{
     if(err) throw err; //一定要写
     if(result.length==0){
     res.send({code:-1,msg:`登录失败,用户名或密码有误`});
   }else{
     //将用户登录凭证保存在服务器端 session对象中
     var id=result[0].id;//获取当前用户id
     req.session.uid=id;//保存session中
     // console.log(req.session.uid);
     res.send({code:1,msg:`登录成功`});
     }
   })
   //json
 });
 
 //功能九 商品添加购物车
 router.get('/addcart',(req,res)=>{
   //0  判断用户是否登录
   if(!req.session.uid){
     res.send({code:-1,msg:`请登录`});
     return;
   };
   var pid=req.query.pid;//商品编号
   var count=1;
   var uid=req.query.uid;//用户编号
   var price=req.query.price;
   var sql='SELECT id FROM xz_cart WHERE uid= ? AND pid= ?';
   pool.query(sql,[uid,pid],(err,result)=>{
     if(err) throw err;
     if(result.length==0){
       var sql=` INSERT INTO xz_cart VALUES`;
           sql+=` (null,1,${price},${pid},${uid})`;
     }else{
       var sql=` UPDATE xz_cart SET count=count+1`;
           sql+=` WHERE pid=${pid} AND uid=${uid}`;
     }
   pool.query(sql,(err,result)=>{
     if(err) throw err;
     if(result.affectedRows>0){
       res.send({code:1,msg:`添加成功`});
     }else{
       res.send({code:-1,msg:`失败`});
     }
   })
   });
 });
 
 //功能十:购物车列表
 router.get("/cartlist",(req,res)=>{
   //如果session对象UID不纯在；说明当前没有登录
   // console.log(req.session);
   if(!req.session.uid){
     res.send({code:-1,msg:`请登录`});
     return;
   }
   //参数 uid
   // var uid = req.query.uid;
      var uid =req.session.uid;
   //sql  多表查询
   var sql = " SELECT c.id,c.count,c.price,";
   sql+=" c.uid,c.pid,l.lname";
   sql+=" FROM xz_cart c,xz_laptop l";
   sql+=" WHERE l.lid = c.pid";
   sql+=" AND c.uid = ?";
   pool.query(sql,[uid],(err,result)=>{
     if(err)throw err;
     res.send({code:1,data:result})
   })
  });
 
  //功能十一
  router.get('/delCart',(req,res)=>{
    //参数id
    var id=req.query.id;
    //sql DELETE
    var sql='DELETE FROM xz_cart WHERE id= ?'
    pool.query(sql,[id],(err,result)=>{
      if(err) throw err;
      if(result.affectedRows>0){
        //json
        res.send({code:1,msg:`删除成功`})
      }else{
        res.send({code:-1,msg:`删除失败`})
      }
    });
  });
 
  //功能12
  router.get('/removeMitem',(req,res)=>{
   var ids=req.query.ids;
   pool.query('DELETE FROM xz_cart WHERE id IN ('+ids+')',(err,result)=>{
     if(err) throw err;
     if(result.affectedRows>0){
       res.send({code:1,msg:`删除成功`})
     }else{
       res.send({code:-1,msg:`失败`})
     }
   })
  });
 

 
 
 
 //功能十五 用户退出
 router.get('/logout',(req,res)=>{
   //1.清空uid
   req.session.uid=null;
   //2.返回消息
   res.send({code:1,msg:`已退出`});
 });
 
 //功能十六 分页
 router.get('/shoplist',(req,res)=>{
   //1.参数
   //pno 页码
   var pno=req.query.pno;
   //pageSize 页大小
   var pageSize=req.query.pageSize;
   //1.1默认值 pno 1 pagesize 7
   if(!pno) pno=1;
   if(!pageSize) pageSize=7;
 
   //1.2创建变量，保存执行进度
   var progress=0;
   //1.3创建变量 最终发送js对象
   var obj={code:1};
 
   //2.sql
   var sql='SELECT id,img_url,sname,tel,addr,stime,star FROM xz_shop LIMIT ?,?';
   var offset=(pno-1)*pageSize;
   pageSize=parseInt(pageSize);
   // console.log(pageSize);
   pool.query(sql,[offset,pageSize],(err,result)=>{
     if(err) throw err;
     // res.send({code:1,data:result});
     progress+=50;  //进度值加50
     obj.data=result; //保存当前内容
     if(progress==100) res.send(obj);  //进度值100 发送
   });
   //3.sql语句总页数
   //计算总记录
   var sql='SELECT count(id) as c FROM xz_shop';
   pool.query(sql,(err,result)=>{
   if(err) throw err;
   var ps=Math.ceil(result[0].c/pageSize);
   // res.send({code:1,data:ps});
   progress+=50;    //进度值加50
   obj.pageCount=ps; //保存总页数
   if(progress==100) res.send(obj);  //当前进度100 发送
  });
 
 });
 
 //功能十七 ：添加商品
 router.get('/addpro',(req,res)=>{
   //1.参数
   // var id=req.query.id;
   var name=req.query.name;
   //2.sql
   var sql='INSERT INTO xz_pro VALUES(null,?)';
   pool.query(sql,[name],(err,result)=>{
   if(err) throw err;
   res.send({code:1,msg:`添加成功`});
 });
   //3.json
 });
 
 //用户搜索
 router.get('/search',(req,res)=>{
   //1.获取参数 key pno pageSize
   var key=req.query.key;
   var pno=req.query.pno;
   var pageSize=req.query.pageSize;
   //2.设置默认值
   if(!pno) pno=1;
   if(!pageSize) pageSize=7;
   //3.创建sql搜索商品信息
   var sql="SELECT lid,lname,price FROM xz_laptop WHERE lname LIKE ? LIMIT ?,?"
   //4.offset pageSize parseInt()
   var offset=(pno-1)*pageSize;
   pageSize=parseInt(pageSize);
   //5.发送sql语句并且返回返回结果
   pool.query(sql,["%"+key+"%",offset,pageSize],(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   });
   //6.执行成功
 });

// GIF 图
router.get('/myGif',(req,res)=>{
  res.send(
    [
      {'myGif':URL+'images/switch.gif'},
      {'myGif':URL+'images/switch1.gif'}
  ]
  );
});



module.exports=router;