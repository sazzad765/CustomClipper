import 'package:flutter/cupertino.dart';

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 6, size.height - 80, size.width / 3, size.height - 60);

    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 20,
        size.width, size.height - 100);

    // path.quadraticBezierTo(
    //     size.width-(size.width / 6), size.height , size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}


class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.height, 0);
    path.quadraticBezierTo(
        size.width / 6, size.height - 80, size.width / 3, size.height - 60);

    path.quadraticBezierTo(size.width - (size.width / 4), size.height - 20,
        size.width, size.height - 100);

    // path.quadraticBezierTo(
    //     size.width-(size.width / 6), size.height , size.width, size.height - 80);
    path.lineTo(0, size.width);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 80);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 80);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
