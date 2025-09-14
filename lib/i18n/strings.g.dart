/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 47
///
/// Built on 2025-09-14 at 17:49 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appTitle => 'Mini Bank';
	String get loginTitle => 'Login';
	String get emailLabel => 'Email';
	String get passwordLabel => 'Password';
	String get loginButton => 'Sign in';
	String get homeTitle => 'Home';
	String get balanceLabel => 'Balance';
	String get recentTransactions => 'Recent transactions';
	String get viewAll => 'View all';
	String get transactionsTitle => 'Transactions';
	String get transferTitle => 'Transfer';
	String get settingsTitle => 'Settings';
	String get darkMode => 'Dark mode';
	String get beneficiaryLabel => 'Beneficiary name';
	String get amountLabel => 'Amount';
	String get accountNumberLabel => 'Account number';
	String get submitButton => 'Submit';
	String get formInvalid => 'Please fix the errors';
	String get emptyState => 'No data yet';
	String get retry => 'Retry';
	String get loadMore => 'Load more';
	String get invalidEmail => 'Please enter a valid email';
	String get passwordTooShort => 'Password must be at least 6 characters';
	String get invalidCredentials => 'Invalid credentials';
	String get logout => 'Logout';
	String get currency => 'USDT';
	String get userNotFound => 'User not found';
	String get searchHint => 'Search by name or description';
	String get type => 'Type';
	String get all => 'All';
	String get credit => 'Credit';
	String get debit => 'Debit';
	String get remote => 'Remote';
	String get local => 'Local';
	String get noInternet => 'No internet connection';
	String get requestError => 'Request error';
	String get serverError => 'Server error';
	String get networkError => 'Network error';
	String get unexpectedError => 'Unexpected error';
	String get unexpectedStatusCode => 'Unexpected status code';
	String get accountNotFound => 'Account not found';
	String get beneficiaryRequired => 'Beneficiary name is required';
	String get accountNumberRequired => 'Account number is required';
	String get amountInvalid => 'Enter a valid amount';
	String get insufficientBalance => 'Insufficient balance';
	String get transferSuccessful => 'Transfer successful';
	String get noTransactions => 'No transactions';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'Mini Bank';
			case 'loginTitle': return 'Login';
			case 'emailLabel': return 'Email';
			case 'passwordLabel': return 'Password';
			case 'loginButton': return 'Sign in';
			case 'homeTitle': return 'Home';
			case 'balanceLabel': return 'Balance';
			case 'recentTransactions': return 'Recent transactions';
			case 'viewAll': return 'View all';
			case 'transactionsTitle': return 'Transactions';
			case 'transferTitle': return 'Transfer';
			case 'settingsTitle': return 'Settings';
			case 'darkMode': return 'Dark mode';
			case 'beneficiaryLabel': return 'Beneficiary name';
			case 'amountLabel': return 'Amount';
			case 'accountNumberLabel': return 'Account number';
			case 'submitButton': return 'Submit';
			case 'formInvalid': return 'Please fix the errors';
			case 'emptyState': return 'No data yet';
			case 'retry': return 'Retry';
			case 'loadMore': return 'Load more';
			case 'invalidEmail': return 'Please enter a valid email';
			case 'passwordTooShort': return 'Password must be at least 6 characters';
			case 'invalidCredentials': return 'Invalid credentials';
			case 'logout': return 'Logout';
			case 'currency': return 'USDT';
			case 'userNotFound': return 'User not found';
			case 'searchHint': return 'Search by name or description';
			case 'type': return 'Type';
			case 'all': return 'All';
			case 'credit': return 'Credit';
			case 'debit': return 'Debit';
			case 'remote': return 'Remote';
			case 'local': return 'Local';
			case 'noInternet': return 'No internet connection';
			case 'requestError': return 'Request error';
			case 'serverError': return 'Server error';
			case 'networkError': return 'Network error';
			case 'unexpectedError': return 'Unexpected error';
			case 'unexpectedStatusCode': return 'Unexpected status code';
			case 'accountNotFound': return 'Account not found';
			case 'beneficiaryRequired': return 'Beneficiary name is required';
			case 'accountNumberRequired': return 'Account number is required';
			case 'amountInvalid': return 'Enter a valid amount';
			case 'insufficientBalance': return 'Insufficient balance';
			case 'transferSuccessful': return 'Transfer successful';
			case 'noTransactions': return 'No transactions';
			default: return null;
		}
	}
}
