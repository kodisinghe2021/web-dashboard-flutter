import 'package:flutter/material.dart';
import 'package:web_page_app/widgets/buttons/major_button.dart';
import 'package:web_page_app/widgets/custom_text/custom_text.dart';

class WideLargeCard extends StatefulWidget {
  const WideLargeCard({
    super.key,
  });

  @override
  State<WideLargeCard> createState() => _WideLargeCardState();
}

class _WideLargeCardState extends State<WideLargeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          strokeAlign: StrokeAlign.outside,
          width: 1,
          color: Colors.white.withOpacity(.2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white10.withOpacity(.4),
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
//###################### left side widgets  ##################################//
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FittedBox(
                    child: HeadingOne(
                      text: 'Get Thousands of\nPremium Courses',
                      color: Colors.black87,
                    ),
                  ),
                  Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: FittedBox(
                          child: HeadingOne(
                            text:
                                'Upgrade to watch, play, learn, make\nand discover.',
                            color: Colors.black45,
                            size: 15,
                          ),
                        ),
                      ),

//~~~~~~~~~~~~~~~~~~~~~ small logo end of the text ~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
                      Positioned(
                        left: 130,
                        top: 20,
                        child: FittedBox(
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.face_outlined),
                          ),
                        ),
                      ),
                    ],
                  ),
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~ bottom button ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

                  FittedBox(
                    child: MajorButton(
                      onTap: () {},
                    ),
                  ),

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
                ],
              ),
            ),
          ),
//###################### left side widgets  ##################################//
          Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(20, 20),
                          color: Color(0xFFA7A9AF),
                        ),
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      'https://picsum.photos/id/1015/400/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        ],
      ),
    );
  }
}
