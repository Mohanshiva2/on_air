import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_air/views/album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  const SongCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(image: image,),
          ),
        );
      },
      child: Container(
        width: 150,
        child: Column(
          children: [
            Image(
              image: image,
              width: 180,
              height: 180,
            ),
            Text(
              'Bad Bunny, Drake, Justin Bieber, Taylor Swift,...',
              style: Theme.of(context).textTheme.caption,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
