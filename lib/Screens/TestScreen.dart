import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test Screen'),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        // body: Column(
        //   children: <Widget>[
        //     Container(
        //       height: deviceHeight/3,
        //       width: deviceWidth,
        //       color: Colors.amber[900],
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       child: const Text('Go back!'),
        //     ),

        //   ],
        // ),
        body: ListView(children: const <Widget>[
          ListTile(
            title: Text('List View Title'),
            subtitle: Text('Sub Title'),
            leading: CircleAvatar(child: Icon(Icons.person)),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text('List View Title'),
            subtitle: Text('Sub Title'),
            leading: CircleAvatar(child: Icon(Icons.person)),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text('List View Title'),
            subtitle: Text('Sub Title'),
            leading: CircleAvatar(child: Icon(Icons.person)),
            trailing: Icon(Icons.arrow_forward),
          ),
        ])
        // body:
        //   Center(
        //     child:
        //     Stack(
        //       alignment: Alignment.bottomCenter,
        //       clipBehavior: Clip.none,
        //       children: <Widget>[
        //         Container(
        //           height: 200,
        //           width: 200,
        //           color: Colors.amber[900],
        //         ),
        //         const Positioned(
        //           bottom: -50,
        //           child: CircleAvatar(radius: 50,backgroundColor: Colors.blue),
        //         )
        //       ]
        //     )
        // ),
        // body: Center(
        //   child: Card(
        //     elevation: 10,
        //     shape: const RoundedRectangleBorder(
        //       borderRadius: BorderRadius.all(Radius.circular(10))
        //     ),
        //     color: Colors.green,
        //     child: Container(
        //       height: 200,
        //       width: 200,
        //     ),
        //   )
        // ),
        // body: Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: GridView.count(
        //     crossAxisCount: 2,
        //     mainAxisSpacing: 10,
        //     crossAxisSpacing: 10,
        //     children: <Widget>[
        //       Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.green,
        //       ),
        //       Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.green,
        //       ),
        //     ]
        //   ),
        // ),
        // body: Column(children: <Widget>[
        //   Expanded(flex: 2, child: Container(color: Colors.amber[900])),
        //   Expanded(child: Container(color: Colors.amber[800])),
        //   Expanded(child: Container(color: Colors.amber[700])),
        //   Expanded(child: Container(color: Colors.amber[600]))
        // ]),
        // body: CustomScrollView(
        //   slivers: <Widget>[
        //     SliverAppBar(
        //       pinned: true,
        //       expandedHeight: 200,
        //       leading: const Text(''),
        //       backgroundColor: Colors.amber[900],
        //       flexibleSpace: const FlexibleSpaceBar(
        //         title: Text('Sliver AppBar'),
        //       ),
        //     ),
        //     SliverList(
        //         delegate: SliverChildListDelegate(<Widget>[
        //       sliverItem('One', 'Sliver List'),
        //       sliverItem('Two', 'Sliver List'),
        //       sliverItem('Three', 'Sliver List'),
        //       sliverItem('Four', 'Sliver List'),
        //       sliverItem('Five', 'Sliver List'),
        //       sliverItem('Six', 'Sliver List'),
        //       sliverItem('Seven', 'Sliver List'),
        //       sliverItem('Eight', 'Sliver List'),
        //       sliverItem('Nine', 'Sliver List'),
        //       sliverItem('Ten', 'Sliver List'),
        //       sliverItem('Eleven', 'Sliver List'),
        //       sliverItem('Twelve', 'Sliver List'),
        //     ]))
        //   ],
        // ),
        );
  }
}

Widget sliverItem(
  String title,
  String subtitle,
) {
  return ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    leading: CircleAvatar(child: Text(title[0])),
  );
}
