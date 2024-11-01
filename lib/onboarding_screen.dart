import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Choose Food & Order",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          image: Center(child: Image.asset("assets/choose_food.png", height: 175.0)),
        ),
        PageViewModel(
          title: "Find a Restaurant",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          image: Center(child: Image.asset("assets/find_restaurant.png", height: 175.0)),
        ),
        PageViewModel(
          title: "Delivered To Your Doorstep",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          image: Center(child: Image.asset("assets/delivery.png", height: 175.0)),
        ),
      ],
      onDone: () {
        // Go to the next screen, e.g., home screen
        Navigator.of(context).pushReplacementNamed('/home');
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
