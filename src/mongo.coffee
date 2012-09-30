mongo = require('mongoskin')
db = mongo.db('localhost/test')
#db.collection('person').insert({name: 'Oyvind'})
db.collection('person').insert({name: 'Katka'})
db.collection('person').find().toArray( (err, result) ->
	for p in result
		console.log p.name
		
)
