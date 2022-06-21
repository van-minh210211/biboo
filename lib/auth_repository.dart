import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {
  const AuthRepository._(this._storage);

  factory AuthRepository() {
    return _singleton ??= const AuthRepository._(FlutterSecureStorage());
  }

  static AuthRepository? _singleton;
  final _tokenKey = 'ACCESS_TOKEN';
  final _refreshKey = 'REFRESH_TOKEN';
  final _userIdKey = 'USER_ID';
  final _usernameKey = 'USER_NAME';
  final _passwordKey = 'USER_PASSWORD';
  final FlutterSecureStorage _storage;

  void writeSecireData({
    required String accessToken,
    required String refreshToken,
    required String userId,
    String? username,
    String? password,
  }) {
    Future.wait([
      _storage.write(key: _tokenKey, value: accessToken),
      _storage.write(key: _refreshKey, value: refreshToken),
      _storage.write(key: _userIdKey, value: userId),
      if (username != null) _storage.write(key: _usernameKey, value: username),
      if (password != null) _storage.write(key: _passwordKey, value: password),
    ]);
  }

  Future<bool> hasToken() async {
    final value = await _storage.read(key: _tokenKey) ?? '';
    return value.isNotEmpty;
  }

  Future<String?> getToken() async => _storage.read(key: _tokenKey);

  Future<String?> getUserId() async => _storage.read(key: _userIdKey);

  Future<String?> getRefreshKey() async =>
      await _storage.read(key: _refreshKey);

  Future<String?> getUserName() async => _storage.read(key: _usernameKey);

  Future<String?> getPassword() async => _storage.read(key: _passwordKey);

  Future<void> deleteToken() async => _storage.delete(key: _tokenKey);

  Future<void> deleteAll() async => _storage.deleteAll();
}
