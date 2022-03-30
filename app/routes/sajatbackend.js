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
  
  app.get('/jotulaj', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodoga_adatb'
    })
    
    connection.connect()
    
    connection.query('SELECT * from jo_tulaj', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
    
  
  })


  app.get('/rossztulaj', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodoga_adatb'
    })
    
    connection.connect()
    
    connection.query('SELECT * from rossz_tulaj', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
    
  
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

  app.get('/felhasznalok', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'zarodoga_adatb'
    })
    
    connection.connect()
    
    connection.query('SELECT * from users', function (err, rows, fields) {
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

    app.get('/emlek_lekerd', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      
      connection.query('SELECT * from emlekek', function (err, rows, fields) {
        if (err) throw err
      
        console.log(rows)
        res.send(rows)
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

    app.post('/kereses_felh', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let sz="SELECT * FROM users WHERE username LIKE '%"+req.body.bevitel1+"%'"
      connection.query(sz, function (err, rows, fields) {
        if (err) throw err
      
        res.send(rows)
      })
      
      connection.end()
      
  
    })


    app.post('/kereses_emlek', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let sz="SELECT * FROM emlekek WHERE szoveg LIKE '%"+req.body.bevitel1+"%'"
      connection.query(sz, function (err, rows, fields) {
        if (err) throw err
      
        res.send(rows)
      })
      
      connection.end()
      
  
    })


    
    app.post('/torles_felh', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let dt=new Date();
      connection.query("DELETE FROM users WHERE id ="+req.body.bevitel1+"", function (err, rows, fields) {
        if (err) throw err
      
        console.log("Sikeres törlés!")
        res.send("Sikeres törlés!")
      })
      
      connection.end()

    })


    app.post('/torles_emlek', (req, res) => {
      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'zarodoga_adatb'
      })
      
      connection.connect()
      let dt=new Date();
      connection.query("DELETE FROM emlekek WHERE gyerekkori_id ="+req.body.bevitel1+"", function (err, rows, fields) {
        if (err) throw err
      
        console.log("Sikeres törlés!")
        res.send("Sikeres törlés!")
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



