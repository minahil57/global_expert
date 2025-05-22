import 'package:blepharoplasty/export.dart';


abstract final class Snackbars {
  static void copied(String message) {
     Get.rawSnackbar(
     message: 'Copied to clipboard',
      maxWidth: Get.width * 0.8,
      snackPosition: SnackPosition.TOP,
      backgroundColor: kcPrimaryColor,
      borderRadius: 14,
      duration: const Duration(seconds: 2),
      barBlur: 10,
      overlayBlur: 2,
      shouldIconPulse: false,
      icon: const Icon(
        Icons.check_circle,
        color: kcWhitecolor,
      ),
    );
  }
  static void success(String message){
     Get.rawSnackbar(
      message: message,
      maxWidth: Get.width * 0.8,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      borderRadius: 14,
      duration: const Duration(seconds: 2),
      barBlur: 10,
      overlayBlur: 2,
      shouldIconPulse: false,
      icon: const Icon(
        IconsaxPlusLinear.check,
        color: kcWhitecolor,
      ),
      
     
    );
  }

  static void error(String message) {
     Get.rawSnackbar(
       message: message,
      maxWidth: Get.width * 0.8,
      snackPosition: SnackPosition.TOP,
      backgroundColor: kcErrorColor,
      borderRadius: 14,
      duration: const Duration(seconds: 2),
      barBlur: 10,
      overlayBlur: 2,
      shouldIconPulse: false,
      icon: const Icon(
        IconsaxPlusLinear.info_circle,
        color: kcWhitecolor,
      ),
      
      
    );
  }

  static void somethingWentWrong() {
    error(StringConstants.somethingWentWrong.tr);
  }

  static void expiredSession() {
    error(StringConstants.expiredSession.tr);
  }

  static void warning(String message) {
     Get.rawSnackbar(
       message: message,
      maxWidth: Get.width * 0.8,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      borderRadius: 14,
      duration: const Duration(seconds: 2),
      barBlur: 10,
      overlayBlur: 2,
      shouldIconPulse: false,
      icon: const Icon(
        Icons.check_circle,
        color: kcWhitecolor,
      ),
      
      
    );
  }

  static void warningWithTitle(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: kcPrimaryColor,
      colorText: Colors.white,
    );
  }
}