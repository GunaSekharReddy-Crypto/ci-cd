const http = require("http");

http.createServer(function (req, res) {
    res.write("CI/CD Pipeline Demo Running Successfully 🚀");
    res.end();
}).listen(3000);
