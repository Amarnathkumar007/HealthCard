import 'package:badges/badges.dart';
import 'package:medicalhr/src/theme/colors.dart';
import 'package:medicalhr/src/widgets/categories.dart';
import 'package:medicalhr/src/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
              badgeContent: Text('1', style: TextStyle(color: Colors.white),),
              child: Icon(Icons.add_alert, color: primary,),
              ),
            ]
          ),
      );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: Text("HELLO!,", style: TextStyle(fontSize: 23, color: primary, fontWeight: FontWeight.w500),),),
                SizedBox(height: 5,),
                Container(child: Text(" ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
                SizedBox(height: 15,),
                CustomTextBox(),
                SizedBox(height: 25,),
                Container(child: Text("Categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                SizedBox(height:10),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryBox(title: "BILLS", icon: Icons.credit_card, color: Colors.red, ),
                      CategoryBox(title: "MEDICAL RECORDS", icon: Icons.airline_seat_individual_suite, color: Colors.blue, ),
                      CategoryBox(title: "MEDICATION", icon: Icons.local_hospital, color: Colors.purple, ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: NetworkImage("https://media.istockphoto.com/vectors/electronic-health-record-concept-vector-id1299616187?k=20&m=1299616187&s=612x612&w=0&h=gmUf6TXc8w6NynKB_4p2TzL5PVIztg9UK6TOoY5ckMM="),
                        fit: BoxFit.cover,)
                  ),
                ),

                SizedBox(height: 20,),
              ]
          ),
        ),
      );
  }
}