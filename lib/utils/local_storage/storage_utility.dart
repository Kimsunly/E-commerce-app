import 'package:get_storage/get_storage.dart';

class TLocalStorge{
  static final TLocalStorge _instance = TLocalStorge._internal();

  factory TLocalStorge() {
    return _instance;
  }

  TLocalStorge._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T ? readData(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAllData() async {
    await _storage.erase();
  }
}

class T {
}