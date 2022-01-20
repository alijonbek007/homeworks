import 'package:flutter/material.dart';
import 'package:homework/homework13/login_page.dart';

class SalePageWaterUi extends StatefulWidget {
  const SalePageWaterUi({Key? key}) : super(key: key);

  @override
  _SalePageWaterUiState createState() => _SalePageWaterUiState();
}

class _SalePageWaterUiState extends State<SalePageWaterUi> {
  int brinchiSuvNarxi = 0;
  int brinchiSuvSoni = 0;

  int ikinchiSuvNarxi = 0;
  int ikinchiSuvSoni = 0;

  int uchinchiSuvNarxi = 0;
  int uchinchiSuvSoni = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "Basket",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 27.0, top: 7.0),
                width: 15.0,
                height: 15.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                ),
              )
            ],
          ),
        ],
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Icon(
        //       Icons.arrow_back_ios,
        //       color: Colors.black,
        //       size: 25,
        //     ),
        //     Text(
        //       "Basket",
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontSize: 25,
        //       ),
        //     ),
        //     Stack(
        //       children: [
        //         IconButton(
        //           onPressed: () {},
        //           icon: Icon(
        //             Icons.shopping_cart_outlined,
        //             color: Colors.black,
        //             size: 30,
        //           ),
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(left: 27.0, top: 7.0),
        //           width: 15.0,
        //           height: 15.0,
        //           decoration: BoxDecoration(
        //             color: Colors.red,
        //             borderRadius: BorderRadius.circular(
        //               30.0,
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ],
        // ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                //  tepadan brinchi container
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      //  baklashka rasmi turgan container
                      Container(
                        height: 170,
                        width: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "",
                            ),
                          ),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: const Text(
                              "Masafi Water",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: const Text(
                              "Bottle 18,9 L",
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          //  Sonlarni ozgartirish qismi
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "💲$brinchiSuvNarxi",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            brinchiSuvSoni -= 1;
                                            brinchiSuvNarxi =
                                                7 * brinchiSuvSoni;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.exposure_minus_1,
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "$brinchiSuvSoni",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            brinchiSuvSoni++;
                                            brinchiSuvNarxi =
                                                7 * brinchiSuvSoni;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add_circle_rounded,
                                          color: Colors.tealAccent,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //  tepadan ikinchi container
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      //  baklashka rasmi turgan container
                      Container(
                        height: 170,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.cyan,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: const Text(
                              "Cooler Frost",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: const Text(
                              "Floor",
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          //  Sonlarni ozgartirish qismi
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "💲$ikinchiSuvNarxi",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            ikinchiSuvSoni -= 1;
                                            ikinchiSuvNarxi =
                                                50 * ikinchiSuvSoni;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.exposure_minus_1,
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "$ikinchiSuvSoni",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            ikinchiSuvSoni += 1;
                                            ikinchiSuvNarxi =
                                                50 * ikinchiSuvSoni;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add_circle_rounded,
                                          size: 20,
                                          color: Colors.tealAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //  tepadan uchinchi container
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      //  baklashka rasmi turgan container
                      Container(
                        height: 170,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightBlue,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: const Text(
                              "Summer Time",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: const Text(
                              "Bottle 2 L",
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          //  Sonlarni ozgartirish qismi
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "💲$uchinchiSuvNarxi",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            uchinchiSuvSoni -= 1;
                                            uchinchiSuvNarxi =
                                                1 * uchinchiSuvSoni;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.exposure_minus_1,
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "$uchinchiSuvSoni",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            uchinchiSuvSoni += 1;
                                            uchinchiSuvNarxi =
                                                1 * uchinchiSuvSoni;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add_circle_rounded,
                                          color: Colors.tealAccent,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.deepOrange.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 50.0,
                ),
                Text(
                  "💲${uchinchiSuvNarxi + ikinchiSuvNarxi + brinchiSuvNarxi}",
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(50)),
                  child: ElevatedButton(
                    child: Text(
                      "Buy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StepperExample(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
