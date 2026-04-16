enum Environment { dev, staging, prod }

class EnvConfig {
  static Environment environment = Environment.dev;

  static String get baseUrl {
    switch (environment) {
      case Environment.dev:
        return 'https://api.dev.example.com';
      case Environment.staging:
        return 'https://api.staging.example.com';
      case Environment.prod:
        return 'https://api.example.com';
    }
  }

  static const String apiKey = 'your_api_key_here';
  static const String appVersion = '1.0.0';
}
