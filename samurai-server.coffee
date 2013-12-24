http = require 'http'
socket = require 'socket.io'
static = require 'node-static'

console.log "starting"
file = new static.Server './public'

server = http.createServer (req, res) ->
  file.serve req, res, (err, result) ->
    console.log req.url
    if err
      console.log "#{req.url} #{err.message}"
      res.writeHead err.status, err.headers
      res.write err.message
      res.end()

server.listen 8420, ->
  console.log "listening http://localhost:8420"
