import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_air/views/player_view.dart';
import 'package:on_air/widgets/album_cards.dart';

class AlbumView extends StatefulWidget {
   final ImageProvider image;
   const AlbumView({required this. image});
  @override
  _AlbumViewState createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 550;


  @override
  void initState() {
    ScrollController;
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        print(imageSize);
        imageSize = initialSize - scrollController.offset;
        if (imageSize > 0 && imageSize < initialSize) {
          setState(() {});
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.of(context).size.width / 2 - 38;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.pink,
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.5),
                                offset: Offset(4, 10),
                                blurRadius: 32,
                                spreadRadius: 16,
                              )
                            ]),
                            child: Image(
                                image: widget.image,
                                width: imageSize,
                                height: imageSize,
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Song Info',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/ONWARDS-logo.png'),
                                      width: 100,
                                      height: 100,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'OnAir Music',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '1,678,838 likes 5h 3m',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Icon(
                                          Icons.more_horiz,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Container(
                                            width: 64,
                                            height: 64,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.red,
                                            ),
                                            child: Icon(
                                              Icons.play_arrow,
                                              size: 40,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 2000,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('You might also like'),
                        ),
                        song_container(label: 'Run It Down, Bunny Dark '),
                        song_container(label: 'Battle Songs, Dark World'),
                        song_container(label: 'Love Music, Justin Bieber, '),
                        song_container(label: 'Bad Bunny, Taylor..'),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 28, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                image: AssetImage('assets/img2.jpg'),
                                label: 'Get More',
                                size: cardSize,
                              ),
                              AlbumCard(
                                image: AssetImage('assets/img6.jpg'),
                                label: 'Get More',
                                size: cardSize,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 28, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                image: AssetImage('assets/img7.jpg'),
                                label: 'Get More',
                                size: cardSize,
                              ),
                              AlbumCard(
                                image: AssetImage('assets/img9.jpg'),
                                label: 'Get More',
                                size: cardSize,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 28, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                image: AssetImage('assets/img8.jpg'),
                                label: 'Get More',
                                size: cardSize,
                              ),
                              AlbumCard(
                                image: AssetImage('assets/img3.jpg'),
                                label: 'Get More',
                                size: cardSize,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: SafeArea(
                child: Container(
                  color: Color(0xffc61855),
                  padding: EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 0,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_left),
                      ),
                      Text(
                        'Songs',
                        style: Theme.of(context).textTheme.headline6,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



class song_container extends StatelessWidget {
  final String label;
  final audio = AudioCache();

   song_container({
    Key? key, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayMusic(),
            ),
          );},
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 600,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white24
                ),
                child: Row(
                  children: [
                    Text(
                      label,style: TextStyle(fontSize: 18),),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_left),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30,),

            ],
          ),
        )
      ],
    );
  }
}
