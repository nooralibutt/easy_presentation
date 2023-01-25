# Easy Presentation

[![pub package](https://img.shields.io/pub/v/easy_presentation.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/easy_presentation)
[![Last Commits](https://img.shields.io/github/last-commit/nooralibutt/easy_presentation?logo=git&logoColor=white)](https://github.com/nooralibutt/easy_presentation/commits/master)
[![Pull Requests](https://img.shields.io/github/issues-pr/nooralibutt/easy_presentation?logo=github&logoColor=white)](https://github.com/nooralibutt/easy_presentation/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/nooralibutt/easy_presentation?logo=github&logoColor=white)](https://github.com/nooralibutt/easy_presentation)
[![License](https://img.shields.io/github/license/nooralibutt/easy_presentation?logo=open-source-initiative&logoColor=green)](https://github.com/nooralibutt/easy_presentation/blob/master/LICENSE)
[![PayPal](https://img.shields.io/badge/Donate-PayPal-066BB7?logo=paypal)](https://paypal.me/nooralibutt)

**Show some 💙, 👍 the package & ⭐️ the repo to support the project**

## Features

- Add data to show inn the form of presentation
- You can also add json and parse it to `PresentationData()` model and pass it to `EasyPresentationApp()` widget
- You can use local assets images as well as network images
- You can use simple strings as well as markdown (.txt) files which you will have to pre-load first

## Add Data Model
Prepare model list and pass it to the `EasyPresentationApp()` widget.

```dart
final data = [
  PresentationData(
    title: 'Lorem Ipsum',
    imgSrc: 'assets/images/home/tips.jpg',
    imageMode: ImageMode.landscape.name,
    youtubeLink: "https://youtu.be/YGbiPnxUG9U",
    detailText:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  PresentationData(
    title: 'Lorem Ipsum',
    imgSrc:
        'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png',
    youtubeLink: "https://youtu.be/YGbiPnxUG9U",
    detailText:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  PresentationData(
    title: 'Lorem Ipsum',
    imgSrc:
        'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png',
    youtubeLink: "https://youtu.be/YGbiPnxUG9U",
    subCategories: [
      PresentationData(
        title: 'Lorem Ipsum',
        imgSrc:
            'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png',
        youtubeLink: "https://youtu.be/YGbiPnxUG9U",
        detailText:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      ),
      PresentationData(
        title: 'Lorem Ipsum',
        imgSrc: 'assets/images/home/tips.jpg',
        imageMode: ImageMode.landscape.name,
        youtubeLink: "https://youtu.be/YGbiPnxUG9U",
        detailText:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      ),
      PresentationData(
        title: 'Lorem Ipsum',
        imgSrc:
            'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png',
        youtubeLink: "https://youtu.be/YGbiPnxUG9U",
        detailText:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      ),
    ],
  ),
];
```

## Use EasyPresentationApp()

Before using `EasyPresentation()`, if you are using markdown .txt files as you can see  in the [Example](https://pub.dev/packages/easy_presentation/example) use have to load the .txt markdown file.
```dart
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
```
After loading the data you can pass it to the `EasyPresentationApp()` widget

```dart
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
```
See [Example](https://pub.dev/packages/easy_presentation/example) for better understanding.

## Donate

If you found this plugin helpful and would like to thank me:

[![PayPal](https://img.shields.io/badge/Donate-PayPal-066BB7?logo=paypal)](https://paypal.me/nooralibutt)

## Authors
##### Noor Ali Butt
[![GitHub Follow](https://img.shields.io/badge/Connect--blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/nooralibutt) [![LinkedIn Link](https://img.shields.io/badge/Connect--blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/nooralibutt)
##### Hanzla Waheed
[![GitHub Follow](https://img.shields.io/badge/Connect--blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/mhanzla80) [![LinkedIn Link](https://img.shields.io/badge/Connect--blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/mhanzla80)