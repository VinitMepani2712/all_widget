import 'package:flutter/material.dart';
import 'package:all_widget/pages/alertdialog_widget.dart';
import 'package:all_widget/pages/appbar_widget.dart';
import 'package:all_widget/pages/aspectratio_widget.dart';
import 'package:all_widget/pages/bottom_nav_bar_widget.dart';
import 'package:all_widget/pages/button_widget.dart';
import 'package:all_widget/pages/cliprrect_widget.dart';
import 'package:all_widget/pages/column_widget.dart';
import 'package:all_widget/pages/container_widget.dart';
import 'package:all_widget/pages/drawer_widget.dart';
import 'package:all_widget/pages/expanded_widget.dart';
import 'package:all_widget/pages/fitted_box_widget.dart';
import 'package:all_widget/pages/gridview_widget.dart';
import 'package:all_widget/pages/gridviewbuilder_widget.dart';
import 'package:all_widget/pages/icon__widget.dart';
import 'package:all_widget/pages/image_widget.dart';
import 'package:all_widget/pages/listview_widget.dart';
import 'package:all_widget/pages/listviewbuilder_widget.dart';
import 'package:all_widget/pages/opacity_widget.dart';
import 'package:all_widget/pages/pageroute_widget.dart';
import 'package:all_widget/pages/popupmenu_widget.dart';
import 'package:all_widget/pages/positioned_widget.dart';
import 'package:all_widget/pages/row_widget.dart';
import 'package:all_widget/pages/scaffold_widget.dart';
import 'package:all_widget/pages/stack_widget.dart';
import 'package:all_widget/pages/text_widget.dart';
import 'package:all_widget/pages/textfield_widget.dart';
import 'package:all_widget/pages/tooltip_widget.dart';
import 'package:all_widget/pages/wrap_widget.dart';

class MainScreenPage extends StatelessWidget {
  MainScreenPage({Key? key});

  final List<Map<String, dynamic>> _widgetList = [
    {
      "text": "Alert Dialog Box Widget",
      "widget": const AlertDialogBoxWidget(),
    },
    {
      "text": "Row Widget",
      "widget": const RowWidget(),
    },
    {
      "text": "Column Widget",
      "widget": const ColumnWidget(),
    },
    {
      "text": "Text Widget",
      "widget": const TextWidget(),
    },
    {
      "text": "Image Widget",
      "widget": const ImageWidget(),
    },
    {
      "text": "Icon Widget",
      "widget": const IconWidget(),
    },
    {
      "text": "ListView Widget",
      "widget": ListViewWidget(),
    },
    {
      "text": "GridView Widget",
      "widget": const GridViewWidget(),
    },
    {
      "text": "Stack Widget",
      "widget": const StackWidget(),
    },
    {
      "text": "AppBar Widget",
      "widget": const AppBarWidget(),
    },
    {
      "text": "Scaffold Widget",
      "widget": const ScaffoldWidget(),
    },
    {
      "text": "Button Widget",
      "widget": const ButtonWidget(),
    },
    {
      "text": "TextField Widget",
      "widget":  TextFieldWidget(),
    },
    {
      "text": "AlertDialog Widget",
      "widget": const AlertDialogBoxWidget(),
    },
    {
      "text": "PopupMenuButton Widget",
      "widget": const PopupMenuButtonWidget(),
    },
    {
      "text": "BottomNavigationBar Widget",
      "widget": const BottomNavigationBarWidget(),
    },
    {
      "text": "PageRoute Widget",
      "widget": const PageRouteWidget(),
    },
    {
      "text": "PageRouteBuilder Widget",
      "widget": const PageRouteWidget(),
    },
    {
      "text": "Drawer Widget",
      "widget": DrawerWidget(),
    },
    {
      "text": "Tooltip Widget",
      "widget": const TooltipWidget(),
    },
    {
      "text": "ClipRRect Widget",
      "widget": const ClipRRectWidget(),
    },
    {
      "text": "ListView.builder Widget",
      "widget": ListViewBuilderWidget(),
    },
    {
      "text": "GridView.builder Widget",
      "widget": GridViewBuilderWidget(),
    },
    {
      "text": "Wrap Widget",
      "widget": const WrapWidget(),
    },
    {
      "text": "AspectRatio Widget",
      "widget": const AspectRatioWidget(),
    },
    {
      "text": "Opacity Widget",
      "widget": const OpacityWidget(),
    },
    {
      "text": "Expanded Widget",
      "widget": const ExpandedWidget(),
    },
    {
      "text": "Positioned Widget",
      "widget": const PositionedWidget(),
    },
    {
      "text": "FittedBox Widget",
      "widget": const FittedBoxWidget(),
    },
    {
      "text": "Container Widget",
      "widget": const ContainerWidget(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Widget List',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: _widgetList.length,
          itemBuilder: (context, index) {
            return _buildTextButton(
              text: _widgetList[index]["text"],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _widgetList[index]["widget"],
                  ),
                );
              },
              iconData: Icons.flutter_dash,
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextButton({
    required String text,
    required IconData iconData,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SizedBox(
        width: 180,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(
                  255, 255, 255, 255),
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: Color.fromARGB(255, 55, 58, 196),
                  size: 30,
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: "Times New Roman",
                    ),
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onPressed,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
