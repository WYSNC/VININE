import 'dart:convert';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class TwitterBox extends StatefulWidget {

  @override
  State<TwitterBox> createState() => _TwitterBoxState();
}

class _TwitterBoxState extends State<TwitterBox> {
  late bool isLoaded;

  @override
  Widget build(BuildContext context) {
    String length = (MediaQuery.of(context).size.width - 30).toString();
    final ThemeData themeData = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Twitter', style: themeData.textTheme.headline2,),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: WebView(

              initialUrl: Uri.dataFromString(
                getTimeline(),
                mimeType: 'text/html',
                encoding: Encoding.getByName('utf-8'),
              ).toString(),
              javascriptMode: JavascriptMode.unrestricted,
              javascriptChannels: <JavascriptChannel>{}..add(
                JavascriptChannel(
                  name: 'Twitter',
                  onMessageReceived: (JavascriptMessage message) {
                    setState(() {
                      isLoaded = true;
                      final previewHeight = double.parse(message.message);
                    });
                  },
                ),
              ),
            ),),
        )
        )
      ],
    );
  }
}

String getTimeline() {
  var length = '600';
  return """<html>
  <body>
    <!-- Add a placeholder for the Twitch embed -->
    <div id="twitch-embed"></div>

    <!-- Load the Twitch embed JavaScript file -->
    <script src="https://embed.twitch.tv/embed/v1.js"></script>

    <!-- Create a Twitch.Embed object that will render within the "twitch-embed" element -->
    <script type="text/javascript">
      new Twitch.Embed("twitch-embed", {
        width: 854,
        height: 480,
        channel: "kutcherlol",
        // Only needed if this page is going to be embedded on other websites
        parent: ["embed.example.com", "othersite.example.com"]
      });
    </script>
  </body>
  </html>""";
}