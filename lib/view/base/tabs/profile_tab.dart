import 'package:flutter/material.dart';

import '../separator_widget.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 360.0,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  height: 180.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage('assets/cover.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/Mike Tyler.jpg'),
                      radius: 70.0,
                    ),
                    const SizedBox(height: 20.0),
                    const Text('Mike Tyler', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: MediaQuery.of(context).size.width - 80,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: const Center(child: Text('Add to Story', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0))),
                        ),
                        Container(
                          height: 40.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: const Icon(Icons.more_horiz),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: Divider(height: 40.0),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Icon(Icons.home, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('Lives in New York', style: TextStyle(fontSize: 16.0))
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: const <Widget>[
                    Icon(Icons.location_on, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('From New York', style: TextStyle(fontSize: 16.0))
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: const <Widget>[
                    Icon(Icons.more_horiz, color: Colors.grey, size: 30.0),
                    SizedBox(width: 10.0),
                    Text('See your About Info', style: TextStyle(fontSize: 16.0))
                  ],
                ),

                const SizedBox(height: 15.0),

                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child:  Center(child: Text('Edit Public Details', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16.0))),
                ),
              ],
            ),
          ),

          const Divider(height: 40.0),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text('Friends', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 6.0),
                        Text('536 friends', style: TextStyle(fontSize: 16.0, color: Colors.grey[800])),
                      ],
                    ),
                     Text('Find Friends', style: TextStyle(fontSize: 16.0, color: Theme.of(context).primaryColor)),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width/3 -20 ,
                            width: MediaQuery.of(context).size.width/3 - 20,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('assets/samantha.jpg')),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Samantha', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width/3 -20 ,
                            width: MediaQuery.of(context).size.width/3 - 20,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('assets/andrew.jpg')),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Andrew', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width/3 -20 ,
                            width: MediaQuery.of(context).size.width/3 - 20,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('assets/Sam Wilson.jpg'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Sam Wilson', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width/3 -20 ,
                            width: MediaQuery.of(context).size.width/3 - 20,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('assets/steven.jpg')),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Steven', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width/3 -20 ,
                            width: MediaQuery.of(context).size.width/3 - 20,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('assets/greg.jpg')),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Greg', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width/3 -20 ,
                            width: MediaQuery.of(context).size.width/3 - 20,
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage('assets/andy.jpg'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text('Andy', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(child: Text('See All Friends', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0))),
                ),
              ],
            ),
          ),
          SeparatorWidget()
        ],
      )
    );
  }
}