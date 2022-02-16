import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(80),
      child: GestureDetector(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 430,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.blue,
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(1),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/profile.png'),
                        )),
                  ),
                  // Positioned(
                  //     bottom:30,
                  //     right:200,
                  //   child: Container(
                  //   height: 80,
                  //   width: 80,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     border: Border.all(
                  //       width: 4,
                  //       color: Colors.white,
                  //     ),
                  //     color: Colors.blue
                  //   ),
                  //     child: Icon(Icons.edit,size: 40,),
                  // ),)
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'OnAir Music',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Center(
                        child: Text(
                          'FIND FRIENDS',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text('13'),
                            SizedBox(height: 10,),
                            Text('PLAYLIST',style: TextStyle(fontSize: 19))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text('5,179'),
                            SizedBox(height: 10,),
                            Text('FOLLOWERS',style: TextStyle(fontSize: 19))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text('3,562'),
                            SizedBox(height: 10,),
                            Text('FOLLOWING',style: TextStyle(fontSize: 19),)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
