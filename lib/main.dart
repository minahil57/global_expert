import 'package:blepharoplasty/export.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();

  DioHelper.init();
  EasyLoading.instance
    ..textStyle = getRegularStyle(fontSize: 12, color: Colors.white)
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = kcPrimaryColor
    ..radius = 12
    ..indicatorSize = 30
    ..textColor = kcWhitecolor
    ..textStyle = getRegularStyle(fontSize: 14)
    ..indicatorColor = kcWhitecolor
    ..maskColor = kcWhitecolor
    ..userInteractions = false
    ..displayDuration = const Duration(seconds: 1)
    ..dismissOnTap = false;
  runApp(const BlepharoplastyApp());
}



