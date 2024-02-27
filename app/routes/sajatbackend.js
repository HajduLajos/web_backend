const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function (app) {
  app.use(function (req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });


  var connection
  function kapcsolat() {
    var mysql = require('mysql')

    connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'web_games_fanatic'
    })

    connection.connect()

  }


  app.get('/film', (req, res) => {
    kapcsolat()
    connection.query('SELECT * from film', function (err, rows, fields) {
      if (err) throw err
      console.log(rows)
      res.send(rows)
    })

    connection.end()
  })


  app.get('/adminhibajelentes', (req, res) => {
    kapcsolat()
    connection.query('SELECT * from hibabejelentes', function (err, rows, fields) {
      if (err) throw err
      console.log(rows)
      res.send(rows)
    })

    connection.end()
  })


  app.post('/szavazatfelvitel', (req, res) => {
    kapcsolat()
    connection.query('insert into szavazat values (null,' + req.body.bevitel1 + ')', function (err, rows, fields) {
      if (err) {
        console.log("Hiba")
        res.send("Hiba")
      }
      else {
        console.log("Szavazatát rögzítettük!")
        res.send("Szavazatát rögzítettük!")
      }
    })
    connection.end()
  })


  app.post('/hibajelentes', (req, res) => {
    kapcsolat()
    connection.query(`INSERT INTO hibabejelentes VALUES (NULL, '${req.body.bevitel1}', '${req.body.bevitel2}', '${req.body.bevitel3}');`, function (err, rows, fields) {
      if (err) {
        console.log("Hiba")
        res.send("Hiba")
      }
      else {
        console.log("Hibabejelentés megtörtént!")
        res.send("Hibabejelentés megtörtént!")
      }
    })
    connection.end()
  })



  app.post('/keres', (req, res) => {
    kapcsolat()
    let parancs = 'SELECT * from film where film_cim like "%' + req.body.bevitel1 + '%"'
    connection.query(parancs, function (err, rows, fields) {
      if (err) {
        console.log("Hiba")
      }
      else {
        console.log(rows)
        res.send(rows)
      }

    })

    connection.end()
  })

  // saját backend végpont
  //------------------------------------------------------------------

  app.get('/PcJatekok', (req, res) => {

    kapcsolat()

    connection.query('SELECT * FROM jatekok ', (err, rows, fields) => {
      if (err) throw err

      console.log(rows)
      res.send(rows)
    })



    connection.end()
  })

  //------------------------------------------------------------------

  app.get('/Comment', (req, res) => {

    kapcsolat()

    connection.query('SELECT * FROM comment ORDER BY comment.Comment_id DESC', (err, rows, fields) => {
      if (err) throw err

      console.log(rows)
      res.send(rows)
    })



    connection.end()
  })

  //SELECT film.film_cim,COUNT(*) AS darabszam FROM szavazat INNER JOIN film ON film_id=szavazat.szavazat_film GROUP BY film_id
  //------------------------------------------------------------------

  app.get('/Diagram', (req, res) => {

    kapcsolat()

    connection.query('SELECT jatekok.jatekok_nev,COUNT(*) AS darabszam FROM jatekok INNER JOIN szavazat_jatekok ON jatekok_id=szavazat_jatekok.szavazat_jatek GROUP BY jatekok_id', (err, rows, fields) => {
      if (err) throw err

      console.log(rows)
      res.send(rows)
    })



    connection.end()
  })

  //------------------------------------------------------------------
  app.get('/Diagram_atlag', (req, res) => {

    kapcsolat()

    connection.query('SELECT jatekok.jatekok_nev,AVG(jatekok.jatekok_ar) AS atlag FROM jatekok GROUP BY jatekok_eszkozid', (err, rows, fields) => {
      if (err) throw err

      console.log(rows)
      res.send(rows)
    })



    connection.end()
  })
  //------------------------------------------------------------
  app.delete('/TorlesJatekok', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM jatekok WHERE jatekok_id=${req.body.bevitel1}`,
      function (err, rows, fields) {
        if (err) {
          console.log("Hiba")
          res.send("Hiba")
        }
        else {
          console.log("Sikeresen törölve!")
          res.send("Sikeresen törölve!")
        }
      })
    connection.end()
  })

  //------------------------------------------------------------------

  app.delete('/TorlesComment', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM comment WHERE Comment_id=${req.body.bevitel1}`,
      function (err, rows, fields) {
        if (err) {
          console.log("Hiba")
          res.send("Hiba")
        }
        else {
          console.log("Sikeresen törölve!")
          res.send("Sikeresen törölve!")
        }
      })
    connection.end()
  })

  //------------------------------------------------------------------

  app.delete('/TorlesHibabejelentes', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM hibabejelentes WHERE hibabejelentes_id=${req.body.bevitel1}`,
      function (err, rows, fields) {
        if (err) {
          console.log("Hiba")
          res.send("Hiba")
        }
        else {
          console.log("Sikeresen törölve!")
          res.send("Sikeresen törölve!")
        }
      })
    connection.end()
  })

  //------------------------------------------------------------------

  app.get('/osszesAlkatresz', (req, res) => {

    kapcsolat()

    connection.query('SELECT * FROM alkatreszek', (err, rows, fields) => {
      if (err) throw err

      console.log(rows)
      res.send(rows)
    })



    connection.end()
  })

  //------------------------------------------------------------------


  app.post('/keresszoveg', (req, res) => {
    kapcsolat()

    connection.query(`SELECT * FROM alkatreszek INNER JOIN komponens ON alkatresz_komponensid=komponens_id WHERE komponens_id = ${req.body.bevitel1}`, (err, rows, fields) => {
      if (err) {
        console.log("Hiba")
      }
      else {
        console.log(rows)
        res.send(rows)
      }

    })
    connection.end()
  })


  //------------------------------------------------------------------

  app.get('/KomponensSeged', (req, res) => {

    kapcsolat()

    connection.query('SELECT * FROM komponens', (err, rows, fields) => {
      if (err) throw err

      console.log(rows)
      res.send(rows)
    })



    connection.end()
  })

  //------------------------------------------------------------------

  app.get('/pcAlkatresz', (req, res) => {

    kapcsolat()

    connection.query('SELECT * FROM alkatreszek WHERE alkatresz_eszkozid=1', (err, rows, fields) => {
      if (err) throw err

      console.log(rows)
      res.send(rows)
    })



    connection.end()
  })

  //------------------------------------------------------------------

  app.delete('/Alkatresztorles', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM alkatreszek WHERE alkatresz_id=${req.body.bevitel1};`,
      function (err, rows, fields) {
        if (err) {
          console.log("Hiba!")
          res.send("Hiba!")
        }
        else {
          console.log("Sikeres adattörlés!")
          res.send("Sikeres adattörlés!")
        }
      })
    connection.end()
  })

//---------------------------------------------------------------------
//UPDATE comment SET Comment_szoveg = '' WHERE comment.Comment_id = 41;

app.post('/commentAtir', (req, res) => {
  kapcsolat()
  
  connection.query(`UPDATE comment SET Comment_szoveg = '${req.body.bevitel1}' WHERE comment.Comment_id = ${req.body.bevitel2}`, (err, rows, fields) => {
  if (err) {
    console.log("Hiba")
  }
  else{
    console.log(rows)
    res.send(rows)
  }
  
  })
  connection.end() 
  })


};
