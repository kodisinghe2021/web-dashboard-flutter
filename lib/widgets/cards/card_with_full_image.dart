
import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

class CardWithFullImage extends StatelessWidget {
  const CardWithFullImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      color: kLeftCardBottom,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const FontRoboto(
            text: 'Upgrade to Pro for Unlimited Storage',
            weight: FontWeight.w600,
            size: 16,
            color: kWhite,
          ),
          ClipRRect(
            borderRadius: commonBorderRadius,
            child: Image.network(
              width: getScreenSize(context).width * .15,
              height: getScreenSize(context).height * .2,
              'https://picsum.photos/id/1015/400/400',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
