import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:symalas_mobile/theme.dart';
import 'package:symalas_mobile/ui/pages/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  var _obscureText = true.obs;
  final RxBool isChecked = false.obs;
  final RxBool isSwitch = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        children: [
          Container(
            width: 251,
            height: 216,
            margin: const EdgeInsets.only(
              top: 130,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
          Column(
            children: [
              // username input
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan nama pengguna',
                  hintStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => TextFormField(
                  obscureText: _obscureText.value,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _obscureText.value = !_obscureText.value;
                      },
                      child: Icon(_obscureText.value
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    hintText: 'Kata sandi',
                    hintStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.all(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Switch(
                          value: isSwitch.value,
                          activeTrackColor: blueColor,
                          onChanged: (bool value) {
                            isSwitch.value = value;
                          },
                        ),
                      ),
                      Text(
                        'Ingat Saya',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: darkBlueColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Lupa kata sandi ?',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: darkBlueColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.off(DashboardPage());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size.fromHeight(47)),
                child: Text(
                  'Masuk',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w800,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
