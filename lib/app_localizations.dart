import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;


/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
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
    Locale('vi')
  ];

  /// The conventional newborn programmer greeting
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @company_ID_label.
  ///
  /// In en, this message translates to:
  /// **'Tenant'**
  String get company_ID_label;

  /// No description provided for @employee_ID_label.
  ///
  /// In en, this message translates to:
  /// **'User name/Email'**
  String get employee_ID_label;

  /// No description provided for @password_label.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password_label;

  /// No description provided for @forgot_password_button.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgot_password_button;

  /// No description provided for @company_ID_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter company ID'**
  String get company_ID_hint;

  /// No description provided for @employee_ID_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter username/email'**
  String get employee_ID_hint;

  /// No description provided for @password_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get password_hint;

  /// No description provided for @by_TMA_innovation__footer.
  ///
  /// In en, this message translates to:
  /// **'Powered by TMA Innovation'**
  String get by_TMA_innovation__footer;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @forgot_password_title.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgot_password_title;

  /// No description provided for @forgot_password_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to reset password'**
  String get forgot_password_subtitle;

  /// No description provided for @forgot_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Fill in your email address'**
  String get forgot_password_hint;

  /// No description provided for @email_error.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address!'**
  String get email_error;

  /// No description provided for @reset_password_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to send reset password email!'**
  String get reset_password_failed;

  /// No description provided for @reset_password_succeed.
  ///
  /// In en, this message translates to:
  /// **'Sent email to reset password!'**
  String get reset_password_succeed;

  /// No description provided for @username_or_password_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Username or password is incorrect!'**
  String get username_or_password_incorrect;

  /// No description provided for @tenant_could_not_be_found.
  ///
  /// In en, this message translates to:
  /// **'Tenant could not be found!'**
  String get tenant_could_not_be_found;

  /// No description provided for @network_error.
  ///
  /// In en, this message translates to:
  /// **'Network error!'**
  String get network_error;

  /// No description provided for @app_error.
  ///
  /// In en, this message translates to:
  /// **'Application error!'**
  String get app_error;

  /// No description provided for @server_error.
  ///
  /// In en, this message translates to:
  /// **'Server error!'**
  String get server_error;

  /// No description provided for @login_failed.
  ///
  /// In en, this message translates to:
  /// **'Login failed!'**
  String get login_failed;

  /// No description provided for @login_function_error.
  ///
  /// In en, this message translates to:
  /// **'Login function failed!'**
  String get login_function_error;

  /// No description provided for @login_success.
  ///
  /// In en, this message translates to:
  /// **'Login success!'**
  String get login_success;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @check_in.
  ///
  /// In en, this message translates to:
  /// **'CHECK-IN'**
  String get check_in;

  /// No description provided for @check_out.
  ///
  /// In en, this message translates to:
  /// **'CHECK-OUT'**
  String get check_out;

  /// No description provided for @default_welcome_message.
  ///
  /// In en, this message translates to:
  /// **'Welcome you to our office!'**
  String get default_welcome_message;

  /// No description provided for @to_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get to_continue;

  /// No description provided for @input_empty_error.
  ///
  /// In en, this message translates to:
  /// **'Please fill in this field'**
  String get input_empty_error;

  /// No description provided for @input_overflow_error.
  ///
  /// In en, this message translates to:
  /// **'The information exceeds the allowed number of characters'**
  String get input_overflow_error;

  /// No description provided for @input_invalid_character_error.
  ///
  /// In en, this message translates to:
  /// **'Please do not enter special characters'**
  String get input_invalid_character_error;

  /// No description provided for @phone_input_invalid_error.
  ///
  /// In en, this message translates to:
  /// **'Please enter 10 numbers in the format 0xxx xxx xxx'**
  String get phone_input_invalid_error;

  /// No description provided for @appointment_visitor_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get appointment_visitor_name;

  /// No description provided for @appointment_visitor_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get appointment_visitor_phone;

  /// No description provided for @appointment_visitor_citizen_id.
  ///
  /// In en, this message translates to:
  /// **'Citizen ID/ Passport'**
  String get appointment_visitor_citizen_id;

  /// No description provided for @appointment_visitor_work_place.
  ///
  /// In en, this message translates to:
  /// **'Work/ study place'**
  String get appointment_visitor_work_place;

  /// No description provided for @appointment_visitor_intent.
  ///
  /// In en, this message translates to:
  /// **'Purpose of visit'**
  String get appointment_visitor_intent;

  /// No description provided for @appointment_staff.
  ///
  /// In en, this message translates to:
  /// **'Staff'**
  String get appointment_staff;

  /// No description provided for @appointment_accompany.
  ///
  /// In en, this message translates to:
  /// **'Accompany number'**
  String get appointment_accompany;

  /// No description provided for @appointment_visitor_image.
  ///
  /// In en, this message translates to:
  /// **'Visitor image'**
  String get appointment_visitor_image;

  /// No description provided for @appointment_title.
  ///
  /// In en, this message translates to:
  /// **'Appointment details'**
  String get appointment_title;

  /// No description provided for @appointment_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please verify the information below!'**
  String get appointment_subtitle;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.


  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
