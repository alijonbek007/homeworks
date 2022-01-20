import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPage createState() => _FilterPage();
}

class _FilterPage extends State<FilterPage> {
  double _sliderCount = 5.0;
  RangeValues _currentRangeValues = const RangeValues(10, 70);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel_outlined,
                color: Colors.black,
              ),
            ),
            Text(
              "Filter",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "Reset all",
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text(
                    "Distance",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Text(
                    _sliderCount.toInt().toString() + "mi",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Slider(
                label: "${_sliderCount}",
                value: _sliderCount,
                min: 5,
                max: 15,
                divisions: 10,
                activeColor: Colors.green,
                onChangeEnd: (v) {
                  print("Slider Tugadi" + v.toString());
                },
                onChanged: (v) {
                  setState(() {
                    _sliderCount = v;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text(
                    "5 mi",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Text(
                    "15 mi",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Text(
                    "\$" +
                        _currentRangeValues.start.round().toString() +
                        " - \$" +
                        _currentRangeValues.end.round().toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                
              ],
            ),
            Container(
              child: RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 160,
                  divisions: 8,
                  activeColor: Colors.green,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text(
                    "& 00",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Text(
                    "& 160",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Text(
                "Cuisine",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "English",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 90.0,
                  height: 40.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "English",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 90.0,
                  height: 40.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Indian",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 70.0,
                  height: 40.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Thai",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 50.0,
                  height: 40.0,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Text(
                "Diet",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Paleo",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 90.0,
                  height: 40.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Ketegonic",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 100.0,
                  height: 40.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Jollof Rich",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 100.0,
                  height: 40.0,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Banku",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 100.0,
                  height: 40.0,
                ),
                 Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Tuna Sandwich",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  width: 120.0,
                  height: 40.0,
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20.0),
              width: 360.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
              ),
              child: Text(
                "Apply Filter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}