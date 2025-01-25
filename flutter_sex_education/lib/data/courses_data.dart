
import '../model/course.dart';

final coursesData = [
  Course(
    id: '1',
    imageUrl: 'assets/images/1.png',
    rating: '4.5',
    isBookmarked: false,
    courseTitle: 'Good & Bad Touch',
    instructor: 'Dr. Angela Yu',
    price: "",
    duration: '30hr 30mins',
    sectionsLength: '10 Lessons',
    sectionLaps: sections,
    courseTag: tags[0],
    youtubeLinks: [
      'https://youtu.be/3n49Thc3hck?si=A2VP4YYU1m7XqQ_k',
    ],
  ),
  Course(
    id: '2',
    imageUrl: 'assets/images/2.png',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'Why Do Girls Get Periods?',
    instructor: 'Chris Croft',
    price: "",
    duration: '4hr 10mins',
    sectionsLength: '5 Lessons',
    sectionLaps: sections,
    courseTag: tags[1],
    youtubeLinks: [
      'https://www.youtube.com/watch?v=abcdEFGhijk',
      'https://www.youtube.com/watch?v=lmnopQRSTuv',
    ],
  ),
  Course(
    id: '3',
    imageUrl: 'assets/images/image3.jpeg',
    rating: '3.9',
    isBookmarked: true,
    courseTitle: 'Communication Skills Master Class',
    instructor: 'Walker',
    price: "",
    duration: '4hr 30mins',
    sectionsLength: '5 Lessons',
    sectionLaps: sections,
    courseTag: tags[2],
    youtubeLinks: [
      'https://www.youtube.com/watch?v=xyzwABCD1234',
      'https://www.youtube.com/watch?v=5678EFGHijkl',
    ],
  ),
  Course(
    id: '4',
    imageUrl: 'assets/images/image4.jpeg',
    rating: '4.0',
    isBookmarked: false,
    courseTitle: 'Excel from Beginner to Advanced',
    instructor: 'Kyle Pew',
    price: "",
    duration: '39hr 30mins',
    sectionsLength: '50 Lessons',
    sectionLaps: sections,
    courseTag: tags[3],
    youtubeLinks: [
      'https://www.youtube.com/watch?v=excelBeginner123',
      'https://www.youtube.com/watch?v=excelAdvanced456',
    ],
  ),
  Course(
    id: '5',
    imageUrl: 'assets/images/image5.jpeg',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'Public Relations: Media Crisis',
    instructor: 'Walker',
    price: "",
    duration: '24hr 50mins',
    sectionsLength: '50 Lessons',
    sectionLaps: sections,
    courseTag: tags[4],
    youtubeLinks: [
      'https://www.youtube.com/watch?v=prCrisis123',
      'https://www.youtube.com/watch?v=mediaCrisis456',
    ],
  ),
];

List sections = [
  ['Introduction to course', '20 min'],
  ['Dive in', '4h 40 min'],
  ['How to apply what you learned', '2h 20 min'],
  ['Outro', '40 min'],
];

List tags = [ 'Hot', 'New', 'Best Seller', '50% discount', 'Free'];
