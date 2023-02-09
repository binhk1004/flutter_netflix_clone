import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/model/model_movie.dart';
import 'package:flutter_netflix_clone/screen/detail_screen.dart';

class CirleSlider extends StatelessWidget {
  final List<Movie> movies;
  const CirleSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('미리보기'),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(context, movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> result = [];
  for (var i = 0; i < movies.length; i++) {
    result.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(
                  movie: movies[i],
                );
              },
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: NetworkImage(movies[i].poster),
              radius: 48,
            ),
          ),
        ),
      ),
    );
  }
  return result;
}
