import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Status Bar
            const SizedBox(
              height: 44,
            ),
            // Top
            Container(
              padding: const EdgeInsets.fromLTRB(10, 6, 15, 0),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/Instagram_logo.png"),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Add.png",
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        "assets/Heart.png",
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        "assets/Share.png",
                        width: 28,
                        height: 28,
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Body
            Expanded(
              child: Column(
                children: [
                  // user list
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    height: 108,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 0.5, color: Colors.grey.shade300),
                      ),
                    ),
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // user
                          UserProfileCard(
                            userName: '내 스토리',
                            profileImagePath: 'assets/Profile_picture_01.png',
                          ),
                          UserProfileCard(
                            userName: 'flutter_framework',
                            profileImagePath: 'assets/Profile_picture_02.png',
                          ),
                          UserProfileCard(
                            userName: 'soongsil_university',
                            profileImagePath: 'assets/Profile_picture_03.png',
                          ),
                          UserProfileCard(
                            userName: 'mobile_programming',
                            profileImagePath: 'assets/Profile_picture_04.png',
                          ),
                          UserProfileCard(
                            userName: 'global_media',
                            profileImagePath: 'assets/Profile_picture_05.png',
                          ),
                          UserProfileCard(
                            userName: 'awesome_application',
                            profileImagePath: 'assets/Profile_picture_06.png',
                          )
                        ],
                      ),
                    ),
                  ),
                  // Feeds
                  Column(
                    children: [
                      // User Info
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 52,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Profile_picture_02.png',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "flutter_framework",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.more_horiz,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                      // feed Pictures
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Feed_picture_01.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Image.asset(
                              'assets/Feed_picture_02.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Image.asset(
                              'assets/Feed_picture_03.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        height: 42,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Heart.png',
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              'assets/Comment.png',
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              'assets/Share.png',
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/Bookmark.png',
                            ),
                          ],
                        ),
                      ),
                      // Details
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Bottom
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/Home.png"),
                  Image.asset("assets/Search.png"),
                  Image.asset("assets/Reels.png"),
                  Image.asset("assets/Shop.png"),
                  Image.asset("assets/Profile_picture_01.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserProfileCard extends StatelessWidget {
  final String userName;
  final String profileImagePath;

  const UserProfileCard(
      {super.key, required this.userName, required this.profileImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 71,
            height: 71,
            padding: const EdgeInsets.all(2.5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [
                  0.2,
                  0.4,
                  0.6,
                  0.8,
                  1,
                ],
                colors: [
                  Color(0xFFFFD600),
                  Color(0xFFFF7A00),
                  Color(0xFFFF0069),
                  Color(0xFFD300C5),
                  Color(0xFF7638FA),
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(2.5),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(profileImagePath),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 71,
            child: Text(
              userName,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
