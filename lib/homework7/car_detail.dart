
import 'package:flutter/material.dart';
import 'package:homework/homework7/strings.dart';
import 'package:palette_generator/palette_generator.dart';

class CarDetail extends StatefulWidget {
  int kelganIndex;
  CarDetail(this.kelganIndex);

  @override
  _CarDetailState createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {

  int s =0;
  soniya(){
    Future.delayed(Duration(seconds: 3), (){
      setState(() {
        s=3;
      });
    });
  }
  @override
  void initState(){
    super.initState();
    _updatePolettegenerator();
  }
  PaletteGenerator? paletteGenerator;
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: paletteGenerator!.darkVibrantColor != null ? paletteGenerator!.darkVibrantColor!.color : Colors.white,
            stretch: true,
            title: Text(Strings.CAR_NAMES[widget.kelganIndex]),
            expandedHeight: 260.0,
            floating: true,
            // pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/homework7/${Strings.CAR_NAMES[widget.kelganIndex].toLowerCase()}_katta${widget.kelganIndex}.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        Strings.CAR_YEARS[widget.kelganIndex],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        Strings.CAR_INFO[widget.kelganIndex],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18.0,
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
    );
  }

  Future<void> _updatePolettegenerator() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage(
        "assets/images/homework7/${Strings.CAR_NAMES[widget.kelganIndex].toLowerCase()}_katta${widget.kelganIndex}.jpeg",
      ),
      size: Size(360.0, 260.0),
    );
    setState(() {
      
    });
  }
}
