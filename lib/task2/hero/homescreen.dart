import 'package:animation/task2/hero/detilsscreen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.red.shade300,
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          'TODO',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(7, 5),
                    blurRadius: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hello,John.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'This is a daily quote.\n You have 10 tasks to do today.',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Detilsscreen(),
                ));
              },
              child: SingleChildScrollView(
                child: Hero(
                  tag: 'box',
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 12),
                            blurRadius: 15,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.alarm,
                                color: Colors.red,
                                size: 30,
                              ),
                              Icon(
                                Icons.more_vert_sharp,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 140,
                          ),
                          Text(
                            '8 Tasks',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Custom',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Slider(
                                activeColor: Colors.red,
                                value: 0,
                                onChanged: (value) {},
                              ),
                              Spacer(),
                              Text(
                                '88%',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
