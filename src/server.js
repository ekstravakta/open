var http = require('http');

var server = http.createServer(function (request, response) {
   response.writeHead(200, {"Content-Type": "text/plain"});
     response.end("Server Reply!");
});

server.listen(8010);
console.log("Server running at http://127.0.0.1:8010/");
