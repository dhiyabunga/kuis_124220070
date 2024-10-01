import 'package:flutter/material.dart';
import '../dummy_data.dart';

class HomePage extends StatefulWidget {
  final username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get username => widget.username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Selamat Pagi, $username",
        ),
        bottom: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Yuk, buat perubahan positif bagi lingkungan sekarang!",
          ),
          backgroundColor: const Color.fromARGB(255, 255, 159, 209),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("keluar"),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 238, 0, 147),
      ),
      body: Column(
        children: [
          Container(
            height: 550,
            child: ListView.builder(
              itemCount: scheduleList.length,
              itemBuilder: (context, index) {
                final jadwal = scheduleList[index];
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: ListTile(
                      leading: Image.network(jadwal.imageUrl),
                      title: Text(jadwal.wasteBankName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(jadwal.coverageArea),
                          Text(jadwal.implementationDate),
                          Text("jadwal dimulai" +
                              jadwal.startTime +
                              "-" +
                              jadwal.endTime)
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
