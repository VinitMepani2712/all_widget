import 'package:all_widget/components/codepage/show_code_file.dart';
import 'package:all_widget/components/textstyle_support/textstyle.dart';
import 'package:flutter/material.dart';

class TabAppBar extends StatelessWidget {
  const TabAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 206, 122, 122),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showTabBarCode(context);
                },
                child: Text(
                  'Tab App Bar',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black26),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodePage(
                      code: _tabBarCode,
                    ),
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Show Code',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final String _tabBarCode = '''
import 'package:all_widget/codepage/show_code_file.dart';
import 'package:all_widget/textstyle/textstyle.dart';
import 'package:flutter/material.dart';

class TabAppBar extends StatelessWidget {
  const TabAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 206, 122, 122),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showTabBarCode(context);
                },
                child: Text(
                  'Tab App Bar',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black26),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodePage(
                      code: _tabBarCode,
                    ),
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Show Code',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

void _showTabBarCode(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => TabBarPage(),
    ),
  );
}

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Example'),
      ),
      body: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.table_bar_outlined)),
                Tab(icon: Icon(Icons.table_restaurant)),
                Tab(icon: Icon(Icons.local_drink_sharp)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Burger')),
              Center(child: Text('Pizza')),
              Center(child: Text('Drinks')),
            ],
          ),
        ),
      ),
    );
  }
}''';
}

void _showTabBarCode(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => TabBarPage(),
    ),
  );
}

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar Example'),
      ),
      body: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.table_bar_outlined)),
                Tab(icon: Icon(Icons.table_restaurant)),
                Tab(icon: Icon(Icons.local_drink_sharp)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Burger')),
              Center(child: Text('Pizza')),
              Center(child: Text('Drinks')),
            ],
          ),
        ),
      ),
    );
  }
}
