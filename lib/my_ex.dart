// import 'package:flutter/material.dart';
// import 'package:logger/logger.dart';
// import 'dart:async';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

// final logger = Logger();
// final pusher = PusherChannelsFlutter.getInstance();

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     await pusher.init(
//       apiKey: '455d1b1fe244971d681b',
//       cluster: 'eu',
//       useTLS: true,
//       onConnectionStateChange: onConnectionStateChange,
//       onError: onError,
//       onSubscriptionSucceeded: onSubscriptionSucceeded,
//       onEvent: onEvent,
//       onSubscriptionError: onSubscriptionError,
//       onDecryptionFailure: onDecryptionFailure,
//       onMemberAdded: onMemberAdded,
//       onMemberRemoved: onMemberRemoved,
//       // authEndpoint: "<Your Authendpoint>",
//       // onAuthorizer: onAuthorizer
//     );
//     await pusher.subscribe(
//       channelName: 'my-channel',
//       // onSubscriptionSucceeded: onSubscriptionSucceeded,
//       // onSubscriptionError: onSubscriptionError,
//       // onEvent: onEvent,
//       // onMemberAdded: onMemberAdded,
//       // onMemberRemoved: onMemberRemoved,
//     );
//     await pusher.connect();
//   } catch (e) {
//     logger.e(e, 'ERROR');
//     logger.e(pusher.connectionState, 'CONNECTION STATE');
//     logger.e(pusher.channels, 'channels');
//   }
// }

// dynamic onConnectionStateChange(String currentState, String previousState) {
//   logger.i(previousState, 'previousState');
//   logger.i(currentState, 'onConnectionStateChange');
// }

// dynamic onError(String message, int? code, dynamic e) {
//   logger.i(message, 'onError');
//   logger.i(code, 'code');
//   logger.i(e, 'error');
// }

// void onSubscriptionSucceeded(String channelName, dynamic data) {
//   logger.i("onSubscriptionSucceeded: $channelName data: $data");
//   final me = pusher.getChannel(channelName)?.me;
//   logger.i("Me: $me");
// }

// void onEvent(PusherEvent event) {
//   logger.i(event.eventName, 'onEvent');
//   logger.i(event.data, 'data');
// }

// void onSubscriptionError(String message, dynamic error) {
//   logger.i(message, 'onSubscriptionError');
//   logger.i(error, 'error');
// }

// dynamic onDecryptionFailure(String event, String reason) {
//   logger.i(event, 'onDecryptionFailure');
//   logger.i(reason, 'reason');
// }

// void onMemberAdded(String channelName, PusherMember member) {
//   logger.i(channelName, 'onMemberAdded');
//   logger.i(member.userId, 'member.userId');
//   logger.i(member.userInfo, 'member.userInfo');
// }

// void onMemberRemoved(String channelName, PusherMember member) {
//   logger.i(channelName, 'onMemberRemoved');
//   logger.i(member.userId, 'member.userId');
//   logger.i(member.userInfo, 'member.userInfo');
// }
