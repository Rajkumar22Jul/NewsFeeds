import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.only(bottom: 25),
            // decoration: BoxDecoration(
            //   image: DecorationImage(image: AssetImage('assets/images/nonet.jpeg'))
            // ),
            child: Image.asset('assets/images/nonet.jpeg',height: 200,alignment: Alignment.center,),
          ),
          Text("No Internet Connection",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
