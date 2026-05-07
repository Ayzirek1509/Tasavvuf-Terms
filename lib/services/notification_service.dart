import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../data/hadiths.dart';

class NotificationService {
  NotificationService._();

  static final FlutterLocalNotificationsPlugin _plugin = FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const settings = InitializationSettings(android: android);
    await _plugin.initialize(settings);
    await _plugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  static Future<void> scheduleDailyHadithReminder({bool enabled = true}) async {
    await _plugin.cancel(40);
    if (!enabled) return;

    final text = hadithsList.isNotEmpty ? hadithsList.first['short'] ?? '' : 'Bugungi hadis eslatmasi';
    const details = NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_hadith_channel',
        '40 hadis eslatmalar',
        channelDescription: 'Har kuni bitta hadis eslatmasi',
        importance: Importance.high,
        priority: Priority.high,
      ),
    );

    await _plugin.periodicallyShow(
      40,
      'Bugungi hadis',
      text,
      RepeatInterval.daily,
      details,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }
}
