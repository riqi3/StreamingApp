import 'package:flutter/material.dart';

import 'package:streaming_app/widgets/BottomNav.dart';
import 'package:streaming_app/widgets/CustomTextWidget.dart';


import '../constants.dart';
import '../data.dart';
import '../elements/BlurredBackground.dart';
import '../widgets/CircleGradientButton.dart';
import '../widgets/MovieCarousel.dart';
import '../widgets/SearchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: bgColor,
      body: Stack(
        children: [
          BlurredBackground(),
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: defaultPadding2 * 2,
                            right: defaultPadding2 * 2,
                            top: defaultPadding2 * 2),
                        constraints: BoxConstraints(
                          maxWidth: shapeSizing * 5,
                        ),
                        child: CustomTextWidget(
                          title: 'What would you like to watch?',
                          titleSize: fontSize,
                          color: white,
                          align: TextAlign.center,
                          weight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding,
                        ),
                        child: SearchBar(),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: defaultPadding - 10,
                  right: defaultPadding - 10,
                  bottom: defaultPadding,
                ),
                sliver: SliverToBoxAdapter(
                  child: CustomTextWidget(
                    title: 'New Movies',
                    titleSize: titleSize2,
                    color: white,
                    align: TextAlign.start,
                    weight: FontWeight.w300,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  bottom: defaultPadding,
                ),
                sliver: SliverToBoxAdapter(
                  child: MovieCarousel(
                    list: newMovies,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: defaultPadding - 10,
                  right: defaultPadding - 10,
                  bottom: defaultPadding,
                ),
                sliver: SliverToBoxAdapter(
                  child: CustomTextWidget(
                    title: 'Upcoming Movies',
                    titleSize: titleSize2,
                    color: white,
                    align: TextAlign.start,
                    weight: FontWeight.w300,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  bottom: defaultPadding,
                ),
                sliver: SliverToBoxAdapter(
                  child: MovieCarousel(
                    list: upcoming,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: defaultPadding - 10,
                  right: defaultPadding - 10,
                  bottom: defaultPadding,
                ),
                sliver: SliverToBoxAdapter(
                  child: CustomTextWidget(
                    title: 'Your Favourites',
                    titleSize: titleSize2,
                    color: white,
                    align: TextAlign.start,
                    weight: FontWeight.w300,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  bottom: defaultPadding,
                ),
                sliver: SliverToBoxAdapter(
                  child: MovieCarousel(
                    list: newMovies,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          top: 40.0,
        ),
        child: FloatingActionButton(
          onPressed: () {
            print('object');
          },
          backgroundColor: bgColor,
          child: CircleGradientButton(
            image: add,
            width: 70,
            height: 70,
            scale: .8,
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
