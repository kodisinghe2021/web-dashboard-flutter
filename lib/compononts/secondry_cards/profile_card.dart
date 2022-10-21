import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';
import 'package:web_page_app/widgets/notification/circullar_notification_bubble.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
//* profile image
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            // child: Image.asset(
            //     'assets/images/avatar.png'),
            child: Image.network(
              width: getScreenSize(context).width * .03,
              height: getScreenSize(context).width * .03,
              'https://picsum.photos/id/1/60/60',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Spacer(flex: 1),
//* name and email text column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rightSideCardHeading('Jonathan'),
            rightSideCardtext('Jonathan@turu.com'),
          ],
        ),
        const Spacer(flex: 10),
        const CircullarNotificationBubble(),
      ],
    );
  }
}
