abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  // TODO: implement actual check with connectivity_plus package later
  @override
  Future<bool> get isConnected => Future.value(true); 
}
