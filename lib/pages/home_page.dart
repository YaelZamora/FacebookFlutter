import 'package:facebook/tabs/tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
          title: const Text(
            'facebook',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.ondemand_video_rounded,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.store_mall_directory_outlined,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_none,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.account_circle_sharp,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTab(),
            VideoTab(),
            MarketTab(),
            NotificationTab(),
            SettingsTab(),
          ],
        ),
      ),
    );
  }
}
