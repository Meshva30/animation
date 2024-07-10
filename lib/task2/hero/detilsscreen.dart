import 'package:flutter/material.dart';

class Detilsscreen extends StatelessWidget {
  const Detilsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'box',
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                Icons.more_vert_sharp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.red,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '8 Tasks',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Custom',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 250,
                    child: LinearProgressIndicator(
                      value: 0.8,
                      color: Color(0xffE67169),
                    ),
                  ),
                  Text(
                    "80%",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Previous - Thu',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     Meet Clients',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     Design Sprint ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     Icon Set Design for Mobile ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     HTML/CSS Study ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Previous - Thu',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     Meet Clients',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     Design Sprint ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     Icon Set Design for Mobile ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red.shade300,
                    value: false,
                    onChanged: (value) {},
                  ),
                  const Text(
                    '     HTML/CSS Study ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
