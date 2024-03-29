import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  path: 'assets/env/.env.dev',
  obfuscate: true,
)

///Environment variables
abstract class Env {
  @EnviedField(varName: 'FIREBASE_WEB_API_KEY')

  ///firebase web api key
  static final String firebaseWebApiKey = _Env.firebaseWebApiKey;
  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY')

  ///firebase android api key
  static final String firebaseAndroidApiKey = _Env.firebaseAndroidApiKey;

  @EnviedField(varName: 'FIREBASE_IOS_API_KEY')

  ///firebase ios api key
  static final String firebaseIOSApiKey = _Env.firebaseIOSApiKey;

  @EnviedField(varName: 'FIREBASE_MACOS_API_KEY')

  ///firebase macos api key
  static final String firebaseMacOSApiKey = _Env.firebaseMacOSApiKey;

  @EnviedField(varName: 'NEWS_API_KEY')

  ///news api key
  static final String newsApiKey = _Env.newsApiKey;

  @EnviedField(varName: 'CHAT_BOT_API_KEY')

  ///chat bot api key
  static final String chatBotApiKey = _Env.chatBotApiKey;

  @EnviedField(varName: 'CHAT_BOT_BASE_URL')

  ///chat bot base url
  static final String chatBotBaseUrl = _Env.chatBotBaseUrl;
}
