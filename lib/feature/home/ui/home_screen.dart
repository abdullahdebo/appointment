import 'package:appointment/feature/home/ui/widget/doctorsb_blue_container.dart';
import 'package:appointment/feature/home/ui/widget/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20,
            16,
            20,
            28,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              DoctorsbBlueContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
