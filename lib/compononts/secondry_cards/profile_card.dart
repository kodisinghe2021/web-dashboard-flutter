import 'package:flutter/material.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';
import 'package:web_page_app/widgets/notification/circullar_notification_bubble.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Row(
      children: [
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
              width: screenSize.width * .03,
              height: screenSize.width * .03,
              'https://picsum.photos/id/1/300/300',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontRoboto(
                text: 'Jonathan',
                weight: FontWeight.w800,
                size: getScreenSize(context).width * .015,
              ),
              FontRoboto(
                text: 'Jonathan@turu.com',
                weight: FontWeight.w400,
                size: getScreenSize(context).width * .01,
              ),
            ],
          ),
        ),
        const Spacer(),
        const CircullarNotificationBubble(),
      ],
    );
  }
}
