# Easy Presentation

[![pub package](https://img.shields.io/pub/v/easy_presentation.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/easy_presentation)
[![Last Commits](https://img.shields.io/github/last-commit/nooralibutt/easy_presentation?logo=git&logoColor=white)](https://github.com/nooralibutt/easy_presentation/commits/master)
[![Pull Requests](https://img.shields.io/github/issues-pr/nooralibutt/easy_presentation?logo=github&logoColor=white)](https://github.com/nooralibutt/easy_presentation/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/nooralibutt/easy_presentation?logo=github&logoColor=white)](https://github.com/nooralibutt/easy_presentation)
[![License](https://img.shields.io/github/license/nooralibutt/easy_presentation?logo=open-source-initiative&logoColor=green)](https://github.com/nooralibutt/easy_presentation/blob/master/LICENSE)
[![PayPal](https://img.shields.io/badge/Donate-PayPal-066BB7?logo=paypal)](https://paypal.me/nooralibutt)

**Show some 💙, 👍 the package & ⭐️ the repo to support the project**

## Features
- Support for local and network images
- Support for youtube videos
- Support for Markdown
- Input Json formatted data

## How to prepare Data Model
Prepare model list and pass it to the `EasyPresentationApp()` widget.

```dart
final presentationData = [
  PresentationData(
    title: 'Lorem Ipsum',
    imgSrc: 'assets/images/home/tips.jpg',
    youtubeLink: "https://youtu.be/YGbiPnxUG9U",
    detailText: 'Lorem Ipsum is simply dummy text ....',
  ),
  PresentationData(
    title: 'Lorem Ipsum',
    imgSrc:
        'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png',
    youtubeLink: "https://youtu.be/YGbiPnxUG9U",
    detailText: 'Lorem Ipsum is simply dummy text ....',
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
        detailText: 'Lorem Ipsum is simply dummy text ....',
      ),
      PresentationData(
        title: 'Lorem Ipsum',
        imgSrc: 'assets/images/home/tips.jpg',
        imageMode: ImageMode.landscape.name,
        youtubeLink: "https://youtu.be/YGbiPnxUG9U",
        detailText: 'Lorem Ipsum is simply dummy text ....',
      ),
      PresentationData(
        title: 'Lorem Ipsum',
        imgSrc:
            'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png',
        youtubeLink: "https://youtu.be/YGbiPnxUG9U",
        detailText: 'Lorem Ipsum is simply dummy text ....',
      ),
    ],
  ),
];
```

## How to use
After loading the data you can pass it to the `EasyPresentationApp()` widget
You can also pass markdown style sheet to `EasyPresentationApp(markdownStyleSheet: MarkdownStyleSheet())` widget. You can customize your markdown styling.

####  Steps:
- You can add json and parse it to `List<PresentationData()>` list and pass it to `EasyPresentationApp()` widget
- You can use local assets images as well as network images
- You can use simple strings as well as markdown (.txt) files which you will have to pre-load first
```dart
EasyPresentationApp(
  leadingTitle: 'FF',
  title: 'Data',
  bgImage:
  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=576&q=80',
  presentationData: presentationData,
);
```

## Stand-Alone App
You can use it as standalone app. You  can use this method to launch as a standalone app.

```dart
EasyPresentationApp.launchApp(
  context,
  presentationData: presentationData,
  leadingTitle: 'Leading',
  title: 'Title',
  bgImage:
      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=576&q=80',
);
```

## Add to Widget-Tree
You can also add app to the widget tree. Place `EasyPresentationApp()` anywhere inside the widget-tree.

```dart
EasyPresentationApp(
  leadingTitle: 'Leading',
  title: 'Title',
  bgImage:
      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=576&q=80',
  presentationData: snapshot.data!,
);
```

See [Example](https://pub.dev/packages/easy_presentation/example) for better understanding.

## Authors
##### Noor Ali Butt
[![GitHub Follow](https://img.shields.io/badge/Connect--blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/nooralibutt) [![LinkedIn Link](https://img.shields.io/badge/Connect--blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/nooralibutt)
##### Hanzla Waheed
[![GitHub Follow](https://img.shields.io/badge/Connect--blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/mhanzla80) [![LinkedIn Link](https://img.shields.io/badge/Connect--blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/mhanzla80)