import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Week 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello There!"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'List Title: $index',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                OutlinedButton(onPressed: () {}, child: const Text('Button'))
              ],
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => const SecondScreen(),
            )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.hot_tub_outlined,
          color: Colors.amber,
          size: 30.0,
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _showModifiedContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Panel(
                index: index, showModifiedContainer: _showModifiedContainer);
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.gradient),
          onPressed: () => setState(
                () => (_showModifiedContainer = !_showModifiedContainer),
              )),
    );
  }
}

class Panel extends StatelessWidget {
  final int index;
  final bool showModifiedContainer;

  const Panel({
    super.key,
    required this.index,
    required this.showModifiedContainer,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius:
              showModifiedContainer ? BorderRadius.circular(40.0) : null,
          boxShadow: const [
            BoxShadow(
                color: Colors.black45, offset: Offset(0, 6), blurRadius: 12.0)
          ],
          image: const DecorationImage(
              image: NetworkImage(
                  "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/w/o/WOPA160517_D056-resized.jpg?crop=864%2C0%2C1728%2C2304&wid=600&hei=800&scl=2.88"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Panel: $index',
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 40.0),
          ),
          const Icon(
            Icons.grain,
            color: Colors.white,
            size: 50.0,
          )
        ],
      ),
    );
  }
}
