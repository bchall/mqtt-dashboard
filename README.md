# MQTT PI Dashboard

Yet another JavaScript dashboard project for use with RabbitMQ MQTT

## Prerequisite

* RabbitMQ 3.7.x
* rabbitmq_web_mqtt
* Eclipse Paho JavaScript Client
* Python (furture use for historical data)

## Recipe

* RabbitMQ 3.7.x
* rabbitmq_web_mqtt
* Eclipse Paho JavaScript Client
* Python (furture use for historical data)

## Payload

{
	"mem_usage": 0,
	"disk_usage": 0,
	"cpu_load": 0.00
}

## paho.js

### RabbitMQ

var wsbroker = "127.0.0.1"; // mqtt websocket enabled broker

var wsport = 15675 // port for above

### MQTT Topic
client.subscribe('#', {
			qos : 1
		});

### Misc.

