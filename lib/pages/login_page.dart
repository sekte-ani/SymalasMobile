import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:symalas_mobile/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingat Saya',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: darkBlueColor,
                    ),
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
              SizedBox(
                width: double.infinity,
                height: 47,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      color: whiteColor,
                    ),
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
