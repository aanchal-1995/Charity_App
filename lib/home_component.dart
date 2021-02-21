import 'package:flutter/material.dart';

class HomeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Colors.amberAccent[400],
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              // actions: [
              //   CircleAvatar(
              //       child: ClipOval(
              //           child: Icon(
              //     Icons.person,
              //     color: Colors.white,
              //   ))),
              //   Icon(Icons.menu)
              // ],
              flexibleSpace: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: ClipOval(
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 35.0,
                              width: 35.0,
                              child: Image.asset(
                                'assets/menu.png',
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'Welcome Dear!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  )
                ],
              )),
          GridView.count(
            primary: false,
            padding: EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('Food'),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('Food'),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('Food'),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('Food'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
