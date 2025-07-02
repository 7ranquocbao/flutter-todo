// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => '藤堂';

  @override
  String get inputPlaceholder => '新しいToDoを追加する';

  @override
  String get emptyTodo => 'まだToDoはありません!';
}
