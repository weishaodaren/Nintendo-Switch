const express=require('express');
const cors=require('cors');
const bodyParser=require('body-parser');

// 建立服务器
var app=express();
app.listen(6605,()=>{
    console.log('服务器启动，监听端口6605...')
});

// 中间件
app.use(cors());
app.use(bodyParser.json());