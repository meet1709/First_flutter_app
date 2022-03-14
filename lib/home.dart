
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_constant.dart';
import 'left_bar.dart';
import 'right_bar.dart';



class HomeScreen extends StatefulWidget
{
  @override
  _HomeScreenState createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen>
{
    TextEditingController _heightCont = TextEditingController();
    TextEditingController _wightCont = TextEditingController();
    double _bmiRes = 0;
    String res ="";




    @override
    Widget build(BuildContext context)
    {
        return Scaffold(
            appBar: AppBar(

                title: Text('BMI calc',
                style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),

                ),
            backgroundColor: Colors.transparent,
            elevation: 0,

            ),

            backgroundColor: mainHexColor,
            body: SingleChildScrollView(
              
              child: Column(

                children: [
                  SizedBox(height: 20,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 130,
                        child: TextField(
                            controller: _heightCont,
                            style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color : accentHexColor,

                            ),


                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText : "Hieght",
                              hintStyle: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.w300,
                                color:Colors.white.withOpacity(.8)
                              
                              ),





                             ),


                        ),
                      ),
                      Container(
                        width: 130,
                        child: TextField(
                            
                            controller: _wightCont,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color : accentHexColor,

                            ),


                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText : "Width",
                              hintStyle: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.w300,
                                color:Colors.white.withOpacity(.8)
                              
                              ),





                             ),


                        ),
                      ),

                    ],


                  ),

                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){

                      double _h = double.parse(_heightCont.text);
                      double _w = double.parse(_wightCont.text);

                      setState(() {
                        _bmiRes = _w/ (_h * _h);
                        if(_bmiRes > 25)
                        {
                          res = "You\`re Over Weight";
                        }
                        else if(_bmiRes >= 18.5 && _bmiRes <= 25)
                        {
                          res = "You have Normal weight";
                        }
                        else
                        {
                           res = "You are under weight";
                        }
                      });

                    },
                  
                  child:Container(
                    child:Text("Calculate ", style: TextStyle(fontSize: 90,color:accentHexColor),),

                  ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    child:Text(_bmiRes.toStringAsFixed(2), style: TextStyle(fontSize: 90,color:accentHexColor),),

                  ),
                  SizedBox(height: 30,),
                  
                  Visibility(
                    visible: res.isNotEmpty,
                  child:Container(
                    child:Text(res, style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400 ,color:accentHexColor),),

                  ),
                  ),
                  SizedBox(height: 10),
                  LeftBar(barWidth: 40),
                  SizedBox(height: 20,),
                  LeftBar(barWidth: 70),
                   SizedBox(height: 20,),
                  LeftBar(barWidth: 40),
                   SizedBox(height: 20,),
                  RightBar(barWidth: 70),
                   SizedBox(height: 50,),
                  RightBar(barWidth: 70),

                ],

              ),)

        );
    }
}