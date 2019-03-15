const express=require('express');
const cors=require('cors');
const bodyParser=require('body-parser');
const ninRouter=require('./routes/games');

// 建立服务器
var app=express();
app.listen(6605,()=>{
    console.log('服务器启动，监听端口6605...')
});

// 中间件
app.use(cors());
app.use(bodyParser.json());
//托管静态文件
app.use(express.static("public"));

//挂载
app.use('/',ninRouter);

