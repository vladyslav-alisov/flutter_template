abstract class ISecureStorageClient {
  Future<void> save(String key, dynamic value);

  Future<Object?> get(String key);

  Future<void> delete(String key);

  Future<void> deleteAll();
}
