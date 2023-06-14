import 'package:flutter/material.dart';
import 'package:training_app/utils/colors.dart' as color;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 25, right: 30),
        child: Column(children: [
          Row(
            children: [
              const Text(
                'Entrenamiento',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Expanded(child: Container()),
              const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
              const Icon(
                Icons.calendar_month_outlined,
                size: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text(
                'Tu programa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Expanded(child: Container()),
              const Text(
                'Detalles',
                style: TextStyle(fontSize: 20, color: Colors.deepPurple),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.arrow_forward),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurple.withOpacity(0.8),
                color.AppColor.gradientSecond.withOpacity(0.9)
              ]),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80)),
            ),
          )
        ]),
      ),
    );
  }
}
