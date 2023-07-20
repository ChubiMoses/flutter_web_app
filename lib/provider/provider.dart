import 'package:flutter/material.dart';


class ScreenSliderProvider extends ChangeNotifier {
   final PageController _pageController =  PageController();
  int _getPageIndex = 0;
  PageController get pageController => _pageController;
  int get getPageIndex => _getPageIndex;



  void updateIndex(int pageIndex) {
      _getPageIndex = pageIndex;
      onTapChangePage(_getPageIndex);
       notifyListeners();

  }

  void gotoGist() {
    onTapChangePage(1);
  }

  void onTapChangePage(int pageIndex) {
    _pageController.animateToPage(pageIndex, duration: const Duration(milliseconds: 400), curve: Curves.bounceInOut);
      notifyListeners();

  }

   @override
   void dispose() {
    _pageController.dispose();
    super.dispose();
  }

}