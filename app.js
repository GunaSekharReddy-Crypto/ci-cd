const http = require("http");

const VERSION = "QA Version";

http.createServer((req, res) => {
    res.write(`Application Running - ${VERSION}`);
    res.end();
}).listen(4000);

console.log("Application started on port 4000");
