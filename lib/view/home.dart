import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/helper/cntrolr.dart';
import 'package:sample/view/user.dart';

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
          title: const Text("Home Data"),
        ),
        body: Cntrol().isLoading
            ? const Center(
                child: CupertinoActivityIndicator(
                  radius: 20,
                  color: Colors.amber,
                ),
              )
            : ListView.builder(
                itemCount: Cntrol().hitList.length,
                itemBuilder: (context, index) => Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(8),
                  color: Colors.grey,
                  child: ListTile(
                    title: Text(
                      Cntrol().hitList[index].author.toString().toUpperCase(),
                    ),
                    subtitle: Text(
                      Cntrol().hitList[index].title.toString(),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserHm(
                                    title: Cntrol()
                                        .hitList[index]
                                        .title
                                        .toString(),
                                    auther: Cntrol()
                                        .hitList[index]
                                        .author
                                        .toString(),
                                    dataModel: Cntrol().hitList,
                                  )));
                    },
                  ),
                ),
              ));
  }
}
