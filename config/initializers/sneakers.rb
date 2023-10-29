require 'sneakers'

bunny_connection_options = {
  host: A9n.host,
  port: A9n.rabbitmq_port,
  vhost: "/",
  username: A9n.rabbitmq_username,
  password: A9n.rabbitmq_password
}

Sneakers.configure(
  connection: Bunny.new(bunny_connection_options),
  durable: false,
  workers: 1
)