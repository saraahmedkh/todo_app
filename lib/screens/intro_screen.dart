import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = "IntroScreen";

  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/logo.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 28,
          children: [
            Image.asset("assets/images/creative.png", width: double.infinity),
            Text("onboardingTitle".tr(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text("onboardingSubtitle".tr(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Row(
              children: [
                Text(
                  "language".tr(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    spacing: 8,
                    children: [
                      InkWell( onTap: () {
                context.setLocale(Locale('en', 'US'));},
                        child: Container(
                          decoration: context.locale==Locale('en', 'US') ?BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: BoxBorder.all(width: 4, color: Colors.blue),
                          ): null,
                          padding: context.locale==Locale('en', 'US') ?null
                              : EdgeInsets.symmetric(horizontal: 4),
                          child: Image.asset(
                            "assets/images/EN.png",
                            fit: BoxFit.fill,
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      InkWell( onTap: () {
                        context.setLocale(Locale('ar', 'EG'));},
                        child: Container( decoration: context.locale==Locale('ar', 'EG') ?BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: BoxBorder.all(width: 4, color: Colors.blue),
                        ): null,
                          padding: context.locale==Locale('ar', 'EG') ?null
                          : EdgeInsets.symmetric(horizontal: 4),
                          child: Image.asset(
                            "assets/images/EG.png",
                            fit: BoxFit.fill,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "theme".tr(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    spacing: 8,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                          border: BoxBorder.all(width: 4, color: Colors.blue),
                        ),
                        child: Image.asset(
                          "assets/images/Sun.png",
                          fit: BoxFit.fill,
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Image.asset(
                          "assets/images/Moon.png",
                          fit: BoxFit.fill,
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox( width: double.infinity,
              child: ElevatedButton( style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,

              ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "let'sStart".tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
