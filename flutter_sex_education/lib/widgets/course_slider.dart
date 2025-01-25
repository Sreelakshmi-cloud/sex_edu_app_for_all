import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../data/courses_data.dart';
import '../pages/course_detail_page.dart';
import 'tag.dart';

class CourseSlider extends StatelessWidget {
  const CourseSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: coursesData.length,
        itemBuilder: (BuildContext context, int index) {
          return CourseTile(
              id: coursesData[index].id,
              imageURL: coursesData[index].imageUrl,
              rating: coursesData[index].rating,
              title: coursesData[index].courseTitle,
              instructor: coursesData[index].instructor,
              price: coursesData[index].price,
              isBookmarked: coursesData[index].isBookmarked,
              tagTitle: coursesData[index].courseTag);
        },
      ),
    );
  }
}

class CourseTile extends StatelessWidget {
  String? id;
  final String imageURL;
  final String rating;
  final String title;
  final String instructor;
  final String price;
  final bool isBookmarked;
  final String tagTitle;
  Widget child;

  CourseTile(
      {super.key,
      required this.id,
      required this.imageURL,
      required this.rating,
      required this.title,
      required this.instructor,
      required this.price,
      required this.isBookmarked,
      required this.tagTitle,
      this.child = const SizedBox()});

  void selectedCourse(BuildContext context) {
    Navigator.of(context).pushNamed(CourseDetailPage.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => selectedCourse(context)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 8, right: 5),
              constraints: const BoxConstraints.expand(height: 150, width: 250),
              padding: const EdgeInsets.only(left: 16, bottom: 8, right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(imageURL), fit: BoxFit.cover)),
            
              
              
            ),
            Text(title, style: TextStyle(fontSize: 16),),
            Text(instructor, style: TextStyle(fontSize: 10, color: Colors.grey),),
            const SizedBox(height: 5,),
            Row(
              children: [
                Text(price, style: TextStyle(fontSize: 14, color: Colors.yellow[900], fontWeight: FontWeight.bold),),
                const SizedBox(width: 5,),
                Tag(title: tagTitle)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
