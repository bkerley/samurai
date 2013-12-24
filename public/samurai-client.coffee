jQuery ($)->
  socket = io.connect "http://localhost"
  socket.emit 'client_ok'
