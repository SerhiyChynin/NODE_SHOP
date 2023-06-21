
const express = require('express');
const app = express();
app.set('view engine', 'pug');
app.use(express.static('public')); // public - имя папки где хранится статика

//подключаем модуль mySql
const mysql = require('mysql2');
//настраиваем модуль
let conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'shop'
});

app.listen(3000, () => {
    console.log('node express server');
});

app.get('/', (req, result) => {
    conn.query(
        'SELECT * FROM goods',
        function(err, res) {
            if (err) throw err; //если ошибка бросаем исключение
            // console.log(res);
            let goods = {};
            for (let i = 0; i < res.length; i++){
                goods[res[i]['id']] = res[i];
            }
            // console.log(goods);
            console.log(JSON.parse(JSON.stringify(goods)));
            result.render('main', {
                foo: 4,
                tata: 'hello',
                goods: JSON.parse(JSON.stringify(goods))
    });
        }
    );

})



