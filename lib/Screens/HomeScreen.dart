import 'package:flutter/material.dart';
import '../Api/ApiClinet.dart';
import '../Types/User.dart';
import '../Model/Product.dart';
import '../Widget/SideDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;
  late Products product = Products(products: [], total: 0, skip: 0, limit: 0);

  Future getData() async {
    final responseData = await ApiClient().getUser();
    setState(() {
      product = responseData;
      determinate = true;
      controller.stop();
    });
  }

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            leading: const Text(''),
            backgroundColor: Colors.amber[900],
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Products'),
            ),
          ),
          SliverToBoxAdapter(
            child: determinate == false
                ? LinearProgressIndicator(
                    value: controller.value,
                  )
                : null,
          ),
          _getSlivers(product, context),
        ],
      ),
      drawer: const SideDrawer(),
    );
  }

  SliverList _getSlivers(Products myList, BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final item = myList.products[index]; 
          return _sliverItem(
            item.title, item.description,item.thumbnail
          );
        },
        childCount: myList.products.length,
      ),
    );
  }

  _sliverItem(
    String title,
    String email,
    String thumbnail,
  ) {
    return ListTile(
      title: Text(title),
      subtitle: Text(email),
      leading: CircleAvatar(child: Image.network(thumbnail)),
    );
  }
}
