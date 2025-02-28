import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Stack(
        children: [
          _buildBody(),
          _setupButtonBack(context),
          _setupButtonEdit(context)
        ],
      ),
    ),
    );
  }
}

Widget _buildBody(){
  return Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildAvt(),
            _buildName(),
            _buildAddress(),
          ]
      )
  );
}

Widget _buildAvt(){
  return Image.asset(
    'assets/images/avt.png',
    width: 178,
    height: 178,
    fit: BoxFit.contain,
  );
}

Widget _buildName(){
  return Text(
      "Johan Smith",
      style: TextStyle(
        fontSize: 36,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      )
  );
}

Widget _buildAddress(){
  return Text(
    "California, USA",
    style: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
  );
}

Widget _buildButtonBack(){
  return  OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1.8, color: Color(0xFF668500)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        minimumSize: Size(50, 50),
        padding: EdgeInsets.zero,
      ),
    child: Icon(Icons.arrow_back, size: 25, color: Color(0xFF668500)),
    onPressed: () {},
  );
}

Widget _buildButtonEdit(){
  return  OutlinedButton(
    style: OutlinedButton.styleFrom(
      side: BorderSide(width: 1.8, color: Color(0xFF668500)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),
      minimumSize: Size(50, 50),
      padding: EdgeInsets.zero,
    ),
    child: Image.asset(
        'assets/images/edit.png',
        width: 24,
        height: 24,
        fit: BoxFit.contain),
    onPressed: () {},
  );
}

Widget _setupButtonBack(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
      left: screenWidth * 0.08,
      top: screenHeight * 0.05,
        child: _buildButtonBack()
    );
}

Widget _setupButtonEdit(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  return Positioned(
    right: screenWidth * 0.08,
    top: screenHeight * 0.05,
    child: _buildButtonEdit(),
  );
}

