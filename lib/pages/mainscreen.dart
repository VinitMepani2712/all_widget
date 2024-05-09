import 'package:all_widget/components/textstyle_support/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:all_widget/components/widget/widget_data.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  _MainScreenPageState createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _filteredWidgetList = [];

  List<String> getWidgetNames() {
    return widgetList.map((widget) => widget['text'].toString()).toList();
  }

  @override
  void initState() {
    super.initState();
    _filteredWidgetList = List.from(widgetList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: _isSearching
            ? _buildSearchField()
            : Text(
                'Flutter All Widget',
                style: AppWidget.headerTextStyle(),
              ),
        leading: _isSearching
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.blueAccent,
                ),
                onPressed: () {
                  setState(() {
                    _isSearching = false;
                    _searchController.clear();
                    _filteredWidgetList = List.from(widgetList);
                  });
                },
              )
            : null,
        actions: [
          _buildAppBarAction(),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE2EDF7), Color(0xFFB5C3D3)],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: _filteredWidgetList.length,
                  itemBuilder: (context, index) {
                    return buildCard(
                      text: _filteredWidgetList[index]["text"],
                      iconData: _filteredWidgetList[index]["iconData"],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                _filteredWidgetList[index]["widget"],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isSearching = false;

  Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search Widgets',
          hintStyle: TextStyle(color: Colors.blueAccent),
        ),
        onChanged: (value) {
          setState(() {
            _filteredWidgetList = widgetList
                .where((widget) => widget['text']
                    .toString()
                    .toLowerCase()
                    .contains(value.toLowerCase()))
                .toList();
          });
        },
      ),
    );
  }

  Widget _buildAppBarAction() {
    return IconButton(
      icon: Icon(
        Icons.search_rounded,
        color: Colors.blueAccent,
        size: 30,
      ),
      onPressed: () {
        setState(() {
          _isSearching = !_isSearching;
          if (!_isSearching) {
            _searchController.clear();
            _filteredWidgetList = List.from(widgetList);
          }
        });
      },
    );
  }
}

Widget buildCard({
  required String text,
  required IconData iconData,
  required VoidCallback onPressed,
}) {
  return Card(
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.blue,
              size: 40,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: AppWidget.textStyle(),
            ),
          ],
        ),
      ),
    ),
  );
}
