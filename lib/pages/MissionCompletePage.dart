import 'package:flutter/material.dart';

class MissionCompletePage extends StatelessWidget {
  const MissionCompletePage({super.key, required this.userToken, required this.missionCode});

  final String missionCode;
  final String userToken;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Flexible(flex: 1, child: MissionCompletePageTitle()),
              Flexible(flex: 5, child: MissionCompletePageData(missionCode: missionCode)),
              Flexible(flex: 2, child: MissionCompletePageInput(missionCode: missionCode))
            ]
          )
        )
      )
    );
  }
}

class MissionCompletePageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("오늘의 미션 / 체크",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold
        )
      )
    );
  }
}

class MissionCompletePageData extends StatefulWidget {
  const MissionCompletePageData({super.key, required this.missionCode});

  final String missionCode;

  @override
  State<StatefulWidget> createState() => MissionCompletePageDataState();
}

class MissionCompletePageDataState extends State<MissionCompletePageData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      child: Card(
        color: const Color(0xFFF5F5F5),
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Mission Complete Page Data",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    )
                  )
                ]
              )
            )
          )
        )
      )
    );
  }
}

class MissionCompletePageInput extends StatefulWidget {
  const MissionCompletePageInput({super.key, required this.missionCode});

  final String missionCode;

  @override
  State<StatefulWidget> createState() => MissionCompletePageInputState();
}

class MissionCompletePageInputState extends State<MissionCompletePageInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(flex: 1,
          child: Card(
            color: const Color(0xFFF5F5F5),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                children: const [
                  Center(
                    child: Text("MISSION RESULT",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30
                      )
                    )
                  )
                ],
              )
            )
          )
        ),
        Flexible(flex: 1,
          child: Card(
            color: const Color(0xFF001E99),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text("완료",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      height: 1
                    ),
                  )
                )
              )
            )
          )
        )
      ],
    );
  }
}