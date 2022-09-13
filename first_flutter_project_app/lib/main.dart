import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_project_app/Login_register_screen/login.dart';
import 'package:first_flutter_project_app/Login_register_screen/phone_login.dart';
import 'package:first_flutter_project_app/home_screens/edit_profile.dart';
import 'package:first_flutter_project_app/home_screens/home.dart';
import 'package:first_flutter_project_app/realtime_database.dart';
import 'package:first_flutter_project_app/testdata.dart';
import 'package:first_flutter_project_app/utilities/drawer.dart';
import 'package:first_flutter_project_app/utilities/testthree.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Login_register_screen/register.dart';
import 'home_screens/allsettings.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
      null,
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupkey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
      debug: true
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Heart Disease Prediction',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: ElevatedButton(
                onPressed: () async{
                  String localTimeZone = await AwesomeNotifications().getLocalTimeZoneIdentifier();
                  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
                    if (!isAllowed) {
                      // This is just a basic example. For real apps, you must show some
                      // friendly dialog box before call the request method.
                      // This is very important to not harm the user experience
                      AwesomeNotifications().requestPermissionToSendNotifications();
                    }else{
                      AwesomeNotifications().createNotification(
                          content: NotificationContent(
                              id: 10,
                              channelKey: 'basic_channel',
                              title: 'Simple Notification',
                              body: 'Simple body',
                              notificationLayout: NotificationLayout.BigPicture,
                              bigPicture: 'asset://assets/images/logo.png'),
);
                      schedule: NotificationCalendar(second: 5, timeZone: localTimeZone, repeats: false);
                    }
                  });
                },
                child: Text('generate notification'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
