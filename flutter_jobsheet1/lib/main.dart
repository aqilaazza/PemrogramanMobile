import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var favorites = <WordPair>[];
  var selectedIndex = 0;
  var selectedIndexInAnotherWidget = 0;
  var indexInYetAnotherWidget = 42;
  var optionASelected = false;
  var optionBSelected = false;
  var loadingFromNetwork = false;

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }


  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }

  void removeFavorite(WordPair pair) { //tambahkan untuk menghapus favorite
    favorites.remove(pair);
    notifyListeners();
}

}


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;     // ← Add this property.

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = FavoritesPage(); // ← ganti Placeholder() jadi FavoritesPage()
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,  // ← Here.
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('Favorites'),
                    ),
                  ],
                  selectedIndex: selectedIndex,    // ← Change to this.
                  onDestinationSelected: (value) {
                    // ↓ Replace print with this.
                    setState(() {
                      selectedIndex = value;
                    });
        
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,  // ← Here.
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon =
        appState.favorites.contains(pair) ? Icons.favorite : Icons.favorite_border;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Daftar favorit pindah ke atas
          if (appState.favorites.isNotEmpty) ...[
            Column(
            crossAxisAlignment: CrossAxisAlignment.center, // biar rata tengah
            children: [
              for (var fav in appState.favorites)
                Row(
                  mainAxisSize: MainAxisSize.min, // biar gak full lebar
                  children: [
                    const Icon(Icons.favorite, color: Colors.red, size: 16),
                    const SizedBox(width: 5),
                    Text(fav.asLowerCase),
                  ],
                ),
            ],
          ),
            const SizedBox(height: 20),
          ],

          // Kartu kata saat ini
          BigCard(pair: pair),
          const SizedBox(height: 10),

          // Tombol Like & Next
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: const Text('Like'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: const Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);       // ← Add this.
    // ↓ Add this.
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,    // ← And also this.

      child: Padding(
        padding: const EdgeInsets.all(20),
        
       // ↓ Make the following change.
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return const Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView( 
      padding: const EdgeInsets.all(20), // Add padding around the list
      children: [
        Text( // Add this text
          'You have ${appState.favorites.length} favorites:',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 20,
          runSpacing: 10,
          children: [
            for (var pair in appState.favorites)
              Chip(
                label: Text(pair.asLowerCase),
                deleteIcon: const Icon(Icons.delete, color: Colors.brown),
                onDeleted: () {
                  appState.removeFavorite(pair); // Call the remove method
                },
              ),
          ],
        ),
      ],
    );
  }
}
