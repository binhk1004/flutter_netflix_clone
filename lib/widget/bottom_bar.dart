import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const SizedBox(
        height: 50,
        child: TabBar(
          //TabBar의 경우 필수로 Tab이 들어가야 한다.
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text(
                'Home',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 18,
              ),
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.save_alt,
                size: 18,
              ),
              child: Text(
                'Save',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.list,
                size: 18,
              ),
              child: Text(
                'More',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
