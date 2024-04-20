import 'on_boarding_model.dart';

List<OnBoardingModel> onBoardingItems() {
  List<OnBoardingModel> items = [
    OnBoardingModel(
      image: 'assets/images/onboarding_screen1.json',
      title: 'Welcome to SpaceX',
      subTitle:
          'Explore the world of SpaceX -\n rockets, launches, and the crew \nshaping the future of space travel.',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding_screen1.json',
      title: 'Unleash Your Inner Space Explorer',
      subTitle:
          "Stay informed with the latest \nSpaceX news and updates - all at\n your fingertips!",
    )
  ];
  return items;
}
