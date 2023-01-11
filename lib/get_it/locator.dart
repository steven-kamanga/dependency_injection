import 'package:dependency_injection/inherited_widget/app_info.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => AppInfo());
  locator.registerFactory(() => Size());
}
