import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/bkg.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center)),

      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                icon: Icon(
                  Icons.ac_unit_rounded,
                  size: 250,
                  color: Colors.white,
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Welcome To The Tasbeeh App!",
                style: TextStyle(fontSize: 50,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "press the icon to start your tasbeeh!!",
                style: TextStyle(fontSize: 30,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
