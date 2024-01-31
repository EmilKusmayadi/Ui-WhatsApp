import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/chat.dart';
import 'package:flutter_application_1/screen/status.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      _currentTabIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 120, 108),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorPadding: const EdgeInsets.only(bottom: 1),
          tabs: [
            const Tab(
              child: Icon(
                FontAwesomeIcons.users,
                color: Color.fromARGB(71, 255, 255, 255),
                size: 20,
              ),
            ),
            Tab(
              child: Center(
                child: Text(
                  "Chat",
                  style: TextStyle(
                    color: _currentTabIndex == 1
                        ? Colors.white
                        : Color.fromARGB(71, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Tab(
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(
                    color: _currentTabIndex == 2
                        ? Colors.white
                        : Color.fromARGB(71, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Tab(
              child: Center(
                child: Text(
                  "Panggilan",
                  style: TextStyle(
                    color: _currentTabIndex == 3
                        ? Colors.white
                        : Color.fromARGB(71, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: const Text("komunitas"),
          ),
          const Chat(),
          const Status(),
          Container(
            child: const Text("komunitas"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: _currentTabIndex == 1
            ? const Icon(Icons.chat)
            : const Icon(Icons.camera_alt),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color.fromARGB(255, 15, 120, 108),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
