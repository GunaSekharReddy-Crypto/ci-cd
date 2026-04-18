const http = require("http");

http.createServer(function (req, res) {
    res.write("CI/CD Pipeline Version 2 Deployed Successfully 🚀");
    res.end();
}).listen(3000);
