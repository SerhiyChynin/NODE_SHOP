const http = require('http');
const fs = require('fs');
const { log } = require('console');

// http.createServer().listen(3000);
http.createServer((req, res) => {
    console.log(req.url);
    console.log(req.method);
    console.log(req.headers['user-agent']);
    res.setHeader('Content-Type', 'text/html; charset=utf-8;' )
    if (req.url == '/') {
        res.end('Hello')
    } else if (req.url == '/cat'){
        res.end('category <h2>HELLO</h2> Привет Вася!');
    } else if (req.url == '/dat') {
        let myFile = fs.readFileSync('1.dat');
        console.log(myFile);
        res.end(myFile)
    }
}).listen(3000);