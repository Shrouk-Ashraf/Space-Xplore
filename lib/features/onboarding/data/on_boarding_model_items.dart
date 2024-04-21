import 'on_boarding_model.dart';

List<OnBoarding> onBoardingItems() {
  List<OnBoarding> items = [
    OnBoarding(
      image: 'assets/images/Onboarding.png',
      title: 'Welcome to SpaceX',
      subTitle:
          'Explore the world of SpaceX -\nrockets, launches, and the crew \nshaping the future of space travel.',
    ),
    OnBoarding(
      image: 'assets/images/Onboarding num2.png',
      title: 'Unleash Your Inner Space Explorer',
      subTitle:
          "Stay informed with the latest \nSpaceX news and updates - all at\n your fingertips!",
    )
  ];
  return items;
}
