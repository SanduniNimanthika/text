import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Button"),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Color(0xff377DFF),
                  onSurface: Colors.grey,
                  elevation: 20,
                ),
                onPressed: () {},
              ),
              Text("title",
                  style: TextStyle(
                      color: Color(0xff344356),
                      fontSize: 30,
                      fontFamily: 'Lato',
                      letterSpacing: 0.32,
                      fontWeight: FontWeight.w700,
                      height: 1.3333333333333333)),
              Text("subtitle",
                  style: TextStyle(
                      color: Color(0xff243443),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      letterSpacing: 0.32,
                      fontWeight: FontWeight.w700,
                      height: 1.3333333333333333)),
              Text("description",
                  style: TextStyle(
                      color: Color(0xff243443),
                      fontSize: 16,
                      fontFamily: 'Lato',
                      letterSpacing: 0.32,
                      fontWeight: FontWeight.w700,
                      height: 1.3333333333333333)),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "TeleNumber",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xff377DFF),
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xff377DFF),
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                  ),
                  validator: (input) => input.isEmpty
                      ? 'Please type your phone number  here'
                      : null,
                  onChanged: (input) {
                    setState(() {});
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
