import 'package:counter_7/watchlist_model.dart';
import 'package:flutter/material.dart';
import 'tambah_budget.dart';
import 'data_budget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/watchlist.dart';

class WatchListDetail extends StatelessWidget {
  const WatchListDetail({super.key, required this.detail});
  final String title = 'Detail';
  final Fields detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchList()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    detail.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Text(
                            "Release Date: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(detail.releaseDate,
                              style: const TextStyle(
                                fontSize: 18,
                              )),
                        ],
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Text(
                            "Status: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(detail.watched == 1 ? 'watched' : 'not watched',
                              style: const TextStyle(
                                fontSize: 18,
                              )),
                        ],
                      )),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Review:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      detail.review,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ))),
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 30.0),
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Back",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            )),
      ),
    );
  }
}
