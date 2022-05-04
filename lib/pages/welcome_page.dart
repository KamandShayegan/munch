import 'package:flutter/material.dart';
import 'package:sample/misc/my_colors.dart';
import 'package:sample/widgets/large_texts.dart';
import 'package:sample/widgets/responsive_button.dart';
import 'package:sample/widgets/texts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = ["welcome_1.JPG", "welcome_2.JPG", "welcome_3.JPG"];
  List<String> headers = ["Burger", "Sushi! YUM", "Pasta"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("img/" + images[index]),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 16, left: 16, top: 96),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LargeText(text: headers[index]),
                        const SizedBox(height: 4),
                        const H2Text(
                          text: 'Right at your service',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ...List.generate(
                          3,
                          (index) => Container(
                            width: 8,
                            height: 25,
                            decoration: BoxDecoration(
                              color: MyColors.primary,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ).toList(),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: ResponsiveButton(),
    );
  }
}
