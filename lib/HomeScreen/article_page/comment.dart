import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment({super.key, required this.user, required this.comment});

  final String user;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          child: IconButton(
              onPressed: () => print('to user'),
              icon: Text(user[0]),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.centerLeft,child: Text('$user - vor 3 Tagen',style: const TextStyle(color: Colors.grey, fontSize: 14,),),),
            Text('$comment'),
            Row(
              children: [
                IconButton(
                  color: Colors.white,
                  onPressed: () => print('thumb up'),
                  icon: const Icon(Icons.thumb_up),
                ),
                const Text('155'),
                IconButton(
                  color: Colors.white,
                  onPressed: () => print('thumb down'),
                    icon: const Icon(Icons.thumb_down),
                ),
                IconButton(
                  color: Colors.white,
                  onPressed: () => print('comment'),
                  icon: const Icon(Icons.comment),
                ),
              ],
            ),
            const Text('13 replies', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 14, fontWeight: FontWeight.bold),),
          ],
        )
      ],
    );
  }
}