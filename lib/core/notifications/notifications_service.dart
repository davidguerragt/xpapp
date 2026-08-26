import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:xpapp/core/navigation/router.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  final view = message.data['view'];
  final transactionId = message.data['transactionId'];

  if (view == 'transaction_detail' &&
      transactionId != null &&
      transactionId.isNotEmpty) {
    debugPrint('Background message received: $transactionId');
  }
}

class NotificationsService {
  NotificationsService({
    FirebaseMessaging? firebaseMessaging,
    FlutterLocalNotificationsPlugin? localNotifications,
  }) : _localNotifications =
           localNotifications ?? FlutterLocalNotificationsPlugin(),
       _firebaseMessaging = firebaseMessaging ?? FirebaseMessaging.instance;

  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotifications;

  Future<void> init() async {
    await _requestPermissions();
    await _initRemoteNotifications();
    await _initLocalNotifications();
  }

  Future<void> _requestPermissions() async {
    // Initialize local notifications here
    final actualSettings = await _firebaseMessaging.getNotificationSettings();
    debugPrint(
      'Actual notification settings: ${actualSettings.authorizationStatus}',
    );

    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    debugPrint('Notification settings: ${settings.authorizationStatus}');
  }

  Future<void> _initRemoteNotifications() async {
    final token = await _firebaseMessaging.getToken();
    _firebaseMessaging.onTokenRefresh.listen((newToken) {
      debugPrint('FCM Token refreshed: $newToken');
    });
    debugPrint('FCM Token: $token');

    await _initLocalNotifications();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen(_foregroundMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleOpenedMessage);

    final initialMessage = await _firebaseMessaging.getInitialMessage();
    if (initialMessage != null) {
      _handleOpenedMessage(initialMessage);
    }
  }

  void _foregroundMessageHandler(RemoteMessage message) {
    if (message.notification != null) {
      debugPrint('Foreground message received: ${message.notification!.title}');
      _showLocalNotification(message);
    }
  }

  void _handleOpenedMessage(RemoteMessage message) {
    final view = _extractView(message);
    final transactionId = _extractTransactionId(message);

    if (view == 'transaction_detail' &&
        transactionId != null &&
        transactionId.isNotEmpty) {
      router.goNamed(
        Routes.transactionDetail,
        pathParameters: {'id': transactionId},
      );
    }
  }

  String? _extractView(RemoteMessage message) {
    final data = message.data;
    return data['view'] ?? data['screen'];
  }

  String? _extractTransactionId(RemoteMessage message) {
    final data = message.data;
    return data['transactionId'] ??
        data['transaction_id'] ??
        data['id'] ??
        data['transaction'] ??
        data['transactionID'];
  }

  Future<void> _initLocalNotifications() async {
    // Initialize local notifications here

    const canal = AndroidNotificationChannel(
      'canal_alta_prioridad',
      'Avisos importantes',
      importance: Importance.high, // sin esto no suena ni aparece flotante
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(canal);

    await _localNotifications.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      ),
      onDidReceiveNotificationResponse: (response) {
        final payload = response.payload;
        if (payload == null || payload.isEmpty) {
          return;
        }

        final parts = payload.split('|');
        //final view = parts.length > 1 ? parts[0] : null;
        final transactionId = parts.length > 1 ? parts[1] : payload;

        if (transactionId.isNotEmpty) {
          router.goNamed(
            Routes.transactionDetail,
            pathParameters: {'id': transactionId},
          );
        }
      },
    );
  }

  Future<void> _showLocalNotification(RemoteMessage message) async {
    const androidDetails = AndroidNotificationDetails(
      'default_channel',
      'General',
      channelDescription: 'General notifications',
      importance: Importance.max,
      priority: Priority.high,
    );

    const details = NotificationDetails(android: androidDetails);

    final view = _extractView(message);
    final transactionId = _extractTransactionId(message);

    await _localNotifications.show(
      id: 0,
      title: message.notification?.title ?? 'Notificación',
      body: message.notification?.body ?? 'Esta es una notificación local',
      notificationDetails: details,
      payload: view != null && transactionId != null
          ? '$view|$transactionId'
          : transactionId ?? '',
    );
  }
}
