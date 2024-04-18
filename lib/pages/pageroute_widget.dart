import 'package:flutter/material.dart';

class PageRouteWidget extends StatelessWidget {
  const PageRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PageRouteWidget Example',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second page when the button is pressed
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the home page when the button is pressed
            Navigator.pop(context);
          },
          child: Text('Go back to Home Page'),
        ),
      ),
    );
  }
}
