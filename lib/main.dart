import 'package:flutter/material.dart';
import 'package:mobile_programming_flutter/components/bottom_widget.dart';
import 'package:mobile_programming_flutter/components/top_widget.dart';
import 'package:mobile_programming_flutter/constants/border_styles.dart';

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
            const TopWidget(),
            // Body
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // user list
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    height: 109,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderStyles.lightGreySide,
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
                  // feed 1
                  const Feed(
                      userName: "flutter_framework",
                      userPicture: "assets/Profile_picture_02.png",
                      picturePaths: [
                        "assets/Feed_picture_01.png",
                        "assets/Feed_picture_02.png",
                        "assets/Feed_picture_03.png"
                      ],
                      otherUserName: "awesome_application",
                      countLikes: 10,
                      countReplies: 102,
                      article:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                      lastMinutes: 5),
                  // feed 2
                  const Feed(
                      userName: "flutter_framework",
                      userPicture: "assets/Profile_picture_02.png",
                      picturePaths: [
                        "assets/Feed_picture_04.png",
                        "assets/Feed_picture_05.png",
                        "assets/Feed_picture_06.png"
                      ],
                      otherUserName: "awesome_application",
                      countLikes: 10,
                      countReplies: 102,
                      article:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                      lastMinutes: 100),
                  // feed 3
                  const Feed(
                      userName: "flutter_framework",
                      userPicture: "assets/Profile_picture_02.png",
                      picturePaths: [
                        "assets/Feed_picture_07.png",
                        "assets/Feed_picture_08.png",
                        "assets/Feed_picture_09.png"
                      ],
                      otherUserName: "awesome_application",
                      countLikes: 10,
                      countReplies: 102,
                      article:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                      lastMinutes: 1000),
                ],
              ),
            )),
            // Bottom
            const BottomWidget()
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
    final bool isFirst =
        context.findAncestorWidgetOfExactType<Row>()?.children.first == this;
    const LinearGradient instaGradient = LinearGradient(
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
    );

    Widget addBadge = Positioned(
      right: 2,
      bottom: 2,
      child: Container(
        width: 21,
        height: 21,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(
              color: Colors.white,
              width: 2.5,
              strokeAlign: BorderSide.strokeAlignCenter),
        ),
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 13,
          weight: 100,
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              // Insta Gradient Outer line
              Container(
                width: 71,
                height: 71,
                padding: const EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: isFirst ? null : instaGradient),
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
              isFirst ? addBadge : const SizedBox.shrink()
            ],
          ),
          SizedBox(
            width: 71,
            child: Text(
              isFirst ? "내 스토리" : userName,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

class Feed extends StatelessWidget {
  final String userName;
  final String userPicture;
  final List<String> picturePaths;
  final String otherUserName;
  final int countLikes;
  final int countReplies;
  final String article;
  final int lastMinutes;

  const Feed(
      {super.key,
      required this.userName,
      required this.userPicture,
      required this.picturePaths,
      required this.otherUserName,
      required this.countLikes,
      required this.countReplies,
      required this.article,
      required this.lastMinutes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedUserInfo(
          userName: userName,
          userPicture: userPicture,
        ),
        FeedPictures(
          picturePaths: picturePaths,
        ),
        FeedActionIcons(),
        FeedDetails(
          otherUsername: otherUserName,
          countLikes: countLikes,
          countReplies: countReplies,
          userName: userName,
          article: article,
          lastMinutes: lastMinutes,
        )
      ],
    );
  }
}

class FeedUserInfo extends StatelessWidget {
  final String userName, userPicture;

  const FeedUserInfo(
      {super.key, required this.userName, required this.userPicture});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 52,
      child: Row(
        children: [
          Image.asset(userPicture),
          const SizedBox(width: 10),
          Text(
            userName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_horiz,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class FeedPictures extends StatelessWidget {
  final List<String> picturePaths;

  const FeedPictures({super.key, required this.picturePaths});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: picturePaths
            .map(
              (picturesPath) => Image.asset(
                picturesPath,
                width: MediaQuery.of(context).size.width,
              ),
            )
            .toList(),
      ),
    );
  }
}

class FeedActionIcons extends StatelessWidget {
  const FeedActionIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class FeedDetails extends StatelessWidget {
  final String otherUsername;
  final int countLikes;
  final int countReplies;
  final String userName;
  final String article;
  final int lastMinutes;

  const FeedDetails({
    super.key,
    required this.otherUsername,
    required this.countLikes,
    required this.countReplies,
    required this.userName,
    required this.article,
    required this.lastMinutes,
  });

  @override
  Widget build(BuildContext context) {
    const TextStyle regular = TextStyle(
      fontSize: 12,
    );
    const TextStyle bold = TextStyle(
      fontWeight: FontWeight.w600,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: regular,
              children: <InlineSpan>[
                // Number of likes
                TextSpan(
                  text: otherUsername,
                  style: bold,
                ),
                const TextSpan(
                  text: '님 외 ',
                ),
                TextSpan(
                  text: "${countLikes < 100 ? countLikes : "여러 "}명",
                  style: bold,
                ),
                const TextSpan(
                  text: '이 좋아합니다',
                ),
              ],
            ),
          ),
          // Empty space
          const SizedBox(height: 8),
          // Article
          Text.rich(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            TextSpan(
              style: regular,
              children: [
                TextSpan(
                  text: "$userName ",
                  style: bold,
                ),
                TextSpan(text: article),
              ],
            ),
          ),
          // Empty space
          const SizedBox(height: 5),
          // Number of comment
          Text(
            "댓글 $countReplies개 모두 보기",
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
          // Empty space
          const SizedBox(height: 5),
          // Last comment time
          Text(
            lastMinutes < 60
                ? '$lastMinutes분 전'
                : lastMinutes < 1440
                    ? '${lastMinutes ~/ 60}시간 전'
                    : '${lastMinutes ~/ 1440}일 전',
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 10,
            ),
          ),
          // Empty space
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
