import 'package:all_widget/pages/dialogbox/all_type_of_alertbox.dart';
import 'package:flutter/material.dart';
import 'package:all_widget/pages/appbar/appbar_widget.dart';
import 'package:all_widget/pages/aspectratio_widget.dart';
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
  MainScreenPage({
    super.key,
  });

  final List<Map<String, dynamic>> _widgetList = [
    {
      "text": "All Dialog Box Widget",
      "widget": AllDialogTypesPage(),
      "iconData": Icons.flutter_dash_sharp,
    },
    {
      "text": "AppBar Widget",
      "widget": AppBarWidget(),
      "iconData": Icons.flutter_dash_sharp,
    },
    {
      "text": "AspectRatio Widget",
      "widget": const AspectRatioWidget(),
      "iconData": Icons.flutter_dash_sharp,
    },
    {
      "text": "Button Widget",
      "widget": const ButtonWidget(),
      "iconData": Icons.smart_button_outlined,
    },
    {
      "text": "ClipRRect Widget",
      "widget": const ClipRRectWidget(),
      "iconData": Icons.flutter_dash_sharp,
    },
    {
      "text": "Column Widget",
      "widget": const ColumnWidget(),
      "iconData": Icons.view_column_rounded,
    },
    {
      "text": "Container Widget",
      "widget": const ContainerWidget(),
      "iconData": Icons.flutter_dash_sharp,
    },
    {
      "text": "Drawer Widget",
      "widget": DrawerWidget(),
      "iconData": Icons.menu,
    },
    {
      "text": "Expanded Widget",
      "widget": const ExpandedWidget(),
      "iconData": Icons.expand,
    },
    {
      "text": "FittedBox Widget",
      "widget": const FittedBoxWidget(),
      "iconData": Icons.fit_screen_sharp,
    },
    {
      "text": "GridView Widget",
      "widget": const GridViewWidget(),
      "iconData": Icons.grid_4x4_outlined,
    },
    {
      "text": "GridView.builder Widget",
      "widget": GridViewBuilderWidget(),
      "iconData": Icons.grid_view_rounded,
    },
    {
      "text": "Icon Widget",
      "widget": const IconWidget(),
      "iconData": Icons.flutter_dash_sharp,
    },
    {
      "text": "Image Widget",
      "widget": const ImageWidget(),
      "iconData": Icons.image,
    },
    {
      "text": "ListView Widget",
      "widget": ListViewWidget(),
      "iconData": Icons.list_alt_sharp,
    },
    {
      "text": "ListView.builder Widget",
      "widget": ListViewBuilderWidget(),
      "iconData": Icons.list_alt_outlined,
    },
    {
      "text": "Opacity Widget",
      "widget": const OpacityWidget(),
      "iconData": Icons.opacity_sharp,
    },
    {
      "text": "PageRoute Widget",
      "widget": const PageRouteWidget(),
      "iconData": Icons.pages_rounded,
    },
    {
      "text": "PopupMenuButton Widget",
      "widget": const PopupMenuButtonWidget(),
      "iconData": Icons.menu_open,
    },
    {
      "text": "Positioned Widget",
      "widget": const PositionedWidget(),
      "iconData": Icons.auto_fix_high,
    },
    {
      "text": "Row Widget",
      "widget": const RowWidget(),
      "iconData": Icons.table_rows_rounded,
    },
    {
      "text": "Scaffold Widget",
      "widget": const ScaffoldWidget(),
      "iconData": Icons.flutter_dash_sharp,
    },
    {
      "text": "Stack Widget",
      "widget": const StackWidget(),
      "iconData": Icons.stacked_bar_chart,
    },
    {
      "text": "Text Widget",
      "widget": const TextWidget(),
      "iconData": Icons.text_fields_sharp,
    },
    {
      "text": "TextField Widget",
      "widget": TextFieldWidget(),
      "iconData": Icons.text_fields_outlined,
    },
    {
      "text": "Tooltip Widget",
      "widget": const TooltipWidget(),
      "iconData": Icons.toc_outlined,
    },
    {
      "text": "Wrap Widget",
      "widget": const WrapWidget(),
      "iconData": Icons.wrap_text_rounded,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Flutter All Widget',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: _widgetList.length,
                  itemBuilder: (context, index) {
                    return _buildCard(
                      text: _widgetList[index]["text"],
                      iconData: _widgetList[index]["iconData"],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => _widgetList[index]["widget"],
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

  Widget _buildCard({
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
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
