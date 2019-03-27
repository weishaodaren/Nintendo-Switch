const express=require('express');
const cors=require('cors');
const bodyParser=require('body-parser');
const ninRouter=require('./routes/games');

// 建立服务器
var app=express();
app.listen(6605,()=>{
    console.log('服务器启动，监听端口6605...')
});

//跨域问题  引入
app.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080",
    "http://127.0.0.1:6606","http://localhost:6606",
    "http://127.0.0.1:3000","http://localhost:3000"],
    credentials:true
  }));
  // 借助cors跨域 下载express-session 配置
  const session =require("express-session");
  app.use(session({
      secret:"128位随机字符",//安全字符串
      resave:false,        //每次请求是否都更新数据
      saveUninitialized:true,//初始化保存数据
      cookie:{
        maxAge:1000*60*60*8
      }
  }));
  
// 中间件
// app.use(cors());
app.use(bodyParser.json());
//托管静态文件
app.use(express.static("public"));

//挂载
app.use('/',ninRouter);

