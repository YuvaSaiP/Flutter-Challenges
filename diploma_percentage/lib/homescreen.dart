import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

 class homescreen extends StatelessWidget {
   const homescreen({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Calculate(),
      debugShowCheckedModeBanner: false,
     );
   }
 }
 class Calculate extends StatefulWidget {
   
   Calculate({Key key}) : super(key: key);
 
   _CalculateState createState() => _CalculateState();
 }
 
 class _CalculateState extends State<Calculate> {
   TextEditingController firstyear = new TextEditingController();
   TextEditingController thirdsem = new TextEditingController();
   TextEditingController fourthsem = new TextEditingController();
   TextEditingController fifthsem = new TextEditingController();
   TextEditingController sixthsem = new TextEditingController();
   
   double _percentage = 0;

    void _calculate(){
      setState(() {
        double a = double.parse(firstyear.text)*0.25;
        double b = double.parse(thirdsem.text)*0.50;
        double c = double.parse(fourthsem.text)*0.50;
        double d = double.parse(fifthsem.text);
        double e = double.parse(sixthsem.text); 
        double myMarks =(a+b+c+d+e);
        double total = 2350.0;
        _percentage=(myMarks/total)*100;
        _percentage = num.parse(_percentage.toStringAsFixed(2));
        
      });
    }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("My Percentage",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
         centerTitle: true,
         backgroundColor: Colors.deepOrange,
         actions: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               CircleAvatar(
                 backgroundImage: AssetImage('sum.png'),
                 radius: 11.0,
               ),
               IconButton(
                 onPressed: (){},
                 icon: Icon(Icons.help),
                 iconSize: 23.0,
                 tooltip: "Help",
                 color: Colors.white,
               ),
               //Text("@Mr404Found")
             ],
           ),
         ],
       ),
       body: SingleChildScrollView(
         
         padding: new EdgeInsets.fromLTRB(30, 10, 30, 0),
         child: Column(
           children: <Widget>[
             SizedBox(
               height: 10.0,
             ),
             TextField(
               cursorColor: Colors.black,
               decoration: InputDecoration(
                 labelText: "First year",
                 hintText: "Out of 1000",
                 enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.blue)),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
               ),
               controller: firstyear,
             ),
             SizedBox(
               height: 20.0,
             ),
             TextField(
               cursorColor: Colors.black,
               decoration: InputDecoration(
                 labelText: "3rd Sem",
                 hintText: "Out of 900",
                 enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.blue)),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
               ),
               controller: thirdsem,
             ),
             SizedBox(
               height: 20.0,
             ),
             TextField(
               cursorColor: Colors.black,
               decoration: InputDecoration(
                 labelText: "4th Sem",
                 hintText: "Out of 900",
                 enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.blue)),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
               ),
               controller: fourthsem,
               
             ),
             SizedBox(
               height: 20.0,
             ),
             TextField(
               cursorColor: Colors.black,
               decoration: InputDecoration(
                 labelText: "5th Sem",
                 hintText: "Out of 900",
                 enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.blue)),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
               ),
               controller: fifthsem,
             ),
             SizedBox(
               height: 20.0,
             ),
             TextField(
               decoration: InputDecoration(
                 labelText: "Training Marks",
                 hintText: "Out of 300",
                 enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.blue)),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange)),
               ),
               controller: sixthsem,
             ),
             SizedBox(
               height: 20.0,
             ),
             RaisedButton(
               onPressed: _calculate,
               color: Colors.deepOrange,
               child: Text("Calculate"),
               elevation: 5.0,
             ),
             Text(
              '$_percentage',
              style: TextStyle(color: Colors.black,fontSize: 40.0) //Theme.of(context).textTheme.display1,
            ),
           ],
         ),
       ),
     );
   }
 }
