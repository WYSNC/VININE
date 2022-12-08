import 'package:flutter/material.dart';
import 'package:vinine/HomeScreen/article_data.dart';
import 'package:vinine/utils/constants.dart';
import 'article_page/comment.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.authorData, required this.release});

  final UserData authorData;
  final String release;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: InkWell(
            onTap: () => print('Avatar'),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(authorData.picture),
                ),
                Text('${authorData.firstName} ${authorData.lastName}'),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(
            release,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class SocialsRow extends StatelessWidget {
  const SocialsRow({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(children: [
              CircleAvatar(
                backgroundColor: secondcolor,
                child: IconButton(
                  onPressed: () => print('instagram'),
                  icon: const Icon(
                    Icons.photo_camera_outlined,
                    color: maincolor,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: secondcolor,
                child: IconButton(
                  onPressed: () => print('*twitter*'),
                  icon: const Icon(
                    Icons.share,
                    color: maincolor,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: secondcolor,
                child: IconButton(
                  onPressed: () => print('post'),
                  icon: const Icon(
                    Icons.mail,
                    color: maincolor,
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => buildSheet(context),
                  );
                },
                style: TextButton.styleFrom(backgroundColor: secondcolor),
                child: const Text('Comments'),
              ),
            ),
          ),
        ],
      );
}

Widget buildSheet(context) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.3,
          maxChildSize: 1,
          builder: (context, controller) => Container(
            decoration: const BoxDecoration(
              color: backgroundcolor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
            ),

              child: Column(children: [
                const OptionRow(),
                Expanded(child: ListView(
                  controller: controller,
                  children: [
                    SizedBox(
                      height: 15,
                      child: Container(
                        color: Colors.grey,
                        height: 25,
                      ),
                    ),
                    const CommentsColumn(),
                  ],
                ))
              ],)),
        )));

class OptionRow extends StatelessWidget {
  const OptionRow({super.key});

  @override
  Widget build(BuildContext context) {
    //final ThemeData themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(children: const [
            Text('Comments'),
            Text(
              '   564',
              style: TextStyle(color: Colors.grey),
            ),
          ]),
        ),
        Row(
          children: [
            IconButton(
                color: Colors.white,
                onPressed: () => print('filter'),
                icon: const Icon(Icons.tune)),
            IconButton(
                color: Colors.white,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close)),
          ],
        ),
      ],
    );
  }
}

class CommentsColumn extends StatelessWidget {
  const CommentsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Comment(
          user: 'Frederik H', comment: 'Das hier ist nur ein Test Kommentar'),
      Comment(user: 'Sola Linke', comment: 'Du bist mega cool'),
      Comment(user: 'Philly Westside', comment: 'Überraschung'),
      Comment(user: 'Pius', comment: 'Arschgeile Nummer hier'),
      Comment(user: 'Shantao', comment: 'Döner'),
      Comment(user: 'Broeki', comment: 'Boah seid ihr schlecht'),
      Comment(user: 'DrBlutdruck', comment: 'Was baut der für ne Scheiße'),
      Comment(user: 'Shantao', comment: 'Döner'),
    ]);
  }
}
