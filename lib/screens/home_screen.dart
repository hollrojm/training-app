import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training_app/utils/colors.dart' as color;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    _initData();
    super.initState();
  }

  List info = [];
  void _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/info.json")
        .then((value) => info = json.decode(value));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 25, right: 30),
        child: Column(
          children: [
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
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
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
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/card.png'),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            offset: const Offset(8, 10),
                            color: Colors.deepPurple.withOpacity(0.4),
                          ),
                          BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(-1, -5),
                            color: Colors.deepPurple.withOpacity(0.4),
                          )
                        ]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(
                      right: 180,
                      bottom: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/women_running.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    //color: Colors.redAccent.withOpacity(0.3),
                    margin: const EdgeInsets.only(left: 175, top: 46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Lo Estás Haciendo Genial',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: 'Avanza\n',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                              children: [TextSpan(text: 'Apégate a tu plan')]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Text(
                  'Área de enfoque',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurple),
                ),
              ],
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    itemCount: info.length.toDouble() ~/ 2,
                    itemBuilder: (_, i) {
                      int a = 2 * i;
                      int b = 2 * i + 1;
                      return Row(
                        children: [
                          Container(
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            height: 190,
                            margin: const EdgeInsets.only(
                                left: 30, bottom: 15, top: 10),
                            padding: const EdgeInsets.only(
                              bottom: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(info[a]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3,
                                    offset: const Offset(5, 5),
                                    color: color.AppColor.gradientFirst
                                        .withOpacity(0.5)),
                                BoxShadow(
                                    blurRadius: 3,
                                    offset: const Offset(-5, -5),
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.1))
                              ],
                            ),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[a]['title'],
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.deepPurple),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            height: 190,
                            margin: const EdgeInsets.only(
                                left: 30, bottom: 15, top: 10),
                            padding: const EdgeInsets.only(
                              bottom: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(info[b]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3,
                                    offset: const Offset(5, 5),
                                    color: color.AppColor.gradientFirst
                                        .withOpacity(0.5)),
                                BoxShadow(
                                    blurRadius: 3,
                                    offset: const Offset(-5, -5),
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.1))
                              ],
                            ),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[b]['title'],
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.deepPurple),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
