import 'const.dart';
import 'flutter_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'app_clipper.dart';
import 'package:flutter/material.dart';
import 'package:petfood/utils/my_flutter_app_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Bienvenido.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                IconButton(
                  icon:
                      Icon(Icons.account_circle, color: Colors.black, size: 40),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              height: MediaQuery.of(context).size.height * .45,
              width: MediaQuery.of(context).size.width * 75,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Swiper(
                itemCount: 3,
                autoplay: true,
                layout: SwiperLayout.STACK,
                itemBuilder: (BuildContext context, int index) {
                  switch (index) {
                    case 0:
                      return Center(
                        child: Container(
                          width: 230,
                          margin: EdgeInsets.only(right: 16),
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: ClipPath(
                                  clipper: AppClipper(
                                      cornerSize: 25, diagonalHeight: 100),
                                  child: Container(
                                    color: Color(0xFF0FC9F2),
                                    width: 230,
                                    child: Stack(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Expanded(child: SizedBox()),
                                              Container(
                                                width: 150,
                                                child: Text(
                                                  "CROQUETAS",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 115,
                                  right: 10,
                                  child: CircularPercentIndicator(
                                    radius: 100.0,
                                    lineWidth: 10.0,
                                    percent: 0.9,
                                    center: Text(
                                      "90%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        height: 2.0,
                                      ),
                                    ),
                                    progressColor: Color(0xFFF2B90C),
                                  )),
                            ],
                          ),
                        ),
                      );
                      break;
                    case 1:
                      return Center(
                        child: Container(
                          width: 230,
                          margin: EdgeInsets.only(right: 16),
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: ClipPath(
                                  clipper: AppClipper(
                                      cornerSize: 25, diagonalHeight: 100),
                                  child: Container(
                                    color: Color(0xFF056CF2),
                                    width: 230,
                                    child: Stack(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Expanded(child: SizedBox()),
                                              Container(
                                                width: 165,
                                                child: Text(
                                                  "AGUA NO CONSUMIBLE",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 115,
                                  right: 10,
                                  child: CircularPercentIndicator(
                                    radius: 100.0,
                                    lineWidth: 10.0,
                                    percent: 0.5,
                                    center: Text(
                                      "50%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        height: 2.0,
                                      ),
                                    ),
                                    progressColor: Color(0xFFF2B90C),
                                  )),
                            ],
                          ),
                        ),
                      );

                      break;
                    case 2:
                      return Center(
                        child: Container(
                          width: 230,
                          margin: EdgeInsets.only(right: 16),
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: ClipPath(
                                  clipper: AppClipper(
                                      cornerSize: 25, diagonalHeight: 100),
                                  child: Container(
                                    color: Color(0xFF05AFF2),
                                    width: 230,
                                    child: Stack(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Expanded(child: SizedBox()),
                                              Container(
                                                width: 165,
                                                child: Text(
                                                  "AGUA CONSUMIBLE",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 115,
                                  right: 10,
                                  child: CircularPercentIndicator(
                                    radius: 100.0,
                                    lineWidth: 10.0,
                                    percent: 0.1,
                                    center: Text(
                                      "10%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        height: 2.0,
                                      ),
                                    ),
                                    progressColor: Color(0xFFF2B90C),
                                  )),
                            ],
                          ),
                        ),
                      );
                      break;
                  }
                },
                itemWidth: MediaQuery.of(context).size.width * .65,
              ),
            ),
          ),
          SizedBox(height: 6),
          GestureDetector(
            onTap: () {
              print("hpoa");
            },
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Stack(children: <Widget>[
                    Icon(
                      MyFlutterApp.water_drop,
                      size: 100,
                      color: Colors.blueAccent,
                    ),
                    Icon(
                      Icons.timer,
                      size: 30,
                    ),
                  ]),
                  SizedBox(width: 16),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "CONFIGURAR",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "Cambio de Agua",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black26,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 6),
          GestureDetector(
            onTap: () {
              print("hpoa");
            },
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Stack(children: <Widget>[
                    Icon(
                      MyFlutterApp.food,
                      size: 100,
                      color: Colors.brown,
                    ),
                    Icon(
                      Icons.timer,
                      size: 30,
                    ),
                  ]),
                  SizedBox(width: 16),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "CONFIGURAR",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "Servir comida",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black26,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 6),
          GestureDetector(
            onTap: () {
              print("hpoa");
            },
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Stack(children: <Widget>[
                    Icon(
                      MyFlutterApp.water_drop,
                      size: 100,
                      color: Colors.blueAccent,
                    ),
                    Icon(
                      Icons.add_circle,
                      size: 30,
                    ),
                  ]),
                  SizedBox(width: 16),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "CAMBIAR COMIDA",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "Cambiar agua ahora",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black26,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 6),
          GestureDetector(
            onTap: () {
              print("hpoa");
            },
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Stack(children: <Widget>[
                    Icon(
                      MyFlutterApp.food,
                      size: 100,
                      color: Colors.brown,
                    ),
                    Icon(
                      Icons.add_circle,
                      size: 30,
                    ),
                  ]),
                  SizedBox(width: 16),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "SERVIR COMIDA",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "Servir comida ahora",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black26,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: Color(0xFF001EBA),
          unselectedItemColor: Colors.black26,
          currentIndex: indexpage,
          onTap: (index) {
            setState(() {
              indexpage = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                size: 25,
              ),
              title: Text("data"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bluetooth_searching,
                size: 25,
              ),
              title: Text("data"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground(int index, double width) {
    return ClipPath(
      clipper: AppClipper(cornerSize: 25, diagonalHeight: 100),
      child: Container(
        color: Colors.red,
        width: width,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Icon(
                      Icons.sd_storage,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    width: 125,
                    child: Text(
                      "HOLAA",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "HIKAA",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Icon(
                    FlutterIcons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
