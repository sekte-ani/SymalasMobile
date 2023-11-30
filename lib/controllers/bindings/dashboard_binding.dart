import 'package:get/get.dart';
import 'package:symalas_mobile/controllers/akun_controller.dart';
import 'package:symalas_mobile/controllers/dashboard_controller.dart';
import 'package:symalas_mobile/controllers/jadwal_controller.dart';
import 'package:symalas_mobile/controllers/tugas_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<TugasPageController>(() => TugasPageController());
    Get.lazyPut<JadwalPageController>(() => JadwalPageController());
    Get.lazyPut<AkunPageController>(() => AkunPageController());
  }
}
