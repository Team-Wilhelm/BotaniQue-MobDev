import 'package:botanique/repositories/storage_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/enums/app_enums.dart';

class SecureStorageRepository implements StorageRepository {
  final storage = const FlutterSecureStorage();

  @override
  Future<void> saveData(LocalStorageKeys key, String value) async {
    await storage.write(key: key.toString(), value: value);
  }

  @override
  Future<String?> getData(LocalStorageKeys key) async {
    return await storage.read(key: key.toString());
  }

  @override
  Future<void> deleteData(LocalStorageKeys key) async {
    await storage.delete(key: key.toString());
  }

  @override
  Future<void> deleteAllData() async {
    await storage.deleteAll();
  }
}
