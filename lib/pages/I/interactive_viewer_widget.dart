// import 'package:flutter/material.dart';

// class InteractiveViewerWidget extends StatelessWidget {
//   const InteractiveViewerWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Interactive Viewer Example'),
//       ),
//       body: Center(
//         child: InteractiveViewer(
//           boundaryFunction: (Rect constraints) =>
//               Rect.fromLTRB(0, 0, constraints.width, constraints.height),
//           minScale: 0.8,
//           maxScale: 2.0,
//           child: Image.network(
//       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-jlhi_Ucs8p5gnmvGs-hkbxpmz6yPXKspNo2tUooAwTLkq0_nq-MM7Km9sg6fNXz9Uag&usqp=CAU';
//             fit: BoxFit.contain,
//           ),
//         ),
//       ),
//     );
//   }
// }
