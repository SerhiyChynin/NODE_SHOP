
const express = require('express');
const app = express();
app.set('view engine', 'pug');
app.use(express.static('public')); // public - имя папки где хранится статика

//подключаем модуль mySql
const mysql = require('mysql');
//настраиваем модуль
let conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'node_shop'
})

app.listen(3000, () => {
    console.log('node express server');
});

app.get('/', (req, res) => {
    conn.query(
        'SELECT * FROM goods',
        function(err, res) {
            if (err) throw err; //если ошибка бросаем исключение
        }
    );
    res.render('main', {
        foo: 4,
        bar: 7,
        tata: 'hello'
    });  // render метод для загрузки файла
})



