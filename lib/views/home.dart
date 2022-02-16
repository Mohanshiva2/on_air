import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_air/views/album_view.dart';
import 'package:on_air/widgets/album_cards.dart';
import 'package:on_air/widgets/rowalbumcard.dart';
import 'package:on_air/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Color(0xff1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recently Played',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: 'Top 50',
                            image: AssetImage('assets/img9.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Best Mode',
                            image: AssetImage('assets/img2.jpg'),


                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Vibe',
                            image: AssetImage('assets/img3.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Trending',
                            image: AssetImage('assets/img4.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Melody',
                            image: AssetImage('assets/img5.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Rock',
                            image: AssetImage('assets/img6.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Top 10',
                            image: AssetImage('assets/img1.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Alone',
                            image: AssetImage('assets/img.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Alone',
                            image: AssetImage('assets/img9.jpg'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          AlbumCard(
                            label: 'Alone',
                            image: AssetImage('assets/img9.jpg'),

                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Songs For You',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: 'Best Songs',
                                image: AssetImage('assets/img5.jpg'),
                              ),
                              SizedBox(
                                width: 38,
                              ),
                              RowAlbumCard(
                                label: 'Love',
                                image: AssetImage('assets/img7.jpg'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: 'Trending',
                                image: AssetImage('assets/img8.jpg'),
                              ),
                              SizedBox(
                                width: 38,
                              ),
                              RowAlbumCard(
                                label: 'Recommended',
                                image: AssetImage('assets/img9.jpg'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: 'Top 100',
                                image: AssetImage('assets/img10.jpg'),
                              ),
                              SizedBox(
                                width: 38,
                              ),
                              RowAlbumCard(
                                label: 'Super Songs',
                                image: AssetImage('assets/img1.jpg'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: 'Alone',
                                image: AssetImage('assets/img2.jpg'),
                              ),
                              SizedBox(
                                width: 38,
                              ),
                              RowAlbumCard(
                                label: 'Hits',
                                image: AssetImage('assets/img3.jpg'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Based on your recent listening',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage('assets/img3.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img6.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img2.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img9.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img7.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img1.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img8.jpg'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Recommended radio',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage('assets/img8.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img2.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img5.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img9.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img3.jpg'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              SongCard(
                                image: AssetImage('assets/img5.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
