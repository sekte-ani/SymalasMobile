import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symalas_mobile/controllers/dashboard_controller.dart';
import 'package:symalas_mobile/theme.dart';
import 'package:symalas_mobile/ui/pages/akun_page.dart';
import 'package:symalas_mobile/ui/pages/jadwal_page.dart';
import 'package:symalas_mobile/ui/pages/tugas_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                TugasPage(),
                JadwalPage(),
                AkunPage(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 74,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.15),
                  offset: Offset(0, -1),
                  blurRadius: 37,
                ),
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: controller.tabIndex,
              onTap: controller.changeTabIndex,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: darkBlueColor,
              selectedItemColor: blueColor,
              backgroundColor: subtleBlueColor,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedLabelStyle: blueTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: darkBlueTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image.asset(
                      'assets/ic_book.png',
                      height: 20,
                      color:
                          controller.tabIndex == 0 ? blueColor : darkBlueColor,
                    ),
                  ),
                  label: 'Tugas',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image.asset(
                      'assets/ic_calendar.png',
                      height: 20,
                      color:
                          controller.tabIndex == 1 ? blueColor : darkBlueColor,
                    ),
                  ),
                  label: 'Jadwal',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image.asset(
                      'assets/ic_person.png',
                      height: 20,
                      color:
                          controller.tabIndex == 2 ? blueColor : darkBlueColor,
                    ),
                  ),
                  label: 'Akun',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
