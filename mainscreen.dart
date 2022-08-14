import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            alignment: Alignment.centerRight,
            color: Colors.white,
            child: Container(
              color: Colors.lightBlueAccent,
              child: ClipPath(
                clipper: Wave(),
                child: Container(
                  height: 500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Wave2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height * 0.3);

    var point1 = Offset(size.width * 0.25, size.height * 0.4);
    var point2 = Offset(size.width * 0.4, size.height * 0.25);

    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);

    var point3 = Offset(size.width * 0.5, size.height * 0.15);
    var point4 = Offset(size.width * 0.68, size.height * 0.28);

    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);

    var point5 = Offset(size.width * 0.85, size.height * 0.4);
    var point6 = Offset(size.width, size.height * 0.1);

    path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Wave extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width, 0);

    var point1 = Offset(size.width, size.height * 0.2);
    var point2 = Offset(size.width - 18, size.height * 0.35);

    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);

    var point3 = Offset(size.width - 35, size.height * 0.5);
    var point4 = Offset(size.width - 18, size.height * 0.65);

    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);

    var point5 = Offset(size.width, size.height * 0.8);
    var point6 = Offset(size.width, size.height);

    path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
