import 'package:flutter/material.dart';
import 'package:monii/data/model/salary_model.dart';

class LiveMoneyScreen extends StatefulWidget {
  static const routeName = "/live";

  @override
  State<StatefulWidget> createState() => _LiveMoneyScreenState();
}

var salaryDummy = new Salary(35000);

class _LiveMoneyScreenState extends State<LiveMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("live screen"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Text("body");
  }
}
