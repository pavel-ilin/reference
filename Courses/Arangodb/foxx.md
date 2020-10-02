# Setup

- Create in the root directory manifest.json:

`{
  "engines": {
    "arangodb": "^3.0.0"
  },
  "main": "index.js"
}`

- Create index.js in the root:

- Examples of get requests:
`'use strict';
const createRouter = require('@arangodb/foxx/router')
const router = createRouter()

module.context.use(router)

router.get('/hello', function(req, res) {
  res.send('hello');
})
.response(['text/plain'], 'Hello from foxx')
.summary('hello message')
.description('prints hello');

router.get('/:name', function(req, res) {
  res.send(`Hello ${req.pathParams.name}`)
})
.pathParam('name', joi.string().required(), 'Name of the user')
.response(['text/plain'], 'Say hi to specific user')
.summary('user hello')
.description('prints hello');
`

- Example of post request:
`router.post('/tasks', function(req, res) {
  const data = req.body;
  const meta = foxxColl.save(req.body)
  res.send(Object.assign(data, meta))
})
.body(joi.object().required(), 'Task to add to the collection')
.response(joi.object().required(), 'Task saved in the collection')
.summary('Save a task')
.description('Save a task')
`
- Example of AQL get request:
`router.get('/tasks', function(req, res) {
  const keys = db._query(aql`
    FOR task IN ${tasksColl}
    RETURN task._key
    `)
    res.send(keys)
})
.response(joi.array().items(
  joi.string().required()
).required(), "List of tasks keys")
.summary('List of tasks')
.description('List of tasks');`

- Create .zip archive with project and upload to the arangodb web interface
