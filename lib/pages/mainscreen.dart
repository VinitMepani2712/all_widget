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
import 'package:flutter/material.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 25),
              child: Column(
                children: [
                  _buildTextButton(
                    text: "Alert Dialog Box Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AlertDialogBoxWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Row Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RowWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Column Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ColumnWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Text Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TextWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Image Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ImageWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Icon Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IconWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "ListView Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "GridView Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GridViewWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Stack Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StackWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "AppBar Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppBarWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Scaffold Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScaffoldWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Button Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ButtonWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "TextField Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TextFieldWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "AlertDialog Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AlertDialogBoxWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "PopupMenuButton Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PopupMenuButtonWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "BottomNavigationBar Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "PageRoute Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageRouteWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "PageRouteBuilder Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageRouteWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Drawer Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DrawerWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Tooltip Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TooltipWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "ClipRRect Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ClipRRectWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "ListView.builder Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewBuilderWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "GridView.builder Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GridViewBuilderWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Wrap Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WrapWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "AspectRatio Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AspectRatioWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Opacity Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OpacityWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Expanded Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExpandedWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Positioned Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PositionedWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "FittedBox Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FittedBoxWidget()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextButton(
                    text: "Container Widget",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContainerWidget()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextButton({
    required String text,
    required Color backgroundColor,
    required Color textColor,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SizedBox(
        width: 180,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
