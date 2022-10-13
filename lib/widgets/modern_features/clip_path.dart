import 'package:flutter/material.dart';

class ClipPathBanner extends StatefulWidget {
  const ClipPathBanner({super.key});

  @override
  State<ClipPathBanner> createState() => _ClipPathBannerState();
}

class _ClipPathBannerState extends State<ClipPathBanner> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        height: 600,
        decoration: const BoxDecoration(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path0 = Path();
    path0.moveTo(size.width * 0.4175000, size.height * 0.2857143);
    path0.lineTo(size.width * 0.7975000, size.height * 0.2871429);
    path0.lineTo(size.width * 0.7974917, size.height * 0.6414286);
    path0.lineTo(size.width * 0.4166667, size.height * 0.6400000);
    path0.lineTo(size.width * 0.4175000, size.height * 0.2857143);
    path0.close();

    return path0;

    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}



// class RPSCustomPainter extends CustomPainter{
  
//   @override
//   void paint(Canvas canvas, Size size) {
    
    

//   Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1;
     
         
//     Path path0 = Path();
//     path0.moveTo(size.width*0.4175000,size.height*0.2857143);
//     path0.lineTo(size.width*0.7975000,size.height*0.2871429);
//     path0.lineTo(size.width*0.7974917,size.height*0.6414286);
//     path0.quadraticBezierTo(size.width*0.6704083,size.height*0.5679429,size.width*0.6052500,size.height*0.5580857);
//     path0.quadraticBezierTo(size.width*0.5389500,size.height*0.5685000,size.width*0.4166667,size.height*0.6400000);
//     path0.lineTo(size.width*0.4175000,size.height*0.2857143);
//     path0.close();

//     canvas.drawPath(path0, paint0);
  
    
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
  
// // }
// class RPSCustomPainter extends CustomPainter{
  
//   @override
//   void paint(Canvas canvas, Size size) {
    
    

//   Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1;
     
         
//     Path path0 = Path();
//     path0.moveTo(size.width*0.4175000,size.height*0.2857143);
//     path0.lineTo(size.width*0.7975000,size.height*0.2871429);
//     path0.lineTo(size.width*0.7974917,size.height*0.6414286);
//     path0.quadraticBezierTo(size.width*0.6888500,size.height*0.6636571,size.width*0.6080750,size.height*0.6258000);
//     path0.quadraticBezierTo(size.width*0.5305500,size.height*0.6151857,size.width*0.4166667,size.height*0.6400000);
//     path0.lineTo(size.width*0.4175000,size.height*0.2857143);
//     path0.close();

//     canvas.drawPath(path0, paint0);
  
    
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
  
// }
