import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime indianTime = now.toUtc().add(Duration(hours: 5, minutes: 30));
    List name = [
      'Test1 ${indianTime.hour}h',
      'Test2 ${indianTime.hour + 2}h',
      'Test3 ${indianTime.hour + 3}h',
    ];
    List avat = [
      'https://images.unsplash.com/photo-1518611540400-6b85a0704342?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1500832333538-837287aad2b6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1521146764736-56c929d59c83?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ];
    List imagelist = [
      'https://plus.unsplash.com/premium_photo-1663852296749-30454b4613e8?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      "https://images.unsplash.com/photo-1577121443425-97e029fccc2d?q=80&w=2835&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1580163661417-3606299aba72?q=80&w=2831&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView.builder(
          itemCount: imagelist.length,
          itemBuilder: (context, index) => Container(
            child: Column(
              children: [
                SizedBox(height: 41),
                Divider(
                  indent: 4,
                  endIndent: 4,
                  thickness: 2,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avat[index]),
                  ),
                  title: Text(
                    '${name[index]}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  height: 90,
                  color: Colors.black,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 32, left: 12),
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: Text(
                                  "Send message",
                                  style: TextStyle(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32)),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ))),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(width: 23),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  imagelist[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
