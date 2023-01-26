# Easy Presentation

[![pub package](https://img.shields.io/pub/v/easy_presentation.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/easy_presentation)
[![Last Commits](https://img.shields.io/github/last-commit/nooralibutt/easy_presentation?logo=git&logoColor=white)](https://github.com/nooralibutt/easy_presentation/commits/master)
[![Pull Requests](https://img.shields.io/github/issues-pr/nooralibutt/easy_presentation?logo=github&logoColor=white)](https://github.com/nooralibutt/easy_presentation/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/nooralibutt/easy_presentation?logo=github&logoColor=white)](https://github.com/nooralibutt/easy_presentation)
[![License](https://img.shields.io/github/license/nooralibutt/easy_presentation?logo=open-source-initiative&logoColor=green)](https://github.com/nooralibutt/easy_presentation/blob/master/LICENSE)

**Show some 💙, 👍 the package & ⭐️ the repo to support the project**

## Features
- Support for local and network images
- Support for youtube videos
- Support for Markdown
- Sliver app bar
- Input Json formatted data

![](https://github.com/nooralibutt/easy_presentation/blob/master/demo-gif.gif?raw=true)

## How to use
There are two ways to use Easy Presentation.

### 1: Stand-Alone App mode

```dart
EasyPresentationApp.launchApp(
  context,
  presentationData: PresentationData(),
  title: 'Title',
  bgImage: 'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
);
```

### 2: Add to Widget-Tree

```dart
EasyPresentationApp(
  title: 'Title',
  bgImage: 'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
  presentationData: PresentationData(),
);
```

## Additional Info

### Data Model
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
    imgSrc: 'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
    detailText: 'Lorem Ipsum is simply dummy text ....',
  ),
  PresentationData(
    title: 'Lorem Ipsum',
    imgSrc: 'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
    subCategories: [
      PresentationData(
        title: 'Lorem Ipsum',
        imgSrc: 'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
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
        imgSrc: 'https://nicolasgallagher.com/flexible-css-cover-images/cover.jpg',
        youtubeLink: "https://youtu.be/YGbiPnxUG9U",
        detailText: 'Lorem Ipsum is simply dummy text ....',
      ),
    ],
  ),
];
```

See [Example](https://pub.dev/packages/easy_presentation/example) for better understanding.

## Authors
##### Noor Ali Butt
[![GitHub Follow](https://img.shields.io/badge/Connect--blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/nooralibutt) [![LinkedIn Link](https://img.shields.io/badge/Connect--blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/nooralibutt)
##### Hanzla Waheed
[![GitHub Follow](https://img.shields.io/badge/Connect--blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/mhanzla80) [![LinkedIn Link](https://img.shields.io/badge/Connect--blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/mhanzla80)