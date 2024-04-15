enum CoursesData {
  introUIDesign(
    'assets/images/ui_course.png',
    'Introduction to UI Design',
    '3 hrs 45 mins',
    70.0,
    '15 videos',
    [
      {
        'id': 1,
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
      {
        'id': 2,
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
      {
        'id': 3,
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
      {
        'id': 4,
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
      {
        'id': 5,
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
    ],
  ),
  basicsOfFigma(
    'assets/images/basic_figma.png',
    'Basics of Figma',
    '2 hrs 45 mins',
    60.0,
    '12 videos',
    [
      {
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
    ],
  ),
  introDataScience(
    'assets/images/data_science.png',
    'Introduction to Data Science',
    '2 hrs 45 mins',
    20.0,
    '10 videos',
    [
      {
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
    ],
  ),
  basicAdobeXD(
    'assets/images/adobeXD.png',
    'Basics of Adobe XD',
    '2 hrs 45 mins',
    90.0,
    '13 videos',
    [
      {
        'title': 'Section 1 - Introduction',
        'soundTitle': 'Introduction',
        'time': 'Video - 10:30 mins'
      },
    ],
  );

  final String img;
  final String title;
  final String time;
  final double progress;
  final String videoCount;
  final List<dynamic> playList;

  const CoursesData(this.img, this.title, this.time, this.progress,
      this.videoCount, this.playList);
}

enum PopularCoursesEnum {
  designPrinciples(
    'Design Principles',
    4.5,
    'assets/images/design_principles_background.png',
  ),
  backEndDevelopment(
    'Back-End Deve.....',
    4.5,
    'assets/images/back_end_development_background.png',
  );

  final String title;
  final double raiting;
  final String img;

  const PopularCoursesEnum(this.title, this.raiting, this.img);
}
