import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_air/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final double size;

  const AlbumCard({

     required this.image,
     required this.label,
     this.size = 180,
  });

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(label),
        ],
      ),
    );
  }
}
