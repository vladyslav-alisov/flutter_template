import 'package:isar/isar.dart';
import 'package:template/api/database/app_info_api/app_info_entity.dart';

class AppInfoDao {
  final Isar _isar;

  AppInfoDao(this._isar);

  Future<AppInfoEntity?> getAppInfo() async {
    AppInfoEntity? appInfoDBEntity = await _isar.appInfoEntitys.where().findFirst();
    return appInfoDBEntity;
  }

  Future<void> saveAppInfo(AppInfoEntity appInfoDBEntity) async {
    await _isar.writeTxn(() async {
      await _isar.appInfoEntitys.put(appInfoDBEntity);
    });
  }

  Future<void> deleteAllConfigEntity() async {
    await _isar.writeTxn(() async {
      await _isar.appInfoEntitys.clear();
    });
  }
}
