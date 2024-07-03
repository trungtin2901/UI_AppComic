import 'package:flutter/material.dart';
import 'package:myfirstapp/components/bottom_nav_bar.dart';

import '../core/configs/colors.dart';
import '../core/configs/dime.dart';
import '../items/chapter_item.dart';

class ComicPage extends StatefulWidget {
  const ComicPage({Key? key});

  @override
  State<ComicPage> createState() => _ComicPageState();
}

class _ComicPageState extends State<ComicPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnePieceScreen(),
    );
  }
}

class OnePieceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: Opacity(
                        opacity: 0.6,
                        child: Image.asset(
                          'lib/images/onepiece.jpg',
                          width: double.infinity,
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      child: AppBar(
                        leading: const Icon(
                          Icons.arrow_back,
                          color: AppColors.white,
                          size: 30,
                        ),
                        actions: const [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: AppColors.white,
                            size: 30,
                          ),
                          SizedBox(width: 16),
                          Icon(
                            Icons.share_outlined,
                            color: AppColors.white,
                            size: 30,
                          ),
                        ],
                        backgroundColor: Colors.transparent,
                        elevation: 0, // Xóa bỏ bóng của AppBar
                      ),
                    ),
                    Positioned(
                      bottom: (AppDime.textSize35 + (AppDime.space1 * 2)) / 10,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius:
                                BorderRadius.circular(AppDime.radius5),
                            boxShadow: const [
                              BoxShadow(
                                  color: AppColors.black,
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: Offset(0, 2))
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppDime.space4),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'One Piece',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      SizedBox(width: 4),
                                      Text('7.9',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      SizedBox(width: 8),
                                      Icon(Icons.visibility,
                                          color: Colors.white),
                                      SizedBox(width: 4),
                                      Text('89,200',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ]),
                            SizedBox(height: 8),
                            Text(
                              'Synopsis',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate assetsero et velit interdum, ac aliquet odio mattis.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.all(AppDime.space1),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10000),
                                color: AppColors.primary),
                            child: const Icon(
                              Icons.arrow_downward_outlined,
                              color: AppColors.white,
                              size: AppDime.textSize35,
                            ),
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft, // Căn trái chữ "Chapters"
                    child: Text('Chapters',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5)),
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(1.0), // Add padding around ListView
                  children: const [
                    ChapterItem(
                      chapterNumber: 1067,
                      chapterTitle: 'Punk Records',
                      imageUrl: 'lib/images/onepiece.jpg',
                    ),
                    SizedBox(height: 8), // Add spacing between items
                    ChapterItem(
                      chapterNumber: 1066,
                      chapterTitle: 'The Will of Ohara',
                      imageUrl: 'lib/images/onepiece.jpg',
                    ),
                    SizedBox(height: 8), // Add spacing between items
                    ChapterItem(
                      chapterNumber: 1065,
                      chapterTitle: 'Another Chapter',
                      imageUrl: 'lib/images/onepiece.jpg',
                    ),
                    SizedBox(height: 8), // Add spacing between items
                    ChapterItem(
                      chapterNumber: 1065,
                      chapterTitle: 'Another Chapter',
                      imageUrl: 'lib/images/onepiece.jpg',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: MyBottomNavBar(),
          ),
        ],
      ),
    );
  }
}
