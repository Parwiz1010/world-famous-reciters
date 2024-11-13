import 'package:flutter/material.dart';





class name extends StatelessWidget {
  const name({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/parwiz.JPG'),
          ),
          Text('پرویز احمد رحمانی',style: TextStyle(fontFamily: 'aaa',color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
           SizedBox(height: 15,),
          Text('FLUTTER DVELOPER',style: TextStyle(letterSpacing: 2,color: Colors.white,fontSize: 20),),
          SizedBox(
            height: 20,
            width: 150,
           child:  Divider(color: Colors.white,),
          ),
          
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
            color: Colors.white,
            child:ListTile(
              leading: Icon(Icons.phone),
              title: Text('0790100023', style: TextStyle(letterSpacing: 2,),),
            )
            ),
            SizedBox(width: 10,),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('Parwiz Ahmad Rahmani @amil.com'),
              )
            )
        ],
      ),
      
    );
  }
}









 