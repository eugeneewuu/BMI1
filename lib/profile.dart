import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text('PROFILE'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                      image: AssetImage('images/ujin.jpeg'), fit: BoxFit.cover),
                ),
                width: 100,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Eugene", style: TextStyle(
                    fontSize: 20
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("1915101009"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Ilmu Komputer 6A "),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Indonesia"),
              )
            ],
          ),
        ),
      ),
    );
  }
}