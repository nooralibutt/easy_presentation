import 'package:easy_presentation/easy_presentation.dart';
import 'package:example/models/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PresentationData>>(
        future: loadAllData(PresentationData.fromJsonList(jsonMockData)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == null) {
              return const Text('Some error occur !!!');
            }

            return EasyPresentationApp(
              leadingTitle: 'FF',
              title: 'Data',
              bgImage:
                  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=576&q=80',
              presentationData: snapshot.data!,
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  static Future<List<PresentationData>> loadAllData(
      List<PresentationData> data) async {
    for (int i = 0; i < data.length; i++) {
      final category = data[i];
      if (category.detailText != null &&
          category.detailText!.startsWith("assets/data/")) {
        category.detailText = await rootBundle.loadString(category.detailText!);
      }

      if (category.subCategories != null) {
        await loadAllData(category.subCategories!);
      }
    }
    return data;
  }
}
