// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pelayanankesehatan/onboardingnew/pages/home_page.dart';
import 'package:pelayanankesehatan/onboardingnew/single_page.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/model.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/pilihan.dart';
import 'package:pelayanankesehatan/pagelist/pagelist1/MenuItemCard.dart';
import 'package:pelayanankesehatan/onboarding/welcomepage.dart';
import 'package:pelayanankesehatan/mapspage/rumahsakit/MapsPage.dart';

class OnboardingPage extends StatefulWidget {
  
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int activePage = 0;
  double currentPageValue = 0.0;
  final PageController _pageController = PageController();

  List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      headline: "Discover the world of cooking with TasteBuds",
      subTitle:
          "Our chefs have been cooking for years and they have the best recipes in town. You can order it online and we will deliver it to your door",
      image: "assets/rs.png",
    ),
    OnboardingItem(
      headline: "Explore Thousands of Delicious Recipes with us",
      subTitle:
          "Discover new recipes tailored to your preferences and dietary needs",
      image: "assets/drugstore.png",
    ),
    OnboardingItem(
      headline: "Find Your Next Kitchen Adventure",
      subTitle: "Connect with a community of home cooks and foodies",
      image: "assets/dokter.png",
    ),
    OnboardingItem(
      headline: "We cook the best hamburger in town",
      subTitle:
          "We cook the hamburger you had always dreamt of. You can order it online and we will deliver it to your door",
      image: "assets/medicine.png",
    ),
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLastPage = activePage == onboardingItems.length - 1;
    return Scaffold(
      
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    activePage = value;
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapsPage(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 24,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  );
                  });
                },
                
                controller: _pageController,
                itemCount: onboardingItems.length,
                itemBuilder: (context, index) {
                  final item = onboardingItems[index];
                  if (index == currentPageValue.floor()) {
                    return Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(currentPageValue - index)
                        ..scale(1 - (currentPageValue - index).abs()),
                      alignment: Alignment.centerLeft,
                      child: SinglePage(
                        item: item,
                      ),
                    );
                  } else if (index == currentPageValue.floor() + 1) {
                    return Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(currentPageValue - index)
                        ..scale(1 - (currentPageValue - index).abs()),
                      alignment: Alignment.centerRight,
                      child: SinglePage(
                        item: item,
                      ),
                    );
                  } else {
                    return Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(currentPageValue - index)
                        ..scale(1 - (currentPageValue - index).abs()),
                      alignment: Alignment.center,
                      child: SinglePage(
                        item: item,
                      ),
                    );
                  }
                },
              ),
            ),
            
            const SizedBox(height: 14),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {
                    if (!isLastPage) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                  icon: Icon(
                      isLastPage ? Icons.celebration : Icons.chevron_right),
                  label: Text(isLastPage ? "Enjoy" : "Next"),
                ),
                const Spacer(),
                Row(
                  children: List.generate(
                    onboardingItems.length,
                    (index) {
                      return AnimatedContainer(
                        height: 3,
                        margin: const EdgeInsets.only(right: 5.0),
                        width: activePage == index ? 30 : 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: activePage == index
                              ? Theme.of(context).colorScheme.primary
                              : Colors.grey,
                        ),
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                )
              ],
            )
            
          ],
        ),
      ),
    );
  }
}

class OnboardingItem {
  final String headline;
  final String subTitle;
  final String image;
  OnboardingItem({
    required this.headline,
    required this.subTitle,
    required this.image,
  });
}