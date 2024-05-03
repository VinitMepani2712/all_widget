import 'package:flutter/material.dart';

class FlowWidget extends StatefulWidget {
  @override
  _FlowWidgetState createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow Menu Widget Example'),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              if (_isMenuOpen) {
                _closeMenu();
              }
            },
            child: Container(
              color: _isMenuOpen ? Colors.black54 : null,
            ),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                right: 20.0,
                bottom: 100.0 * _animation.value,
                child: Opacity(
                  opacity: _animation.value,
                  child: Flow(
                    delegate: FlowMenuDelegate(),
                    children: [
                      FlowMenuItem(text: 'Item 1'),
                      FlowMenuItem(text: 'Item 2'),
                      FlowMenuItem(text: 'Item 3'),
                      FlowMenuItem(text: 'Item 4'),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isMenuOpen) {
            _closeMenu();
          } else {
            _openMenu();
          }
        },
        child: Icon(_isMenuOpen ? Icons.close : Icons.menu),
      ),
    );
  }

  void _openMenu() {
    _animationController.forward();
    setState(() {
      _isMenuOpen = true;
    });
  }

  void _closeMenu() {
    _animationController.reverse();
    setState(() {
      _isMenuOpen = false;
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class FlowMenuItem extends StatelessWidget {
  final String text;

  const FlowMenuItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0.0;
    double y = 0.0;

    for (int i = 0; i < context.childCount; i++) {
      final childSize = context.getChildSize(i);
      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0.0),
      );
      y += (childSize!.height + 8.0); // Add some spacing between items
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }

}
