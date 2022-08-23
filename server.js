const express = require("express");
const app = express();
const cors = require("cors");
app.use(cors());
app.use(express.json());

//create connection from database
const mysql = require("mysql");
const dbconnect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'socialcms'
});


app.get("/scms", function (req, res) {
    var sql = "select * from scms order by username desc";
    dbconnect.query(sql, function (error, rows, fields) {
        var jsonData = JSON.stringify(rows);// array to json
        res.write(jsonData + "Data Added Successfully");
        res.end();
    })
});



app.post("/savescms", function (req, res) {

    var username = req.body.username;
    var mobile = req.body.mobile;
    var password = req.body.password;
    var retypepass = req.body.retypepass;
    var mediaurl = req.body.mediaurl;
    var images  = req.body.images;
    var age     = req.body.age;
    var comments = req.body.comments;
    var permanentaddress = req.body.permanentaddress;
    var sql = "insert into scms(username, mobile, password, retypepass,mediaurl,images, age,comments,permanentaddress ) values('" + username + "', '" + mobile + "','" + password + "','" + retypepass + "','" + mediaurl + "','" + images + "','" + age + "','" + comments + "','" + permanentaddress + "')";
    dbconnect.query(sql, function (error, rows, fields) {
        res.write("Record Added Successfully");
        res.end();
    })
});



app.listen(1234, function () {

});