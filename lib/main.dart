import 'package:flutter/material.dart';
import 'package:meedu_player_example/pages/videopage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = {
      "Videos": (_) =>VideoPageDemo (),

    };
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: NetworkWithSubtitlesPage(),
      // home: NetworkPageDemo(),
      // home: MultiResolutionPage(),
      home: HomePage(
        routes: routes,
      ),
      routes: routes,
    );
  }
}

class HomePage extends StatelessWidget {
  final Map<String, Widget Function(BuildContext)> routes;
  const HomePage({Key key, @required this.routes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: routes.keys
              .map(
                (key) => FlatButton(
                  child: Text(key),
                  onPressed: () {
                    Navigator.pushNamed(context, key);
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
