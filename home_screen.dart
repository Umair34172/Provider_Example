
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Provider Example")),
      body: Center(
        child: Text(
          "Count: ${provider.count}",
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: provider.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: provider.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
