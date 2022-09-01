import 'package:flutter/material.dart';
import 'package:iot_smart_home/pages/home_page/home_page.dart';
import 'package:iot_smart_home/style/theme.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Route route = MaterialPageRoute(builder: (context) => HomePage());
      Navigator.pushAndRemoveUntil(context, route, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/img/animation.json',
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.fill,
                ),
                Text(
                  'Smart Home',
                  style: Theme.of(context).textTheme.headline6?.merge(TextStyle(
                        color: greyColor,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
