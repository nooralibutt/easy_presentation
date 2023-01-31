import 'package:easy_ads_flutter/easy_ads_flutter.dart';
import 'package:easy_presentation/easy_presentation.dart';
import 'package:example/models/mock_data.dart';
import 'package:example/models/test_ad_id_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyAds.instance.initialize(
    const TestAdIdManager(),
    fbiOSAdvertiserTrackingEnabled: true,
    fbTestMode: true,
    unityTestMode: true,
    isAgeRestrictedUserForApplovin: false,
    admobConfiguration: RequestConfiguration(
        testDeviceIds: [], maxAdContentRating: MaxAdContentRating.pg),
    adMobAdRequest:
        const AdRequest(nonPersonalizedAds: false, keywords: <String>[]),
  );

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
  void initState() {
    super.initState();
    EasyAds.instance.loadAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PresentationData>>(
        /// Load markdown (.txt) files data
        future: loadAllData(PresentationData.fromJsonList(jsonWithMarkdown)),
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
              onTapEvent: _handleEventActions,
              placementBuilder: _addPlacements,
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// Use this [EasyPresentationApp.launchApp()] to launch as a standalone app
          EasyPresentationApp.launchApp(
            context,
            title: 'Data',
            bgImage:
                'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=576&q=80',
            leadingTitle: 'Mock',
            presentationData: modelData,
            onTapEvent: _handleEventActions,
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  /// you can add your own placement widget like this
  Widget _addPlacements(BuildContext context, PresentationPlacement placement) {
    switch (placement) {
      case PresentationPlacement.presentationCategoryTop:
        return const EasyBannerAd(adNetwork: AdNetwork.admob);
      case PresentationPlacement.coverDetailBottom:
        return Container(height: 50, width: double.infinity, color: Colors.red);
      case PresentationPlacement.tabDetailBottom:
        return Container(
            height: 50, width: double.infinity, color: Colors.green);
      case PresentationPlacement.youtubeDetailBottom:
        return Container(
            height: 50, width: double.infinity, color: Colors.orange);
      default:
        return const SizedBox();
    }
  }

  /// You can handle every action performed by the user like this
  void _handleEventActions(
      BuildContext context, PresentationEventAction event) {
    if (event == PresentationEventAction.cardTap) {
      EasyAds.instance.showAd(AdUnitType.interstitial);
    } else if (event == PresentationEventAction.backTap) {
      printLog('Back Pressed');
    } else if (event == PresentationEventAction.tabChanged) {
      printLog('Tab Swiped');
    }
  }

  void printLog(String str) {
    if (kDebugMode) {
      print(str);
    }
  }

  /// Use this to load your markdown (.txt) files
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
