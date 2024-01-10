import 'package:isar/isar.dart';
part 'app_config_db_entity.g.dart';

@collection
class AppConfigDBEntity {
  final Id localeId = Isar.autoIncrement;
  final String languageCode;
  final String? countryCode;
  final bool isFirstLaunch;
  final bool isDarkTheme;

  AppConfigDBEntity(this.languageCode, this.countryCode, this.isFirstLaunch, this.isDarkTheme);
}
