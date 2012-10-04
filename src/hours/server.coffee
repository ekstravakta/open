express = require 'express'
app = express()
app.get '/', (req, res) ->
	res.send 'Hello World'
app.get '/get/project/', (req, res) ->
	res.send 'Hello Foo'
app get '/project/:id', (req, res) ->
        res.send("{'id': 1, 'name' : 'FooProject'}");
    });
});
app.listen(3000)
