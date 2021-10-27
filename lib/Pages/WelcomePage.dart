import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:introduction_screen/introduction_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  State<WelcomePage> createState()=>WelcomePageState();

}

class WelcomePageState  extends State<WelcomePage> {
final pageDecoration =PageDecoration(
    titleTextStyle:
      PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle:
      PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
      contentMargin: EdgeInsets.all(10),

);
  List<PageViewModel> getPages(){
    return [
  PageViewModel(
    image: Image.asset('images/slider-3.jpg'),
    title: 'Accomodation',
    body: 'We have a team of hotel accommodation consultants with wide-ranging expertise in identifying and handling the most suitable accommodation options for any conference. No matter the size, our accommodation management team has the knowledge about available venues and the skills needed to book and manage accommodation for conferences with up to twenty-five thousand delegates',
    decoration: pageDecoration
  ),
      PageViewModel(
          image: Image.asset('images/food.jpg'),
          title: 'Hospitality',
          body: 'Continental and buffet breakfast options are available every morning at the accommodation.',
          decoration: pageDecoration
      ),

      PageViewModel(
          image: Image.asset('images/slider-4.jpg'),
          title: 'Transportation',
          body: 'Enjoy free transportation services from your location to the hotel',

          decoration: pageDecoration
      ),
    ];
  }



@override
Widget build(BuildContext context) {
  return Scaffold(
    body: IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: getPages(),
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: true,
      skip: Text(
        "skip",
          style: TextStyle(color: Colors.blue),
      ),
      onSkip: () {},
      done: Text(
        'Done',
        style: TextStyle(color: Colors.blue),
      ),
      next: Text(
        "next",
        style: TextStyle(color: Colors.blue),
      ),
      onDone: () {},
    ),
  );
}


}