enum SingingCharacter {
  paypal('Paypal', 'assets/images/paypal.png'),
  googlepay('Google Pay', 'assets/images/google_pay.png'),
  visa('Master card', 'assets/images/visa.png'),
  applepay('Apple Pay', 'assets/images/apple_pay.png');

  final String title;
  final String icon;
  const SingingCharacter(this.title, this.icon);
}
