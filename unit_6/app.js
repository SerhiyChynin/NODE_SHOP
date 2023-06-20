
const express = require('express');
const app = express();
app.set('view engine', 'pug');
app.use(express.static('public')); // public - имя папки где хранится статика
// константа для получения размещения приложения в файловой структуре
const path = require('path');


app.listen(3000, () => {
    console.log('node express server');
});

app.get('/', (req, res) => {
    res.render('main');  // render метод для загрузки файла
})

app.get('/cat', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/index2.html'));
})