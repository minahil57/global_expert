
import 'package:blepharoplasty/export.dart';

class BlepharoplastyApp extends StatelessWidget {
  const BlepharoplastyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Blepharoplasty',
      debugShowCheckedModeBanner: false,
      theme: theme,
      locale: const Locale('en_US'),
      fallbackLocale: const Locale('en_US'),
      translations: CustomTranslations(),
      defaultTransition: Transition.cupertino,
      initialRoute: AppRouter.initialRoute,
      getPages: AppRouter.pages(),
    );
  }
}