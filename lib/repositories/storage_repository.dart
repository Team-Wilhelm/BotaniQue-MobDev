import 'package:botanique/models/enums/app_enums.dart';
import 'package:flutter/foundation.dart';

import 'local_storage_repository.dart';
import 'secure_storage_repository.dart';

abstract class StorageRepository {
  Future<void> saveData(LocalStorageKeys key, String value);
  Future<String?> getData(LocalStorageKeys key);
  Future<void> deleteData(LocalStorageKeys key);
  Future<void> deleteAllData();

  static StorageRepository get storageRepository {
    if (kIsWeb) {
      return LocalStorageRepository();
    } else {
      return SecureStorageRepository();
    }
  }
}
