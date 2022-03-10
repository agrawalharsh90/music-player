abstract class AppConfig {
  static bool isProduction = false;

  static setUpEnv(Environment env) {
    switch (env) {
      case Environment.dev:
        {
          AppConfig.isProduction = false;
          break;
        }
      case Environment.stage:
        {
          AppConfig.isProduction = false;
          break;
        }
      case Environment.prod:
        {
          AppConfig.isProduction = true;
          break;
        }
    }
  }
}

enum Environment { dev, stage, prod }
