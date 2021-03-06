import 'package:flutter/material.dart';
import './screens/auth_screen.dart';
import './screens/welcome_page.dart';
import 'package:lodge/screens/detail_page.dart';
import 'package:lodge/widgets/bottomNavigationBar.dart';
import './provider/info_provider.dart';
import 'package:provider/provider.dart';
import './provider/info_class.dart';
import './screens/detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => HouseInfo(),),
        ChangeNotifierProvider(create: (BuildContext context) => InfoProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WelcomePage(),
        routes: {
DetailPage.routeName :(context)=> DetailPage(),
AuthenticationScreen.routeName :(context)=> AuthenticationScreen(),
          CustomNavigationBar.routeName :(context)=> CustomNavigationBar(),
        },
      ),
    );
  }
}
