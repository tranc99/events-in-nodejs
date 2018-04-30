net = require "net"

server = net.createServer (socket) ->
  socket.on "data", (data) ->
    socket.write "localhost says: #{data}"
server.listen 8888
