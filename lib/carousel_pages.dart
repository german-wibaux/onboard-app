import 'package:flutter/material.dart';

import 'login.dart';
import 'onboard.dart';
import 'splash.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final _pages = [SplashPage(), OnboardPage(), LoginPage()];

  final _controller = PageController();

  @override
  void initState() {
    super.initState();
    goToNext();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
      itemCount: _pages.length,
      itemBuilder: (_, index) => _pages[index],
    );
  }

  goToNext() async {
    int _page = 0;
    while (_page < _pages.length) {
      await Future.delayed(Duration(seconds: 5));
      _page++;
      _controller.animateToPage(
        _page,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    }
  }
}
