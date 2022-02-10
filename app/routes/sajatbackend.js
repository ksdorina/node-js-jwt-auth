const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");
const fileupload = require("express-fileupload");
//

//
 

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.get('/', (req, res) => {
    res.send('Hello World!')
  })
  
  
  
  app.get('/mostani', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodoga_adatb'
    })
    
    connection.connect()
    
    connection.query('SELECT * from elmenyek ORDER BY elmenyek.datum DESC, elmenyek.elmeny_id DESC', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
    
  
  })
  
    app.post('/elmenyfelvitel', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let dt=new Date();
      let teljesdat=dt.getFullYear()+"-"+(dt.getMonth()+1)+"-"+(dt.getDate()+1);
      connection.query("INSERT INTO elmenyek VALUES (NULL, '"+teljesdat+"', '"+req.body.bevitel1+"', '"+req.body.bevitel2+"')", function (err, rows, fields) {
        if (err) throw err
      
        console.log("Sikeres felvitel!")
        res.send("Sikeres felvitel!")
      })
      
      connection.end()
      
  
    })
  
    app.get('/szemely_lekerd', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      
      connection.query('SELECT * from szemelyek', function (err, rows, fields) {
        if (err) throw err
      
        console.log(rows)
        res.send(rows)
      })
      
      connection.end()
      
    
    })
  
    app.post('/szemadatfelvitel', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let dt=new Date();
      connection.query("INSERT INTO szemelyek VALUES (NULL, '"+req.body.beviteld+"', '', '"+req.body.bevitel1+"', '', '"+req.body.bevitel2+"','"+req.body.bevitel3+"', '')", function (err, rows, fields) {
        if (err) throw err
      
        console.log("Sikeres felvitel!")
        res.send("Sikeres felvitel!")
      })
      
      connection.end()
      
  
    })
  
    app.post('/kedvelemfelvitel', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let dt=new Date();
      connection.query("INSERT INTO kedvelem VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"', '"+req.body.bevitel3+"', '"+req.body.bevitel4+"','"+req.body.bevitel5+"', '"+req.body.bevitel6+"', '"+req.body.bevitel7+"','"+req.body.bevitel8+"')", function (err, rows, fields) {
        if (err) throw err
      
        console.log("Sikeres felvitel!")
        res.send("Sikeres felvitel!")
      })
      
      connection.end()
      
  
    })
  

    app.post('/torles', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let dt=new Date();
      connection.query("DELETE FROM elmenyek WHERE elmeny_id ="+req.body.bevitel1+"", function (err, rows, fields) {
        if (err) throw err
      
        console.log("Sikeres törlés!")
        res.send("Sikeres törlés!")
      })
      
      connection.end()
      
  
    })

    app.post('/kereses', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let sz="SELECT * FROM elmenyek WHERE szoveg LIKE '%"+req.body.bevitel1+"%' ORDER BY elmenyek.datum DESC, elmenyek.elmeny_id DESC"
      connection.query(sz, function (err, rows, fields) {
        if (err) throw err
      
        res.send(rows)
      })
      
      connection.end()
      
  
    })

    app.post('/elmenyfelvitel', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let dt=new Date();
      let teljesdat=dt.getFullYear()+"-"+(dt.getMonth()+1)+"-"+(dt.getDate()+1);
      connection.query("INSERT INTO elmenyek VALUES (NULL, '"+teljesdat+"', '"+req.body.bevitel1+"', '"+req.body.bevitel2+"')", function (err, rows, fields) {
        if (err) throw err
      
        console.log("Sikeres felvitel!")
        res.send("Sikeres felvitel!")
      })
      
      connection.end()
      
  
    })

    app.use(fileupload());
  app.post("/upload", (req, res) => {
    const newpath = "./kepek/";
    const file = req.files.file;
    const filename = file.name;
  
    file.mv(`${newpath}${filename}`, (err) => {
      if (err) {
        return res.status(500).send({ message: "File upload failed", code: 200 });
      }
        return res.status(200).send({ message: "File Uploaded", code: 200 });
    });
  });
  
};



