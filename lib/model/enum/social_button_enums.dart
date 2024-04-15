enum Social {
  google(title: 'Google', image: 'assets/images/google.png'),
  apple(title: 'Apple', image: 'assets/images/apple.png'),
  facebook(title: 'Facebook', image: 'assets/images/facebook.png');

  final String title;
  final String image;

  const Social({required this.title, required this.image});
}
