import 'package:flutter/material.dart';

class TabBarDesign extends StatefulWidget {
  const TabBarDesign({Key? key}) : super(key: key);

  @override
  State<TabBarDesign> createState() => _TabBarDesignState();
}

class _TabBarDesignState extends State<TabBarDesign>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt_sharp),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text(
              "Camera",
              style: TextStyle(
                color: Colors.greenAccent.shade700,
                fontSize: 40,
              ),
            ),
          ),
          Center(
            child: Text(
              "Chats",
              style: TextStyle(
                color: Colors.greenAccent.shade700,
                fontSize: 40,
              ),
            ),
          ),
          Center(
            child: Text(
              "Status",
              style: TextStyle(
                color: Colors.greenAccent.shade700,
                fontSize: 40,
              ),
            ),
          ),
          Center(
            child: Text(
              "Calls",
              style: TextStyle(
                color: Colors.greenAccent.shade700,
                fontSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
