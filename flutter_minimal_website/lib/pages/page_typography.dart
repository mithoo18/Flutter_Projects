import 'package:flutter/material.dart';

class TypographyPage extends StatefulWidget {
  const TypographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  const MenuBar(),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBottom12,
                      child: Text("Typography", style: headlineTextStyle),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBottom24,
                      child: Text("Text styles for pages and posts.",
                          style: subtitleTextStyle),
                    ),
                  ),
                  divider,
                  Container(
                    margin: marginBottom40,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBotton12,
                      child: Text("Basic Styles",
                          style: headlineSecondaryTextStyle),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBotton24,
                      child: Text("Simple to remember and use",
                          style: subtitleTextStyle),
                    ),
                  ),
                  dividerSmall,
                  Container(
                    margin: marginBootom24,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: marginBottom24,
                      child: Text("Headline Secondary",
                          style: headlineSecondaryTextStyle),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: marginBottom40,
                      child: Text(
                          "Body text is the default text style. Use this text style for website content and paragraphs. This text is chosen to be easy and comfortable to read. As the default text style for large blocks of text, particular attention is placed on the choice of font. Some fonts are more comfortable to read than others.",
                          style: bodyTextStyle),
                    ),
                  ),
                  divider,
                  const Footer()
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
