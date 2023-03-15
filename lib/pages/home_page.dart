import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Cars", style: TextStyle(color: Colors.red, fontSize: 25),),
        actions: [
          IconButton(
            onPressed: () {  },
              icon: const Icon(Icons.notifications_none, color: Colors.red,),
          ),
          IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.shopping_cart, color: Colors.red,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Green"),
                    singleTab(false,"Yellow"),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car5.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
            ],
          ),
        ),
      ),
    );
  }
  Widget singleTab(bool type, String text){
    return AspectRatio(
        aspectRatio: 2.2/1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text, style: TextStyle(
              color: type? Colors.white: Colors.black, fontSize: type ? 20:16),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 230,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
          color: Colors.grey[400]!,
            blurRadius: 10,
            offset: Offset(0,10),
        )
        ]
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("PDP Car", style: TextStyle(
                            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("100\$", style: TextStyle(
                            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                      ],
                    ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 125),
                  child: Column(
                    children: const [
                      Text("Electric", style: TextStyle(
                          color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Center(
                child: Icon(Icons.favorite_border, color: Colors.white, size: 20,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
