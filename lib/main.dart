import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 30, 187, 214),
          title: Text(
            "Anjay",
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          "https://picsum.photos/200/300",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Toko joki ff",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Image.network(
                      "https://picsum.photos/400/200",
                      fit: .cover,
                      width: .infinity,
                      colorBlendMode: .darken,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        'Diamond ff promo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "skin",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "diamond",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "senjata",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.green)),
                      child: Text(
                        "emote",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            "https://picsum.photos/id/400/200",
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 200,
                          ),
                          Text(
                            "senjata rudal",
                            style: TextStyle(fontWeight: .bold, fontSize: 15),
                          ),
                          Text(
                            "Harga Rp. 100.000",
                            style: TextStyle(fontWeight: .bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}