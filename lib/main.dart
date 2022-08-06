import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:pusher_client/pusher_client.dart';

final logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // PusherClient pusher = PusherClient(
  //   '455d1b1fe244971d681b',
  //   PusherOptions(),
  // );

  PusherOptions options = PusherOptions(
    cluster: "eu",
    encrypted: false,
    // wsPort: 6001,
  );

  PusherClient pusher = PusherClient(
    '455d1b1fe244971d681b',
    options,
    autoConnect: false,
  );

  Channel channel = pusher.subscribe("my-channel");

  pusher.connect();

// connect at a later time than at instantiation.

  pusher.onConnectionStateChange((state) {
    logger.i(
        "previousState: ${state!.previousState}, currentState: ${state.currentState}");
  });

  pusher.onConnectionError((error) {
    logger.e("error: ${error!.message}");
    logger.e("error: ${error.exception}");
  });

// Subscribe to a private channel

// Bind to listen for events called "order-status-updated" sent to "private-orders" channel
  channel.bind("my-event 1", (PusherEvent? event) {
    logger.i(event!.data);
    logger.i(event.eventName);
  });
  channel.bind("my-event 2", (PusherEvent? event) {
    logger.i(event!.data);
    logger.i(event.eventName);
  });

// // Unsubscribe from channel
//   pusher.unsubscribe("private-orders");

// // Disconnect from pusher service
//   pusher.disconnect();
}
