import 'package:courtcounter/res/strings.dart';
import 'package:flutter/material.dart';

class MainUI extends StatefulWidget {
  MainUI({
    Key? key,
  }) : super(key: key);

  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  int _team1score = 0;
  int _team2score = 0;

  updateScore(int team, int amount) => setState(() {
        if (team == 1) {
          _team1score += amount;
        } else if (team == 2) {
          _team2score += amount;
        }
      });

  resetScore() => setState(() {
        _team1score = 0;
        _team2score = 0;
      });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(StringRes.app_name),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                          ),
                          child: Text(
                            StringRes.team_1,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                          ),
                          child: Text(
                            "$_team1score",
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 8,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              updateScore(1, 2);
                            },
                            child: Text(StringRes.plus2.toUpperCase()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 16,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              updateScore(1, 3);
                            },
                            child: Text(StringRes.plus3.toUpperCase()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 8,
                    endIndent: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                          ),
                          child: Text(
                            StringRes.team_1,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                          ),
                          child: Text(
                            "$_team2score",
                            style: TextStyle(
                              fontSize: 60,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 8,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              updateScore(2, 2);
                            },
                            child: Text(StringRes.plus2.toUpperCase()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 16,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              updateScore(2, 3);
                            },
                            child: Text(StringRes.plus3.toUpperCase()),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 16,
                right: 8,
                left: 8,
              ),
              child: ElevatedButton(
                onPressed: () {
                  resetScore();
                },
                child: Text(
                  StringRes.reset.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      );
}
