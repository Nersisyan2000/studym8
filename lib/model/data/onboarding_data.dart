class OnboardingData {
  final String title;
  final String description;
  final String image;

  OnboardingData(
      {required this.title, required this.description, required this.image});
}

List<OnboardingData> data = [
  OnboardingData(
      title: "Learn",
      description: "Learn anytime & anywhere easily and conveniently",
      image: "assets/images/clip_path_group.png"),
  OnboardingData(
      title: "Knowledge",
      description: "Gain knowledge & skills read for the job market",
      image: "assets/images/clip_path_group_1.png"),
  OnboardingData(
      title: "Collaborative Study",
      description: "Study in groups, Share ideas",
      image: "assets/images/clip_path_group_2.png"),
];
