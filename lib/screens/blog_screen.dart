import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavie/constants/app_bar.dart';

import '../constants/auth_app_bar.dart';

class BlogScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
             ConstAppBar(),
            const SizedBox(
              height: 40,
            ),
            const Text('Blogs',
           style: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
           ),
           ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children:
                  List.generate(9, (index) => Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      elevation: 20,
                      child: Container(
                        width: 280,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Image.asset('assets/images/jazmin-quaynor-8ioenvmof-I-unsplash (1) 1.png',
                                width: double.infinity,
                                height: 160,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text('2 days ago',
                                style:TextStyle(
                                  color: color,
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('5 simple Tips Treat Plant',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('leaf, in botany, any usually flattened green outgrowth from the stem of  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
