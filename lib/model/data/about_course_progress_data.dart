class AboutCourseProgressData {
  int courseNumber;
  String courseName;
  double didProgressNumber;

  AboutCourseProgressData(
      this.courseNumber, this.courseName, this.didProgressNumber);
}

List<AboutCourseProgressData> aboutCoursesProgressData = [
  AboutCourseProgressData(1, 'Introduction to Front-End Development', 37.0),
  AboutCourseProgressData(2, 'Data Science Basics', 10.0),
  AboutCourseProgressData(3, 'Back-End Development', 58.0),
];

List<double> ratings = [5.0, 4.5, 4.0, 3.5, 3.0];
