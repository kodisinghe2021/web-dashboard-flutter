// import 'package:flutter/material.dart';
// import 'package:flutter_cube/flutter_cube.dart';

// class ThreeDObjects extends StatefulWidget {
//   const ThreeDObjects({super.key});

//   @override
//   State<ThreeDObjects> createState() => _ThreeDObjectsState();
// }

// class _ThreeDObjectsState extends State<ThreeDObjects> {
//   late Object teaCup;

//   @override
//   void initState() {
//     teaCup = Object(fileName: "assets/objects/teamugobj.obj");
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Cube(
//         onSceneCreated: (scene) {
//           scene.world.add(teaCup);
//         },
//       ),
//     );
//   }
// }
