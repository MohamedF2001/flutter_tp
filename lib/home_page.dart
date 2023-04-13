import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsdM6yIu68-bB_dsdp6QM_X1JSuSRCFjZ_4A&usqp=CAU"),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/images/homme.png",
                        ),
                      ),
                    ]),
                const SizedBox(height: 20),
                const Text(
                  "NOM",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
