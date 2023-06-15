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
              ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(80),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(5, 10),
                  blurRadius: 10,
                  color: color.AppColor.gradientSecond.withOpacity(0.2),
                )
              ],
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Próximo Entrenamiento',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Tonificación de Piernas y Entrenamiento de Gluteos',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '60 min',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                  color: color.AppColor.gradientFirst,
                                  blurRadius: 12,
                                  offset: const Offset(3, 7))
                            ]),
                        child: const Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                          size: 60,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/card.png'), fit: BoxFit.fill),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(-8, -10),
                        color: Colors.deepPurple.withOpacity(0.4),
                      )
                    ]),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
