import 'package:easy_presentation/easy_presentation.dart';

final jsonWithMarkdown = [
  {
    "title": "Tips and Tricks",
    "imgSrc": "assets/images/home/tips.jpg",
    "detailText": "assets/data/tips.txt"
  },
  {
    "title": "Diamonds",
    "imgSrc": "assets/images/home/tips.jpg",
    "youtubeLink": "https://youtu.be/YGbiPnxUG9U",
    "detailText": "assets/data/tips.txt"
  },
  {
    "title": "Vehicles",
    "imgSrc": "assets/images/home/vehicles.jpg",
    "subCategories": [
      {
        "title": "Jeep",
        "imgSrc": "assets/images/vehicles/image16.png",
        "detailText": "assets/data/vehicles/Jeep.txt"
      },
      {
        "title": "Motorcycle",
        "imgSrc": "assets/images/vehicles/image30.png",
        "detailText": "assets/data/vehicles/Motorcycle.txt"
      },
      {
        "title": "Sports Car",
        "imgSrc": "assets/images/vehicles/image27.png",
        "detailText": "assets/data/vehicles/Sports car.txt"
      }
    ]
  },
  {
    "title": "Characters",
    "imgSrc": "assets/images/home/characters.jpg",
    "subCategories": [
      {
        "title": "Captain",
        "imgSrc": "assets/images/characters/image7.jpg",
        "detailText": "assets/data/characters/K ‘CAPTAIN BOOYAH.txt"
      },
      {
        "title": "LUQUETA",
        "imgSrc": "assets/images/characters/image19.jpg",
        "detailText": "assets/data/characters/LUQUETA.txt"
      },
      {
        "title": "WOLFRAHH",
        "imgSrc": "assets/images/characters/image9.jpg",
        "imageMode": "portrait",
        "detailText": "assets/data/characters/WOLFRAHH.txt"
      }
    ]
  }
];

final jsonMockData = [
  {
    "title": "Title",
    "imgSrc":
        "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
    "detailText":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "title": "Diamonds",
    "imgSrc": "assets/images/home/tips.jpg",
    "youtubeLink": "https://youtu.be/YGbiPnxUG9U",
    "detailText":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "title": "Vehicles",
    "imgSrc": "assets/images/home/vehicles.jpg",
    "subCategories": [
      {
        "title": "Jeep",
        "imgSrc": "assets/images/vehicles/image16.png",
        "detailText":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      },
      {
        "title": "Motorcycle",
        "imgSrc": "assets/images/vehicles/image30.png",
        "detailText":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      },
      {
        "title": "Sports Car",
        "imgSrc": "assets/images/vehicles/image27.png",
        "detailText":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      }
    ]
  },
  {
    "title": "Characters",
    "imgSrc": "assets/images/home/characters.jpg",
    "subCategories": [
      {
        "title": "Captain",
        "imgSrc": "assets/images/characters/image7.jpg",
        "youtubeLink": "https://youtu.be/YGbiPnxUG9U",
        "detailText":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      },
      {
        "title": "LUQUETA",
        "imgSrc": "assets/images/characters/image19.jpg",
        "detailText":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      },
      {
        "title": "WOLFRAHH",
        "imgSrc": "assets/images/characters/image9.jpg",
        "imageMode": "portrait",
        "detailText":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      }
    ]
  }
];

final modelData = [
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
