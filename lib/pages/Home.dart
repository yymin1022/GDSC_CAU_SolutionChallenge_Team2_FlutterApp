import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        Flexible(flex: 1, child: HomeTimeSetting()),
        Flexible(flex: 1, child: HomePrivacy())
      ]
    );
  }
}

class HomeTimeSetting extends StatefulWidget {
  const HomeTimeSetting({super.key});

  @override
  State<StatefulWidget> createState() => _TimeState();
}

class _TimeState extends State<HomeTimeSetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        Flexible(flex: 1, child: TimeCard(timeType: "Morning")),
        Flexible(flex: 1, child: TimeCard(timeType: "Afternoon")),
      ],
    );
  }
}

class TimeCard extends StatelessWidget {
  const TimeCard({Key? key, required this.timeType}): super(key: key);
  final String timeType;

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        child: Card(
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text(" Time Setting"),
                )
            )
        )
    );
  }
}

class HomePrivacy extends StatefulWidget {
  const HomePrivacy({super.key});

  @override
  State<StatefulWidget> createState() => _PrivacyState();
}

class _PrivacyState extends State<HomePrivacy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: const [
        Flexible(flex: 1, child:
          Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              child: Card(
                  child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Text("Privacy View"),
                      )
                  )
              )
          )
        )
      ],
    );
  }
}