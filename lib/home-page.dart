import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<Map<String, String?>> student = [
    {
      "id": "1",
      "urlImage":
          "https://media.istockphoto.com/id/1464332546/photo/business-and-technology-businessman-and-businesswoman-shake-hands-blurred-background-white.webp?b=1&s=170667a&w=0&k=20&c=4z3K930NmVLbugHN7fN2Jk9sJpykQA3MAH29ne_vSZM=",
      "title": "Image 1",
      "description": "Description 1"
    },
    {
      "id": "2",
      "urlImage":
          "https://media.istockphoto.com/id/1464332546/photo/business-and-technology-businessman-and-businesswoman-shake-hands-blurred-background-white.webp?b=1&s=170667a&w=0&k=20&c=4z3K930NmVLbugHN7fN2Jk9sJpykQA3MAH29ne_vSZM=",
      "title": "Image 2",
      "description": "Description 2"
    },
    {
      "id": "3",
      "urlImage":
          "https://media.istockphoto.com/id/1464332546/photo/business-and-technology-businessman-and-businesswoman-shake-hands-blurred-background-white.webp?b=1&s=170667a&w=0&k=20&c=4z3K930NmVLbugHN7fN2Jk9sJpykQA3MAH29ne_vSZM=",
      "title": "Image 3",
      "description": "Description 3"
    },
    {
      "id": "4",
      "urlImage":
          "https://media.istockphoto.com/id/1464332546/photo/business-and-technology-businessman-and-businesswoman-shake-hands-blurred-background-white.webp?b=1&s=170667a&w=0&k=20&c=4z3K930NmVLbugHN7fN2Jk9sJpykQA3MAH29ne_vSZM=",
      "title": "Image 4",
      "description": "Description 4"
    },
    {
      "id": "5",
      "urlImage":
          "https://media.istockphoto.com/id/1464332546/photo/business-and-technology-businessman-and-businesswoman-shake-hands-blurred-background-white.webp?b=1&s=170667a&w=0&k=20&c=4z3K930NmVLbugHN7fN2Jk9sJpykQA3MAH29ne_vSZM=",
      "title": "Image 5",
      "description": "Description 5"
    },
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.red,
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(
                        text: "Places",
                      ),
                      Tab(
                        text: "Inspiration",
                      ),
                      Tab(
                        text: "Emotion",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: student.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Stack(
                              children: [
                                Image.network(
                                  student[index]['urlImage'] ?? '',
                                  width: 150, // Đặt chiều rộng của hình ảnh
                                  height: 200, // Đặt chiều cao của hình ảnh
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    color: Colors.black54,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          student[index]['title'] ?? '',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          student[index]['description'] ?? '',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    Text("This is Inspiration screen"),
                    Text("This is Emotion screen"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
