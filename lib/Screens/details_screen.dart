import 'package:flutter/material.dart';
import 'package:news_time/Components/Joker%20Components/image_news_component.dart';
import 'package:news_time/Components/Joker%20Components/text_component.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.image,
    required this.title,
    required this.content,
    required this.description,
    required this.publishedAt,
    required this.url,
  });
  final String image;
  final String title;
  final String? content;
  final String? description;
  final String publishedAt;
  final String url;

  @override
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.sizeOf(context).height;
    double sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageNewsComponent(
                  image: image, height: sizeHeight * 1 / 3, width: sizeWidth),
              Container(
                margin: EdgeInsets.only(top: sizeHeight * 0.01),
                height: sizeHeight * 2 / 3,
                width: sizeWidth,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: [
                    TextComponent(
                        text: title,
                        fonts: "Ubuntu",
                        color: Colors.black,
                        size: 35),
                    const SizedBox(
                      height: 50,
                    ),
                    TextComponent(
                        text: publishedAt,
                        fonts: "Ubuntu",
                        color: Colors.black,
                        size: 18),
                    const SizedBox(
                      height: 50,
                    ),
                    TextComponent(
                        text: description ?? "",
                        fonts: "Ubuntu",
                        color: Colors.black,
                        size: 18),
                    const SizedBox(
                      height: 50,
                    ),
                    TextComponent(
                        text: content ?? "",
                        fonts: "Ubuntu",
                        color: Colors.black,
                        size: 25),
                    const SizedBox(
                      height: 50,
                    ),
                    TextComponent(
                        text: url,
                        fonts: "Ubuntu",
                        color: Colors.grey,
                        size: 15),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/* 
SafeArea(
      child: Scaffold(
          body: Container(
        height: sizeHeight,
        width: sizeWidth,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: sizeHeight * 8 / 812,
                  horizontal: sizeWidth * 15 / 375),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/arrow back.svg',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 374 / 812,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24))),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 80 / 812,
                        right: MediaQuery.of(context).size.width * 15 / 375,
                        left: MediaQuery.of(context).size.width * 15 / 375,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,
                                style: const TextStyle(
                                    color: Color(0xFF2E0505),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Nunito"))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: sizeHeight * 295 / 812,
                  horizontal: sizeWidth * 32 / 375),
              child: Container(
                height: sizeHeight * 141 / 812,
                width: sizeWidth * 311 / 375,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5).withOpacity(0.0)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical:
                              MediaQuery.of(context).size.height * 14 / 375,
                          horizontal:
                              MediaQuery.of(context).size.width * 24 / 812,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextComponent(text: content!, fonts: "Nunito", color: Colors.black87, size: 12,),
                            /*Text(
                              content!,
                              style: const TextStyle(
                                  color: Color(0xFF2E0505),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Nunito"),*/
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
    */