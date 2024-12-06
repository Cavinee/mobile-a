import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyDialog(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Row Implementation"),
      ),
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 4.0)
            ),
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 4.0)
              )
            ),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.blue
          )
        ],
      )
    );
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Column Implementation"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 4.0)
              ),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.black, width: 4.0)
                )
              ),
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.blue
            )
          ]
        ),
      )
    );
  }
}

class MyCenter extends StatelessWidget {
  const MyCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Center Implementation"),
      ),
      body: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.blue
        )
      )
    );
  }
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Stack Implementation"),
        actions: [
          IconButton(icon: const Icon(Icons.abc), onPressed: () {},)
        ],
        leading: const Icon(Icons.menu)
      ),
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 4.0)
                ),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 4.0)
                  )
                ),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue
              )
          ],
        ),
      )
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("List View Implementation"),
        actions: [
          IconButton(icon: const Icon(Icons.abc), onPressed: () {},)
        ],
        leading: const Icon(Icons.menu)
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("List Tile 1"),
            subtitle: Text("List Tile 1"),
            leading: Icon(Icons.people),
            trailing: Icon(Icons.three_k),
          ),
        ],
      )
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Grid View Implementation"),
        actions: [
          IconButton(icon: const Icon(Icons.abc), onPressed: () {},)
        ],
        leading: const Icon(Icons.menu)
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 4.0)
            ),
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 4.0)
              )
            ),
          ),
          SizedBox(
            height: 100.0,
            width: 100.0,
            child: Container(color: Colors.blue)
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green
          )
        ],
      )
    );
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Dialog Implementation"),
        actions: [
          IconButton(icon: const Icon(Icons.abc), onPressed: () {},)
        ],
        leading: const Icon(Icons.menu)
      ),
      body: ElevatedButton(
        onPressed: () {
          return showAboutDialog(
            context: context,
            children: [
              const Text("Hello", style: TextStyle(color: Colors.teal),)
            ]
          );
        }, 
        child: const Text("Press me")
      )
    );
  }
}