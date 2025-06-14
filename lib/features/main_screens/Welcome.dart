import 'package:flutter/material.dart';
import 'package:citypulse/config/app_theme.dart';
import 'package:citypulse/services/theme_service.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/config/routes.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});
  @override
  WelcomeState createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: AppTheme.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: AppTheme.backgroundColor,
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntrinsicHeight(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 368),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 24,
                                    bottom: 12,
                                    left: 16,
                                    right: 16,
                                  ),
                                  width: double.infinity,
                                  child: Text(
                                    "CityPulse",
                                    style: TextStyle(
                                      color: themeService.isDarkMode
                                          ? AppTheme.darkTextPrimaryColor
                                          : AppTheme.textPrimaryColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 4,
                                  ),
                                  width: double.infinity,
                                  child: Text(
                                    "Explore the city's heartbeat",
                                    style: TextStyle(
                                      color: themeService.isDarkMode
                                          ? AppTheme.darkTextSecondaryColor
                                          : AppTheme.textSecondaryColor,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    color: AppTheme.backgroundColor,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16,
                                    ),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(
                                                  12,
                                                ),
                                          ),
                                          margin:
                                              const EdgeInsets.symmetric(
                                                horizontal: 16,
                                              ),
                                          height: 239,
                                          width: double.infinity,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(
                                                  12,
                                                ),
                                            child: Image.network(
                                              "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/2bd3af36-efc8-4c1f-843e-9b4953b93e77",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IntrinsicHeight(
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, Routes.explore);
                                  },
                                  child: IntrinsicHeight(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(24),
                                        color: themeService.isDarkMode
                                            ? AppTheme.darkSecondaryColor
                                            : AppTheme.secondaryColor,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ),
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Get Started",
                                            style: TextStyle(
                                              color: themeService.isDarkMode
                                                  ? AppTheme.darkTextPrimaryColor
                                                  : AppTheme.textPrimaryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: AppTheme.backgroundColor,
                                  height: 20,
                                  width: double.infinity,
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
