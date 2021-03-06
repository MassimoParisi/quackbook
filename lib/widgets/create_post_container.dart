import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, @required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind?'),
                  ),
                )
              ],
            ),
            const Divider(
              height: 10.0,
              thickness: 0.5,
            ),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton.icon(
                    onPressed: () => print("LIVE"),
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.orangeAccent,
                    ),
                    label: Text("Live"),
                  ),
                  VerticalDivider(width: 8.0),
                  FlatButton.icon(
                    onPressed: () => print("PHOTO"),
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.orangeAccent,
                    ),
                    label: Text("Photo"),
                  ),
                  VerticalDivider(width: 8.0),
                  FlatButton.icon(
                    onPressed: () => print("ROOM"),
                    icon: const Icon(
                      Icons.anchor,
                      color: Colors.orangeAccent,
                    ),
                    label: Text("Raft"),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
