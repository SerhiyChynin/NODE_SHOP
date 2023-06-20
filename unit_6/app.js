
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
    res.render('main', {
        foo: 4,
        bar: 7,
        tata: 'hello'
    });  // render метод для загрузки файла
})

app.get('/sec', (req, res) => {
    res.render('sec', {
        one: 222,
        two: 333,
        three: 'https://cdn3.iconfinder.com/data/icons/ukraine-3/512/map_country_nation_ukraine_design_icons_free-256.png'
    });  // render метод для загрузки файла
})

app.get('/shop', (req, res) => {
    res.render('shop', {
        one: 'https://cdn2.iconfinder.com/data/icons/logos-brands-4/24/Apple-256.png',
        two: 'https://cdn2.iconfinder.com/data/icons/logos-brands-4/24/logo_brand_brands_logos_chrome-256.png',
        three: 'https://cdn2.iconfinder.com/data/icons/logos-brands-4/24/logo_brand_brands_logos_microsoft_store_windows-256.png',
        four: 'https://cdn2.iconfinder.com/data/icons/logos-brands-4/24/logo_brand_brands_logos_android-256.png',
        five: 'https://cdn2.iconfinder.com/data/icons/logos-brands-4/24/logo_brand_brands_logos_playstore_google-256.png'
    });  // render метод для загрузки файла
})

app.get('/cat', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/index2.html'));
})