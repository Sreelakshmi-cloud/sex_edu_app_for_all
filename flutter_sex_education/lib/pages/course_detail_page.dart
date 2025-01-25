import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../data/courses_data.dart';
import '../model/course.dart';

class CourseDetailPage extends StatelessWidget {
  static const routeName = "/course_detail_page";

  const CourseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final courseID = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCourse =
        coursesData.firstWhere((element) => element.id == courseID);

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[100],
      appBar: appBar(context, selectedCourse),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const Text('YouTube Videos',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(height: 5),
                ...selectedCourse.youtubeLinks.map((videoUrl) {
                  return Column(
                    children: [
                      YoutubePlayerBuilder(
                        player: YoutubePlayer(
                          controller: YoutubePlayerController(
                            initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
                            flags: const YoutubePlayerFlags(
                              autoPlay: false,
                              mute: false,
                            ),
                          ),
                        ),
                        builder: (context, player) => player,
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                }).toList(),
                Text(
                  selectedCourse.courseTitle,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(IconlyLight.time_circle,
                        size: 19, color: Colors.grey[400]),
                    const SizedBox(width: 5),
                    Text(selectedCourse.duration,
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    const SizedBox(width: 5),
                    const Text('  •  '),
                    Text(selectedCourse.sectionsLength,
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    const SizedBox(width: 5),
                    const Text('  •  '),
                    Text(selectedCourse.rating,
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 13)),
                    const SizedBox(width: 5),
                    Icon(IconlyBold.star,
                        size: 15, color: Colors.yellow[800]),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('About Course',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(height: 5),
                Text(
                  selectedCourse.description,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 10),
              
                const SizedBox(height: 10),
                const Text('Lessons',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(height: 5),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: selectedCourse.sectionLaps.length,
                  itemBuilder: (BuildContext context, int index) {
                    final selectionLaps = selectedCourse.sectionLaps[index];
                    return Container(
                      decoration: ShapeDecoration(
                        shadows: [
                          BoxShadow(
                              color: Colors.grey.shade100,
                              blurStyle: BlurStyle.outer)
                        ],
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: const Icon(
                          IconlyLight.play,
                          size: 50,
                          color: Colors.grey,
                        ),
                        title: Text(
                          selectionLaps[0],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(
                              IconlyLight.time_circle,
                              size: 16,
                              color: Colors.pink,
                            ),
                            const SizedBox(width: 3),
                            Text(selectionLaps[1]),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container courseImage(Course selectedCourse) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 8, right: 5),
      constraints: const BoxConstraints.expand(height: 230, width: double.infinity),
      padding: const EdgeInsets.only(left: 16, bottom: 8, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(selectedCourse.imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.colorBurn),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.6),
            radius: 50,
          ),
          const Icon(
            IconlyBold.play,
            color: Colors.red,
            size: 90,
          )
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context, Course selectedCourse) {
    return AppBar(
      backgroundColor: Colors.grey[100],
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconlyLight.arrow_left,
            size: 26,
            color: Colors.black,
          ),
          style: IconButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: Colors.white),
        ),
      ),
      title: const Text(
        "Course Details",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: IconButton(
            onPressed: () {},
            icon: (selectedCourse.isBookmarked)
                ? const Icon(
                    IconlyBold.heart,
                    size: 26,
                    color: Colors.black,
                  )
                : const Icon(
                    IconlyLight.heart,
                    size: 26,
                    color: Colors.black,
                  ),
          ),
        )
      ],
    );
  }
}
