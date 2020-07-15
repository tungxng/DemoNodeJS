const express = require('express');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const bcrypt = require('bcrypt');
const app = express();
const nodemailer = require('nodemailer');
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
 

// email connection

var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth:{
        user:'nguyenvanphong_t62@hus.edu.vn',
        pass:'phong@2019'
    }
});

// parse application/json
app.use(bodyParser.json())
// views 
app.set('view engine', 'ejs');
app.set('views', 'views');

//database connection for storing data
const connection=mysql.createConnection({
    host :'localhost',
    user: 'root',
    password:'',
    database: 'web'
});
connection.connect();

app.get('/',(req,res)=>
{

    res.render('index');
});
app.post('/',(req,res)=>
{
    var myPass;
    function Store(pass){
    var verify = Math.floor((Math.random() * 10000000) + 1);

        var mailOption = {
            from :'nguyenvanphong_t62@hus.edu.vn', // sender this is your email here
            to : `${req.body.Email}`, // receiver email2
            subject: "Account Verification",
            html: `<h1>Bạn hãy xác thực để xác minh tài khoản <h1><br><hr><p>Xin mời bạn hãy nhấp vào đường link sau đây để xác thực .</p>
        <br><a href="http://localhost:3000/verify/?verify=${verify}">Click vào để xác thực </a>`
        }

    var userData= {email:req.body.Email, password :pass,verify: verify};
    connection.query("INSERT INTO verify SET?",userData,(err,result)=>
    {
        if(err){
            console.log(err);
        }else {
            transporter.sendMail(mailOption,(error,info)=>{
                if(error){
                    console.log(error)
                }else{

                    let userdata = {
                        email : `${req.body.Email}`,
                    }
                    res.cookie("UserInfo",userdata);
                    res.send("Your Mail Send Successfully")
                }
            })
            console.log('Data Successfully insert')
        }
    });
    }


    bcrypt.genSalt(10, function(err, salt) {
        bcrypt.hash(req.body.Password, salt, function(err, hash) {
            // Store hash in your password DB.
           if(err){
               console.log(err);
           }else{
               Store(hash);
           } 

         });
    });
    console.log(myPass)
    // var userData= {email:req.body.Email, password :Password};
    // connection.query("INSERT INTO verify SET?",userData,(err,result)=>
    // {
    //     if(err){
    //         console.log(err);
    //     }else{
    //         console.log("Data Successfully insert ");
    //     }
    // });
    // console.log(req.body);
});

// verification 
app.get('/verify/',(req,res)=>{
    function activateAccount(verify) {
        if(verify == req.query.verify){
            connection.query("UPDATE verify SET active = ?","true",(err,result)=>{
                if(err){
                    console.log(err);
                }
                else{
                    let userdata = {
                        email : `${req.body.Email}`,
                        verify: "TRUE"
                    }
                    res.cookie("UserInfo",userdata);
                    res.send('<h1>Account Verification Successfully</h1>');
                }
            })
        }else{
            res.send("<h1>verification failed</h1>")
        }
    };

    connection.query("SELECT verify.verification FROM verify WHERE email = ?",req.cookies.UserInfo.email,(err,result) => {
        if(err){
            console.log(err);
        }else{
            activateAccount(result[0].verification);
            // var hash = result[0].password;
            // bcrypt.compare(pass, hash, function(err, res) {
            //     if(err){
            //         res.json({msg:"ERROR"})
            //     }else{
            //         LoginSuccess();
            //     }
            // });
        }
    })
});
// app.get('/dashboard',(req,res)=>{
//     res.render('dashboard');
// });

// app.get('/login',(req,res)=>{
//     res.render('login');
// });

// app.post('/login',(req,res)=>{
//     var email = req.body.Email;
//     var pass = req.body.Password;

//     function LoginSuccess() {
//         let userdata = {
//             email : `${req.body.Email}`,
//             verify: "TRUE"
//         }
//         res.cookie("UserInfo",userdata);
//         res.json({verify: "true"});
//     }
//     connection.query('SELECT * FROM verify WHERE email = ?',email,(err,result)=>{
//         if(err){
//             console.log(err);
//         }else{
//             var hash = result[0].password;
//             bcrypt.compare(pass, hash, function(err, res) {
//                 if(err){
//                     res.json({msg:"ERROR"})
//                 }else{
//                     LoginSuccess();
//                 }
//             });
//         }
//     })
// })
app.listen(3000);