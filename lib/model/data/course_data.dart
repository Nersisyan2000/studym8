class CourseMethod {
  String img;
  String title;

  CourseMethod(this.img, this.title);
}

class CourseInstructorData {
  String img;
  String name;
  String profession;

  CourseInstructorData(this.img, this.name, this.profession);
}

class AllCoursesData {
  String img;
  String courseName;
  String courseTutor;
  double raiting;
  double cost;
  String courseDescription;
  List<String> skills;
  List<CourseMethod> methods;
  CourseInstructorData instructorData;

  AllCoursesData(
      this.img,
      this.courseName,
      this.courseTutor,
      this.raiting,
      this.cost,
      this.courseDescription,
      this.skills,
      this.methods,
      this.instructorData);
}

List<AllCoursesData> allCoursesData = [
  AllCoursesData(
    'assets/images/Introduction_toUI.png',
    'Introduction to UI Des..',
    'Steve Holmes',
    4.5,
    50.0,
    'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
    [
      'User Interface Design (UI Design)',
      'UI/UX',
      'Design Pattern',
      'Design Tools',
      'Wireframe',
      'Mobile Design',
      'Web Design',
      'Prototyping',
    ],
    [
      CourseMethod('assets/images/world.png', '100% online'),
      CourseMethod('assets/images/calendar.png', 'Flexible deadlines'),
      CourseMethod(
          'assets/images/instruction.png', 'Medium of Instruction: English'),
    ],
    CourseInstructorData('assets/images/courseTeacher.png', 'Esther Howard',
        'UI/UX Design Exper'),
  ),
  AllCoursesData(
    'assets/images/back_end_development.png',
    'Back-End Development',
    'Palmer Walter',
    4.5,
    70.0,
    'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
    [
      'User Interface Design (UI Design)',
      'UI/UX',
      'Design Pattern',
      'Design Tools',
      'Wireframe',
      'Mobile Design',
      'Web Design',
      'Prototyping',
    ],
    [
      CourseMethod('assets/images/world.png', '100% online'),
      CourseMethod('assets/images/calendar.png', 'Flexible deadlines'),
      CourseMethod(
          'assets/images/instruction.png', 'Medium of Instruction: English'),
    ],
    CourseInstructorData('assets/images/courseTeacher.png', 'Esther Howard',
        'UI/UX Design Exper'),
  ),
  AllCoursesData(
    'assets/images/data_science_img.png',
    'Data Science Basics',
    'Arlene McCoy',
    4.5,
    90.0,
    'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
    [
      'User Interface Design (UI Design)',
      'UI/UX',
      'Design Pattern',
      'Design Tools',
      'Wireframe',
      'Mobile Design',
      'Web Design',
      'Prototyping',
    ],
    [
      CourseMethod('assets/images/world.png', '100% online'),
      CourseMethod('assets/images/calendar.png', 'Flexible deadlines'),
      CourseMethod(
          'assets/images/instruction.png', 'Medium of Instruction: English'),
    ],
    CourseInstructorData('assets/images/courseTeacher.png', 'Esther Howard',
        'UI/UX Design Exper'),
  ),
  AllCoursesData(
    'assets/images/project_management.png',
    'Data Science Basics',
    'Savannah Nguye',
    4.5,
    100.0,
    'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
    [
      'User Interface Design (UI Design)',
      'UI/UX',
      'Design Pattern',
      'Design Tools',
      'Wireframe',
      'Mobile Design',
      'Web Design',
      'Prototyping',
    ],
    [
      CourseMethod('assets/images/world.png', '100% online'),
      CourseMethod('assets/images/calendar.png', 'Flexible deadlines'),
      CourseMethod(
          'assets/images/instruction.png', 'Medium of Instruction: English'),
    ],
    CourseInstructorData('assets/images/courseTeacher.png', 'Esther Howard',
        'UI/UX Design Exper'),
  ),
  AllCoursesData(
    'assets/images/notebook_img.png',
    'Data Science Basics',
    'Savannah Nguye',
    4.5,
    100.0,
    'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
    [
      'User Interface Design (UI Design)',
      'UI/UX',
      'Design Pattern',
      'Design Tools',
      'Wireframe',
      'Mobile Design',
      'Web Design',
      'Prototyping',
    ],
    [
      CourseMethod('assets/images/world.png', '100% online'),
      CourseMethod('assets/images/calendar.png', 'Flexible deadlines'),
      CourseMethod(
          'assets/images/instruction.png', 'Medium of Instruction: English'),
    ],
    CourseInstructorData('assets/images/courseTeacher.png', 'Esther Howard',
        'UI/UX Design Exper'),
  ),
  AllCoursesData(
    'assets/images/course_background.png',
    'Back-End Development',
    'Palmer Walter',
    4.5,
    100.0,
    'Design principles are a set of guidelines that help designers create effective and aesthetically pleasing designs. These principles can be applied to various types of designs, including graphic design, web design, and UX design, to create designs that are visually appealing, functional, and easy to.',
    [
      'User Interface Design (UI Design)',
      'UI/UX',
      'Design Pattern',
      'Design Tools',
      'Wireframe',
      'Mobile Design',
      'Web Design',
      'Prototyping',
    ],
    [
      CourseMethod('assets/images/world.png', '100% online'),
      CourseMethod('assets/images/calendar.png', 'Flexible deadlines'),
      CourseMethod(
          'assets/images/instruction.png', 'Medium of Instruction: English'),
    ],
    CourseInstructorData('assets/images/courseTeacher.png', 'Esther Howard',
        'UI/UX Design Exper'),
  ),
];
