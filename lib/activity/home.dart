import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Tasbeeh Counter"),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/tasbeeh.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center)),
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 150,
                child:
                FloatingActionButton(
                  onPressed: () => setState(() {
                    counter += 1;
                  }),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(),

                ),
                ),
                SizedBox(height: 30,),
                Text("Tasbeeh $counter",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () => setState(() {
                          counter = 0;
                        }),
                    icon: Icon(
                      Icons.restart_alt_sharp,
                      size: 50,
                      color: Colors.white,
                    )),
              ]),
            )));
  }
}
