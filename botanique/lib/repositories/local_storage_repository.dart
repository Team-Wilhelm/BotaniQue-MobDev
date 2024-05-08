import 'package:localstorage/localstorage.dart';

class LocalStorageRepository {
  void saveData(LocalStorageKeys localStorageKey, String value) {
    localStorage.setItem(localStorageKey.name, value);
  }

  String? getData(LocalStorageKeys localStorageKey) {
    return localStorage.getItem(localStorageKey.name);
  }
}

enum LocalStorageKeys { jwt }
