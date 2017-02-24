# RabbitMQ test

## Installation

You have to have rabbitMQ running and accepting:

```
brew install rabbitmq

brew services start rabbitmq
```

### web interface
`http://localhost:15672/`

```
name: guest
pwd: guest
```

Then jump into directory:

```
cd rabbitmq_test
```

And just run bundle to install dependency:

```
bundle
```

## Usage

to run listener on default port and listenning to queue named `hello` run:

```
ruby receiver.rb
```

Receiver will be listening to defaut rabbitMQ and as a quick test you can try sending him text:

```
ruby sender.rb
```
