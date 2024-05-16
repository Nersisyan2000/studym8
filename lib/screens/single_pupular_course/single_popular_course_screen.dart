import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

@RoutePage()
class SinglePopularCourseScreen extends StatelessWidget {
  const SinglePopularCourseScreen({super.key, required this.arguments});

  final AllCoursesData arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: const Icon(
          Icons.arrow_back,
          size: 30.0,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 32.0),
            child: Icon(
              Icons.share_outlined,
              size: 30.0,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Course.singleCourse(
                image: arguments.img,
                courseTutor: arguments.courseTutor,
                courseName: arguments.courseName,
                raiting: arguments.raiting,
              ),
              AboutCourse(
                  title: aboutThisCourse.localized,
                  description: arguments.courseDescription),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 34.0),
                child: Column(
                  children: [
                    for (var method in arguments.methods)
                      ListTile(
                        leading: Image(image: AssetImage(method.img)),
                        title: Text(method.title),
                      ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      skillsYouWillGain.localized,
                      style: roboto16TextStyle,
                    ),
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 16.0,
                    children: [
                      for (var skill in arguments.skills)
                        Skill(skillTitle: skill)
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 34.0, bottom: 16.0),
                    child: Text(
                      courseInstructor.localized,
                      style: roboto16TextStyle,
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(arguments.instructorData.img),
                    ),
                    title: Text(arguments.instructorData.name,
                        style: roboto16TextStyle),
                    subtitle: Text(arguments.instructorData.profession,
                        style: roboto16TextStyle.copyWith(
                            fontWeight: FontWeight.w400)),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: CustomElevatedButton.purpleButton(
                    title: 'Enroll Now - \$${arguments.cost.toInt()}',
                    onPress: () {
                      Navigator.pushNamed(context, enrollPaymentRoute);
                    }),
              ),
              const SizedBox(
                height: 24.0,
              )
            ],
          )),
    );
  }
}
