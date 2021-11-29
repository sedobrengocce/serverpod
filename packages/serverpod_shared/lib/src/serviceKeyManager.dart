import 'package:serverpod_client/src/auth_key_manager.dart';
import 'config.dart';

/// The key manager used for the service protocol.
class ServiceKeyManager extends AuthenticationKeyManager {
  /// Name of the client
  final String name;

  /// Server configuration.
  final ServerConfig config;

  /// Creates a new [ServiceKeyManager].
  ServiceKeyManager(this.name, this.config);

  @override
  Future<String> get() async {
    return '$name:${config.serviceSecret}';
  }
  @override
  Future<Null> put(String key) async {
  }
  @override
  Future<Null> remove() async {
  }
}