
import 'package:flutter/material.dart';
import 'package:flutter_projects/pages.dart';

class PagerIndicator extends StatelessWidget {

  final PagerIndicatorViewModel viewModel;

  const PagerIndicator({
    this.viewModel
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x88FFFFFF),
                ),
              ),
            ),
            PageBubble(
              viewModel: PageBubbleViewModel(
                  'assets/shopping_cart.png',
                  Colors.green, false, 1.0),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color(0x88FFFFFF),
                        width: 3.0
                    )
                ),
              ),
            ),

          ],
        )
      ],
    );
  }
}

enum SlideDirection{
  leftToRight,
  RightToLeft
}

class PagerIndicatorViewModel{
  final List<PageViewModel> pages;
  final int activeIndex;
  final SlideDirection slideDirection;
  final double slidePercent;

  PagerIndicatorViewModel(
      this.pages,
      this.activeIndex,
      this.slideDirection,
      this.slidePercent
      );
}

class PageBubble extends StatelessWidget {

  final PageBubbleViewModel viewModel;

  PageBubble({
    this.viewModel
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0x88FFFFFF),
        ),
        child: Image.asset(
          viewModel.iconAssetPath,
          color: viewModel.color,
        ),
      ),
    );
  }
}


class PageBubbleViewModel{
  final String iconAssetPath;
  final Color color;
  final bool isHollow;
  final double activePercent;

  PageBubbleViewModel(
      this.iconAssetPath,
      this.color,
      this.isHollow,
      this.activePercent,
      );
}