import 'package:firstapp/widget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstScreen(),
    );
  }
}

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  State<MyFirstScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyFirstScreen> {
  var uEmail = TextEditingController();
  var uPassword = TextEditingController();
  DateTime? pickerDate;

  var colorsArry = [
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.teal,
    Colors.brown,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body:  Container(
    child: RichText(
    text: TextSpan(
        style: TextStyle(fontSize: 21),
    children: <TextSpan>[
    TextSpan(text: 'Hello'),
    TextSpan(text: 'World'),
    ],
    ),
    ),
    ),

    //
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //       child: CustomButton(
      //         btName: 'Select Date',
      //         colorName: Colors.grey,
      //         textStyle: TextStyle(fontSize: 21, fontWeight: FontWeight.w300),
      //         iconName: Icon(Icons.date_range_sharp),
      //         callback: () async {
      //           pickerDate = await showDatePicker(
      //               context: context,
      //               initialDate: DateTime.now(),
      //               firstDate: DateTime(1947),
      //               lastDate: DateTime.now());

      //           if (pickerDate != null) {
      //             print('${DateFormat('dd-MMMM-yyyy').format(pickerDate!)}');
      //           }
      //         },
      //       ),
      //     )
      //   ],
      // )

      // GridView.builder(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 100,
      //     crossAxisSpacing: 11,
      //     mainAxisSpacing: 11,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: colorsArry[index],
      //     );
      //   },
      //   itemCount: colorsArry.length,
      // ),

      // Center(
      //   child: Container(
      //     width: 300,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextField(
      //           controller: uEmail,
      //           keyboardType: TextInputType.emailAddress,
      //           decoration: InputDecoration(
      //             hintText: 'Enter Your Email',
      //             prefixIcon: Icon(Icons.email),
      //             enabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(21),
      //                 borderSide: BorderSide(
      //                   color: Colors.grey.shade600,
      //                   width: 2,
      //                 )),
      //             focusedBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(21),
      //                 borderSide:
      //                     BorderSide(color: Colors.blue.shade800, width: 2)),
      //             disabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(21),
      //                 borderSide:
      //                     BorderSide(color: Colors.grey.shade400, width: 2)),
      //           ),
      //         ),
      //         Container(height: 11),
      //         TextField(
      //           controller: uPassword,
      //           obscureText: true,
      //           obscuringCharacter: '#',
      //           decoration: InputDecoration(
      //             hintText: 'Enter Your Password',
      //             prefixIcon: Icon(Icons.key_outlined),
      //             enabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(21),
      //                 borderSide: BorderSide(
      //                   color: Colors.grey.shade600,
      //                   width: 2,
      //                 )),
      //             focusedBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(21),
      //                 borderSide:
      //                     BorderSide(color: Colors.blue.shade800, width: 2)),
      //             disabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(21),
      //                 borderSide:
      //                     BorderSide(color: Colors.grey.shade400, width: 2)),
      //           ),
      //         ),
      //         Container(
      //           height: 11,
      //         ),
      //         Container(
      //           height: 50,
      //           width: 100,
      //           child: ElevatedButton(
      //               onPressed: () {
      //                 String emailt = uEmail.text.toString();
      //                 String passwordt = uPassword.text.toString();

      //                 print(
      //                     'User Email is $uEmail and user password is $uPassword');

      //                 uEmail.clear();
      //                 uPassword.clear();
      //               },
      //               child: Text(
      //                 'Login',
      //                 style: TextStyle(fontSize: 21),
      //               )),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Text(
      //             pickerDate != null
      //                 ? "${DateFormat('dd-MMMM-yyyy').format(dateTime)}"
      //                 : "Date is not Selected",
      //             style: TextStyle(fontSize: 21)),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         ElevatedButton(
      //             onPressed: () async {
      //               pickerDate = await showDatePicker(
      //                   context: context,
      //                   initialDate: DateTime.now(),
      //                   firstDate: DateTime(1947),
      //                   lastDate: DateTime.now());

      //               if (pickerDate != null) {
      //                 setState(() {});
      //               }
      //             },
      //             child: Text("Select Date", style: TextStyle(fontSize: 21))),
      //         SizedBox(
      //           height: 20,
      //         ),
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}
