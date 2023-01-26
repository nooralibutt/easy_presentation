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
    "detailText": "Lorem Ipsum is simply dummy text ...",
  },
  {
    "title": "Diamonds",
    "imgSrc": "assets/images/home/tips.jpg",
    "youtubeLink": "https://youtu.be/YGbiPnxUG9U",
    "detailText": "Lorem Ipsum is simply dummy text ...",
  },
  {
    "title": "Vehicles",
    "imgSrc": "assets/images/home/vehicles.jpg",
    "subCategories": [
      {
        "title": "Jeep",
        "imgSrc": "assets/images/vehicles/image16.png",
        "detailText": "Lorem Ipsum is simply dummy text ...",
      },
      {
        "title": "Motorcycle",
        "imgSrc": "assets/images/vehicles/image30.png",
        "detailText": "Lorem Ipsum is simply dummy text ...",
      },
      {
        "title": "Sports Car",
        "imgSrc": "assets/images/vehicles/image27.png",
        "detailText": "Lorem Ipsum is simply dummy text ...",
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
        "detailText": "Lorem Ipsum is simply dummy text ...",
      },
      {
        "title": "LUQUETA",
        "imgSrc": "assets/images/characters/image19.jpg",
        "detailText": "Lorem Ipsum is simply dummy text ...",
      },
      {
        "title": "WOLFRAHH",
        "imgSrc": "assets/images/characters/image9.jpg",
        "imageMode": "portrait",
        "detailText": "Lorem Ipsum is simply dummy text ...",
      }
    ]
  }
];

final modelData = [
  PresentationData(
    title: "Lorem Ipsum",
    imgSrc: "assets/images/home/tips.jpg",
    detailText: "Lorem Ipsum is simply dummy text ...",
  ),
  PresentationData(
    title: "Lorem Ipsum",
    imgSrc:
        "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
    youtubeLink: "https://youtu.be/YGbiPnxUG9U",
    detailText: "Lorem Ipsum is simply dummy text ...",
  ),
  PresentationData(
    title: "Lorem Ipsum",
    imgSrc:
        "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
    youtubeLink: "https://youtu.be/YGbiPnxUG9U",
    subCategories: [
      PresentationData(
        title: "Lorem Ipsum",
        imgSrc:
            "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
        detailText: "Lorem Ipsum is simply dummy text ...",
      ),
      PresentationData(
        title: "Lorem Ipsum",
        imgSrc: "assets/images/home/tips.jpg",
        youtubeLink: "https://youtu.be/YGbiPnxUG9U",
        detailText: "Lorem Ipsum is simply dummy text ...",
      ),
      PresentationData(
        title: "Lorem Ipsum",
        imgSrc:
            "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
        detailText: "Lorem Ipsum is simply dummy text ...",
      ),
    ],
  ),
];
