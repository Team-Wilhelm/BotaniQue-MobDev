import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageRepository {
  final storage = const FlutterSecureStorage();

  Future<void> saveData(LocalStorageKeys key, String value) async {
    await storage.write(key: key.toString(), value: value);
  }

  Future<String?> getData(LocalStorageKeys key) async {
    return await storage.read(key: key.toString());
  }

  Future<void> deleteData(LocalStorageKeys key) async {
    await storage.delete(key: key.toString());
  }

  Future<void> deleteAllData() async {
    await storage.deleteAll();
  }
}

enum LocalStorageKeys { jwt, sasToken }
