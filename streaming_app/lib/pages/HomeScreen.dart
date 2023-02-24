import 'package:flutter/material.dart';

import 'package:streaming_app/widgets/BottomNav.dart';
import 'package:streaming_app/widgets/SectionTitle.dart';
import 'package:widget_mask/widget_mask.dart';

import '../constants.dart';
import '../data.dart';
import '../elements/BlurredBackground.dart';
import '../widgets/FloatingAction.dart';
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
                        child: SectionTitle(
                          title: 'What would you like to watch?',
                          titleSize: fontSize,
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
                  child: SectionTitle(
                    title: 'New Movies',
                    titleSize: titleSize2,
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
                  child: SectionTitle(
                    title: 'Upcoming Movies',
                    titleSize: titleSize2,
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
                  child: SectionTitle(
                    title: 'Your Favourites',
                    titleSize: titleSize2,
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
      floatingActionButton: FloatingAction(),
      bottomNavigationBar: BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
