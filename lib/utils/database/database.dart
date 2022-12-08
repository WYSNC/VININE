class UserData {

  final String firstName;
  final String picture;
  final String lastName;

  const UserData({
    required this.firstName,
    required this.lastName,
    required this.picture
  });
}

class ArticleData {

  final UserData author;
  final String imageUrl;
  final String headLine;
  final String upperText;
  final String text;
  final String review;
  final String release;

  const ArticleData({
    required this.author,
    required this.imageUrl,
    required this.headLine,
    required this.upperText,
    required this.text,
    required this.review,
    required this.release,
  });
}

const articleList= [
  ArticleData(
      author: (UserData(firstName: 'first1', lastName: 'last1', picture: 'assets/images/AvatarLogo.png')),
      imageUrl: 'assets/images/sola.png',
      release: '21.11.2022(1)',
      headLine: 'Headline 1',
      upperText: 'UpperText 1',
      text: 'Text 1',
      review: 'Review 1'
  ),
  ArticleData(
      author: (UserData(firstName: 'first2', lastName: 'last2', picture: 'assets/images/drop1.png')),
      imageUrl: 'assets/images/drop1.png',
      release: '21.11.2022(2)',
      headLine: 'Headline 2',
      upperText: 'UpperText 2',
      text: 'Text 2',
      review: 'Review 2'
  ),
  ArticleData(
      author: (UserData(firstName: 'first3', lastName: 'last3', picture: 'assets/images/drop4.png')),
      imageUrl: 'assets/images/shop2.png',
      release: '21.11.2022(3)',
      headLine: 'Headline 3',
      upperText: 'UpperText 3',
      text: 'Text 3',
      review: 'Review 3'
  ),
  ArticleData(
      author: (UserData(firstName: 'first4', lastName: 'last4', picture: 'assets/images/shop2.png')),
      imageUrl: 'assets/images/shop1.png',
      release: '21.11.2022(4)',
      headLine: 'Headline 4',
      upperText: 'UpperText 4',
      text: 'Text 4',
      review: 'Review 4'
  ),
  ArticleData(
      author: (UserData(firstName: 'first1', lastName: 'last1', picture: 'assets/images/AvatarLogo.png')),
      imageUrl: 'assets/images/sola.png',
      release: '21.11.2022(1)',
      headLine: 'Headline 1',
      upperText: 'UpperText 1',
      text: 'Text 1',
      review: 'Review 1'
  ),
];