import 'package:localstorage/localstorage.dart';

import '../models/enums/app_enums.dart';
import 'storage_repository.dart';

class LocalStorageRepository implements StorageRepository {

  @override
  Future<void> saveData(LocalStorageKeys key, String value) async {
    localStorage.setItem(key.toString(), value);
  }

  @override
  Future<String?> getData(LocalStorageKeys key) async {
    return localStorage.getItem(key.toString());
  }

  @override
  Future<void> deleteData(LocalStorageKeys key) async {
    localStorage.removeItem(key.toString());
  }

  @override
  Future<void> deleteAllData() async {
    localStorage.clear();
  }
}
