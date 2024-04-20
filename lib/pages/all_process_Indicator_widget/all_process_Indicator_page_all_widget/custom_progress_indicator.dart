import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Circular Progress Indicators'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomCircularProgress(type: 1),
            CustomCircularProgress(type: 2),
            CustomCircularProgress(type: 3),
            CustomCircularProgress(type: 4),
            CustomCircularProgress(type: 5),
          ],
        ),
      ),
    );
  }
}

class CustomCircularProgress extends StatefulWidget {
  final int type;

  const CustomCircularProgress({Key? key, required this.type})
      : super(key: key);

  @override
  _CustomCircularProgressState createState() => _CustomCircularProgressState();
}

class _CustomCircularProgressState extends State<CustomCircularProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(); // Repeats the animation indefinitely

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          switch (widget.type) {
            case 1:
              return CustomPaint(
                painter: MyPainter1(
                  angle: _animation.value * 360,
                  color: Colors.blue,
                  strokeWidth: 5,
                ),
              );
            case 2:
              return CustomPaint(
                painter: MyPainter2(
                  angle: _animation.value * 360,
                  color: Colors.green,
                  strokeWidth: 8,
                ),
              );
            case 3:
              return CustomPaint(
                painter: MyPainter3(
                  angle: _animation.value * 360,
                  color: Colors.red,
                  strokeWidth: 10,
                ),
              );
            case 4:
              return CustomPaint(
                painter: MyPainter4(
                  angle: _animation.value * 360,
                  color: Colors.orange,
                  strokeWidth: 7,
                ),
              );
            case 5:
              return CustomPaint(
                painter: MyPainter5(
                  angle: _animation.value * 360,
                  color: Colors.purple,
                  strokeWidth: 6,
                ),
              );
            default:
              return SizedBox();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MyPainter1 extends CustomPainter {
  final double angle;
  final Color color;
  final double strokeWidth;

  MyPainter1(
      {required this.angle, required this.color, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      0,
      angle * (3.14 / 180), // Convert angle to radians
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter2 extends CustomPainter {
  final double angle;
  final Color color;
  final double strokeWidth;

  MyPainter2(
      {required this.angle, required this.color, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < 8; i++) {
      final double startAngle = i * (360 / 8);
      final double endAngle = startAngle + 45;
      canvas.drawArc(
        Rect.fromCircle(center: Offset(radius, radius), radius: radius),
        startAngle * (3.14 / 180), // Convert angle to radians
        endAngle * (3.14 / 180), // Convert angle to radians
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter3 extends CustomPainter {
  final double angle;
  final Color color;
  final double strokeWidth;

  MyPainter3(
      {required this.angle, required this.color, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();
    path.moveTo(radius, 0);
    path.lineTo(radius + radius * (angle / 360), radius);
    path.lineTo(radius, radius * 2);
    path.lineTo(radius - radius * (angle / 360), radius);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter4 extends CustomPainter {
  final double angle;
  final Color color;
  final double strokeWidth;

  MyPainter4(
      {required this.angle, required this.color, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();
    path.moveTo(radius, 0);
    path.lineTo(radius + radius * (angle / 360), radius);
    path.lineTo(radius, radius * 2);
    path.lineTo(radius - radius * (angle / 360), radius);
    path.close();

    canvas.rotate(angle * 0.0174533);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter5 extends CustomPainter {
  final double angle;
  final Color color;
  final double strokeWidth;

  MyPainter5(
      {required this.angle, required this.color, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(
      Offset(radius, radius),
      radius * (angle / 360),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
