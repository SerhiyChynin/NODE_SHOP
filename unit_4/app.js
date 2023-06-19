
const express = require('express');
let app = express();
app.use(express.static('public')); // public - имя папки где хранится статика

app.listen(3000, () => {
    console.log('node express server');
});

app.get('/', (req, res) => {
    console.log('load /');
    res.render('index.html'); // render метод для загрузки файла
})

app.get('/cat', (req, res) => {
    res.render('index2.html');
})