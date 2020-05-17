import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<Layouts> layouts = new List<Layouts>();

  void _addLayouts() {
    layouts.add(Layouts('Images/chat.jpg', ' Welcome', Icons.code,
        'We are here to improve the students,make change and add a new lifestyle'));
    layouts.add(Layouts('Images/App2.jpg', 'Android ', Icons.android,
        'We are here to improve the students,make change and add a new lifestyle'));
    layouts.add(Layouts(
        'Images/chat2.jpg',
        'We Are Here',
        Icons.account_balance,
        'We are here to improve the students,make change and add a new lifestyle'));
  }

  @override
  Widget build(BuildContext context) {
    _addLayouts();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          PageIndicatorContainer(
            length: 3,
            align: IndicatorAlign.center,
            indicatorSpace: 20.0,
            padding: const EdgeInsets.all(10),
            indicatorColor: Colors.grey[600],
            indicatorSelectorColor: Colors.deepPurple,
            shape: IndicatorShape.circle(size: 12),
            child:PageView.builder(
              itemBuilder: (context, index) {
                return Stack(
                  children: <Widget>[
                    Transform.translate(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(layouts[index].image),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        height: 600,
                      ),
                      offset: Offset(0, -100),
                    ),
                    Transform.translate(
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 250.0),
                          ),
                          Icon(layouts[index].icon,
                              color: Colors.deepPurpleAccent, size: 80.0),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            layouts[index].title,
                            style: TextStyle(color: Colors.black54, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            layouts[index].description,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      offset: Offset(30, 0),
                    ),

                  ],
                );
              },
              itemCount: 3,

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 24, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          _updateSeen();
                          return HomeScreen();
                        }

                    ));

                  },
                  child: Text('Get Strarted' , style: TextStyle(color: Colors.white , fontSize: 16 , letterSpacing: 1),),
                  color: Colors.deepPurple,
                  elevation: 3.0,

                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
  void _updateSeen() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }

}

class Layouts {
  String _image;
  String _title;
  IconData _icon;
  String _description;

  Layouts(this._image, this._title, this._icon, this._description);

  String get description => _description;

  IconData get icon => _icon;

  String get title => _title;

  String get image => _image;
}
