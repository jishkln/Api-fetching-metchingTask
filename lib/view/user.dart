import 'package:flutter/material.dart';
import 'package:sample/model/user_model.dart';

class UserHm extends StatelessWidget {
  const UserHm(
      {super.key, required this.title, required this.auther, this.dataModel});
  final String title;
  final String auther;
  final List<Hit>? dataModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(auther.toUpperCase())),
      body: Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        height: 700,
        child: Column(
          children: [
            Center(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "TItle : ",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
