import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool lan1 = false;
  bool lan2 = false;
  bool lan3 = false;
  bool lan4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          title: Text(
            " App ",
            style: TextStyle(fontSize: 26),
          ),
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Languages",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: lan1,
                    onChanged: (value) {
                      setState(() {
                        lan1 = value!;
                      });
                    }),
                Text(
                  "English",
                  style: TextStyle(fontSize: 16.5),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: lan2,
                    onChanged: (value) {
                      setState(() {
                        lan2 = value!;
                      });
                    }),
                Text(
                  "Hindi",
                  style: TextStyle(fontSize: 16.5),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: lan3,
                    onChanged: (value) {
                      setState(() {
                        lan3 = value!;
                      });
                    }),
                Text(
                  "Gujarati",
                  style: TextStyle(fontSize: 16.5),
                ),
              ],
            ),
            CheckboxListTile(
              value: lan4,
              onChanged: (value) {
                setState(() {
                  lan4 = value!;
                });title: Text("Arbi");
              },
            ),
            // ListTile(
            //   leading: Text("1"),
            //   title: Text("ELON"),
            //   subtitle: Text("Tesla"),
            //   trailing: Text("CA"),
            // ),
          ],
        ),
      ),
    );
  }
}
