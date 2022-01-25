// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:pedometer2/BackEnd/Storage.dart';
import 'package:pedometer2/scondPage/Parameters2.dart';
import 'package:jiffy/jiffy.dart';
import 'package:pedometer2/thirdPage/stepCount.dart';

Future<void> NotificationGoal() async {
  int time = Jiffy(DateTime.now()).hour;

  StepsNextPage();
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 1,
      channelKey: 'key1',
      title: "Цель на сегодня $step шагов",
      body: 'Цели можно скорректировать в настройках.', //добавь в json
    ),
    schedule: NotificationCalendar(
      hour: time,
      minute: 0,
      second: 0,
      millisecond: 0,
    ),
  );
}

Future<void> NotificationReport() async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 2,
      channelKey: 'key2',
      title: "Вы выполнили цель. Поздравляем!",
      body: 'Вы молодец!', //добавь в json
    ),
    schedule: NotificationCalendar(
      hour: 21,
      minute: 0,
      second: 0,
      millisecond: 0,
    ),
  );
}

Future<void> IfNotDoneNotificationReport() async {
  int remainderSteps = step - todaySteps;
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 3,
      channelKey: 'key2',
      title: "Осталось еще немного, $remainderSteps шагов",
      body: 'Вы отлично справляитесь!', //добавь в json
    ),
    schedule: NotificationCalendar(
      hour: 21,
      minute: 0,
      second: 0,
      millisecond: 0,
    ),
  );
}

Future<void> cancelScheduledNotifications1() async {
  await AwesomeNotifications().cancelNotificationsByChannelKey('key1');
}

Future<void> cancelScheduledNotifications2() async {
  await AwesomeNotifications().cancelNotificationsByChannelKey('key2');
}
