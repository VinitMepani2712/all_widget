import 'package:all_widget/pages/B/button_widget.dart';
import 'package:all_widget/pages/D/dialogboxwidget/all_type_of_alertbox.dart';
import 'package:all_widget/pages/A/all_process_Indicator_widget/all_process_widget.dart';
import 'package:all_widget/pages/W/wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:all_widget/pages/A/appbarwidget/appbar_widget.dart';
import 'package:all_widget/pages/A/aspectratio_widget.dart';
import 'package:all_widget/pages/C/cliprrect_widget.dart';
import 'package:all_widget/pages/C/column_widget.dart';
import 'package:all_widget/pages/C/container_widget.dart';
import 'package:all_widget/pages/D/dialogboxwidget/drawer_widget.dart';
import 'package:all_widget/pages/E/expanded_widget.dart';
import 'package:all_widget/pages/F/fitted_box_widget.dart';
import 'package:all_widget/pages/G/gridview_widget.dart';
import 'package:all_widget/pages/G/gridviewbuilder_widget.dart';
import 'package:all_widget/pages/I/icon__widget.dart';
import 'package:all_widget/pages/I/image_widget.dart';
import 'package:all_widget/pages/I/listview_widget.dart';
import 'package:all_widget/pages/I/listviewbuilder_widget.dart';
import 'package:all_widget/pages/O/opacity_widget.dart';
import 'package:all_widget/pages/P/pageroute_widget.dart';
import 'package:all_widget/pages/P/popupmenu_widget.dart';
import 'package:all_widget/pages/P/positioned_widget.dart';
import 'package:all_widget/pages/R/row_widget.dart';
import 'package:all_widget/pages/S/scaffold_widget.dart';
import 'package:all_widget/pages/S/stack_widget.dart';
import 'package:all_widget/pages/T/text_widget.dart';
import 'package:all_widget/pages/T/textfield_widget.dart';
import 'package:all_widget/pages/T/tooltip_widget.dart';

final List<Map<String, dynamic>> _widgetList = [
  {
    "text": "All Dialog Box Widget",
    "widget": AllDialogTypesPage(),
    "iconData": Icons.flutter_dash_sharp,
  },
  {
    "text": "All Process Indicator",
    "widget": AllProcessIndicatorPage(),
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

List<Map<String, dynamic>> get widgetList => _widgetList;

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
              style: const TextStyle(
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
