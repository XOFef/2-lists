import 'package:flutter/material.dart';

class Lists_test extends StatelessWidget {
   Lists_test({super.key});

  final List<String> horizont = <String>["один", "два", "три", "четыре", "пять", "шесть", "семь", "восемь", "девать", "десять"];
  final List<String> vertical = <String>["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"];
  final List<int> color = <int>[100, 200, 300, 400, 500, 600, 700, 800, 900, 1000];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("aboba"),),
      body: 
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: horizont.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      width: 80,
                      margin: const EdgeInsets.all(8),
                      color: Colors.amber[color[index]],
                      child: Center(
                        child: Text(horizont[index]),
                      ),
                    );
                  }
                  ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  itemCount: vertical.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      height: 100,
                      width: 50,
                      margin: const EdgeInsets.all(16),
                      color: Colors.blue[color[index]],
                      child: Center(
                        child: Text(vertical[index]),
                      ),
                    );
                  }
                  ),
              )
            ],
          ),
        );
  }
}