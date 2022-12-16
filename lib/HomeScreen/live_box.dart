import 'package:flutter/material.dart';

class LiveBox extends StatefulWidget {
  const LiveBox({super.key});

  @override
  State<LiveBox> createState() => _LiveBoxState();
}

class _LiveBoxState extends State<LiveBox> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    //TwitchController twitchController = TwitchController();
    return Padding(
        padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Live Channels', style: themeData.textTheme.headline2,),
        LiveChannels(),
        Image.asset(
              'assets/images/Twitch_Preview.png',
              fit: BoxFit.cover,
            ),

      ],)
    );
  }
}
class LiveChannels extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      color: Colors.black,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 8,
                  color: Colors.white,
                  child: Image.asset(
                    "assets/images/drop1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          "5577",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Streamer Username",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  "Description",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  "Game Name",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white54),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
