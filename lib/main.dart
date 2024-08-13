import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> datalist1 = [
      {
        "name": "person1",
        "dp":
            "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?t=st=1723521475~exp=1723525075~hmac=58b01d0b841d9bbc691dfe21ef7660dab6f9e89bc6a2ad4e2ef174ea68271373&w=1380",
        "bg":
            "https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
      },
      {
        "name": "person2",
        "dp":
            "https://img.freepik.com/free-photo/beautiful-woman-with-curly-hair_23-2148778875.jpg?w=1380&t=st=1723524037~exp=1723527637~hmac=bf20b54219cb75d4c43b330065dd10d6357f3e1dd26ae03513be04d77977eec4",
        "bg":
            "https://images.pexels.com/photos/4380127/pexels-photo-4380127.jpeg?auto=compress&cs=tinysrgb&w=800"
      },
      {
        "name": "person3",
        "dp":
            "https://img.freepik.com/free-photo/handsome-young-man-smiling-outdoors_23-2148217344.jpg?w=1380&t=st=1723524085~exp=1723527685~hmac=5394fd8d65a9a9c9cb9af38c7aa9b3e7b8d19a91f90d0cbcd9f08742b7418e7d",
        "bg":
            "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=800"
      },
      {
        "name": "person4",
        "dp":
            "https://img.freepik.com/free-photo/portrait-beautiful-asian-woman-wearing-white-shirt_53876-102547.jpg?w=1380&t=st=1723524121~exp=1723527721~hmac=0c2283a55d61b17d8e7a6d11706be49053f22fb129d367aab93f1a64a2fcbf85",
        "bg":
            "https://images.pexels.com/photos/139829/pexels-photo-139829.jpeg?auto=compress&cs=tinysrgb&w=800"
      },
      {
        "name": "person5",
        "dp":
            "https://img.freepik.com/free-photo/portrait-smiling-young-man-with-glasses_1262-20852.jpg?w=1380&t=st=1723524157~exp=1723527757~hmac=745a30901dfb133bbd6a2f2f961eaaab0e4c99f62f209c7bff64d5c03017f85e",
        "bg":
            "https://images.pexels.com/photos/2063244/pexels-photo-2063244.jpeg?auto=compress&cs=tinysrgb&w=800"
      },
      {
        "name": "person6",
        "dp":
            "https://img.freepik.com/free-photo/confident-businesswoman-posing-outdoor_23-2148908569.jpg?w=1380&t=st=1723524210~exp=1723527810~hmac=fcccb9a550bb30a65c6d86bcb84f1d69f3a5e2920b55a768643c37df95ef28ed",
        "bg":
            "https://images.pexels.com/photos/3255234/pexels-photo-3255234.jpeg?auto=compress&cs=tinysrgb&w=800"
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: PageView.builder(
        itemCount: datalist1.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(datalist1[index]["bg"]),
            ),
          ),
          child: Column(
            children: [
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              ListTile(
                subtitle: Text(
                  "User name",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                title: Text(
                  datalist1[index]["name"],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(datalist1[index]["dp"]),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.white, width: 1)),
                      child: Text(
                        "Send message",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.favorite_outline_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ))),
    );
  }
}
