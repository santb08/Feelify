import 'package:feelify/ui/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String assetLogo = 'assets/logo.svg';
final Widget logo = SvgPicture.asset(
  assetLogo,
  semanticsLabel: 'Feelify Logo'
);

class OnBoardingScreen extends StatefulWidget {
  static const SCREEN_ID = '/onboarding';

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            logo,
            Container(
              margin: EdgeInsets.only(top: 24.0),
              child: Text('Aquí va la decoración pero me dio pereza.'),
            ),
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: Text(
                AppStrings.ONBOARDING_TITLE_1, 
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                AppStrings.ONBOARDING_SUBTITLE_1,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )
    );
  }
}
