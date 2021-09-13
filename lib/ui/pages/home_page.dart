import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landig_page/providers/page_provider.dart';
import 'package:vertical_landig_page/ui/shared/custom_app_menu.dart';
import 'package:vertical_landig_page/ui/views/about_views.dart';
import 'package:vertical_landig_page/ui/views/contact_views.dart';
import 'package:vertical_landig_page/ui/views/home_views.dart';
import 'package:vertical_landig_page/ui/views/location_views.dart';
import 'package:vertical_landig_page/ui/views/pricing_views.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(right: 20, top: 20, child: CustomAppMenu())
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.pink, Colors.purple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView()
      ],
    );
  }
}
