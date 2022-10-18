import 'package:flutter/material.dart';
import 'package:web_page_app/constance.dart';

class CircullarNotificationBubble extends StatelessWidget {
  const CircullarNotificationBubble({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Container(
      width: screenSize.width * .03,
      height: screenSize.width * .03,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: kDisable.withOpacity(.2),
        ),
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.notifications_outlined,
              size: 30,
              color: kDisable,
            ),
          ),
          Positioned(
            top: getScreenSize(context).height * .005,
            right: getScreenSize(context).width * .005,
            child: Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: kboxBorderColor,
                border: Border.all(
                  width: 1,
                  color: kboxBorderColor,
                  strokeAlign: StrokeAlign.outside,
                ),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
