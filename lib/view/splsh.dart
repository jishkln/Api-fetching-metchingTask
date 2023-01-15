import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample/helper/cntrolr.dart';
import 'package:sample/view/home.dart';

class Splsh extends StatefulWidget {
  const Splsh({super.key});

  @override
  State<Splsh> createState() => _SplshState();
}

class _SplshState extends State<Splsh> {
  @override
  void initState() {
    super.initState();
    Cntrol().getResult();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: CupertinoActivityIndicator(
      radius: 20,
      color: Colors.black,
    )));
  }
}
