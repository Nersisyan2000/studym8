class CarouselData {
  String title;
  double discount;
  String cornerImg;
  String subTitle;
  String backgroundShadowImg;

  CarouselData(this.title, this.discount, this.subTitle, this.cornerImg,
      this.backgroundShadowImg);
}

CarouselData carouselData = CarouselData(
  'Today’s Special',
  30.0,
  'Get a discount for every course order!\nOnly Valid for today ',
  'assets/images/corner_img.png',
  'assets/images/card_effect_img.png',
);
