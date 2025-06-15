import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'CityPulse'**
  String get app_name;

  /// No description provided for @welcome_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to CityPulse'**
  String get welcome_title;

  /// No description provided for @welcome_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Discover the best activities and places in your city'**
  String get welcome_subtitle;

  /// No description provided for @signup_title.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup_title;

  /// No description provided for @signup_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get signup_email;

  /// No description provided for @signup_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signup_password;

  /// No description provided for @signup_confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get signup_confirm_password;

  /// No description provided for @signup_button.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup_button;

  /// No description provided for @signin_title.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signin_title;

  /// No description provided for @signin_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get signin_email;

  /// No description provided for @signin_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signin_password;

  /// No description provided for @signin_button.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signin_button;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password;

  /// No description provided for @interests_title.
  ///
  /// In en, this message translates to:
  /// **'Interest Setup'**
  String get interests_title;

  /// No description provided for @interests_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Select your interests'**
  String get interests_subtitle;

  /// No description provided for @interests_button.
  ///
  /// In en, this message translates to:
  /// **'Save my interests'**
  String get interests_button;

  /// No description provided for @interests_add_custom.
  ///
  /// In en, this message translates to:
  /// **'Add custom interest'**
  String get interests_add_custom;

  /// No description provided for @favorites_title.
  ///
  /// In en, this message translates to:
  /// **'My Favorites'**
  String get favorites_title;

  /// No description provided for @favorites_category.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get favorites_category;

  /// No description provided for @favorites_filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get favorites_filter;

  /// No description provided for @favorites_empty.
  ///
  /// In en, this message translates to:
  /// **'No favorites found'**
  String get favorites_empty;

  /// No description provided for @settings_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// No description provided for @settings_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get settings_profile;

  /// No description provided for @settings_notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settings_notifications;

  /// No description provided for @settings_preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get settings_preferences;

  /// No description provided for @settings_about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settings_about;

  /// No description provided for @settings_language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settings_language;

  /// No description provided for @settings_theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settings_theme;

  /// No description provided for @settings_location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get settings_location;

  /// No description provided for @settings_videos.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get settings_videos;

  /// No description provided for @theme_light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get theme_light;

  /// No description provided for @theme_dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get theme_dark;

  /// No description provided for @theme_system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get theme_system;

  /// No description provided for @language_fr.
  ///
  /// In en, this message translates to:
  /// **'Français'**
  String get language_fr;

  /// No description provided for @language_en.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language_en;

  /// No description provided for @location_on.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get location_on;

  /// No description provided for @location_off.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get location_off;

  /// No description provided for @videos_on.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get videos_on;

  /// No description provided for @videos_off.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get videos_off;

  /// No description provided for @notifications_push.
  ///
  /// In en, this message translates to:
  /// **'Push notifications'**
  String get notifications_push;

  /// No description provided for @notifications_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get notifications_email;

  /// No description provided for @notifications_tour_updates.
  ///
  /// In en, this message translates to:
  /// **'Tour updates'**
  String get notifications_tour_updates;

  /// No description provided for @notifications_event_reminders.
  ///
  /// In en, this message translates to:
  /// **'Event reminders'**
  String get notifications_event_reminders;

  /// No description provided for @about_version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get about_version;

  /// No description provided for @about_privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get about_privacy;

  /// No description provided for @about_terms.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get about_terms;

  /// No description provided for @about_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get about_contact;

  /// No description provided for @error_occurred.
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get error_occurred;

  /// No description provided for @error_save.
  ///
  /// In en, this message translates to:
  /// **'Error saving'**
  String get error_save;

  /// No description provided for @error_load.
  ///
  /// In en, this message translates to:
  /// **'Error loading'**
  String get error_load;

  /// No description provided for @success_saved.
  ///
  /// In en, this message translates to:
  /// **'Saved successfully'**
  String get success_saved;

  /// No description provided for @success_removed.
  ///
  /// In en, this message translates to:
  /// **'Removed successfully'**
  String get success_removed;

  /// No description provided for @favorite_add.
  ///
  /// In en, this message translates to:
  /// **'Add to favorites'**
  String get favorite_add;

  /// No description provided for @favorite_remove.
  ///
  /// In en, this message translates to:
  /// **'Remove from favorites'**
  String get favorite_remove;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
