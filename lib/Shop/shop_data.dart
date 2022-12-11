class ShopData {

  final String id;
  final String imageUrl;
  final String name;
  final String text;
  final String price;
  final int rating;

  const ShopData({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.price,
    required this.rating
  });
}

const shopList= [
  ShopData(
    id: 'id-001',
    imageUrl: 'assets/images/drop1.png',
    name: 'Hoodie',
    text: 'Unser xxx: das Beste was es aktuell gibt, nachhaltig und stylistisch wie eh und je. Retro und Modern in einem',
    price: '59.19',
    rating: 5,
  ),
  ShopData(
    id: 'id-002',
    imageUrl: 'assets/images/drop3.png',
    name: 'Jacket',
    text: 'Unser xxx: das Beste was es aktuell gibt, nachhaltig und stylistisch wie eh und je. Retro und Modern in einem',
    price: '69.95',
    rating: 3,
  ),
  ShopData(
    id: 'id-003',
    imageUrl: 'assets/images/drop4.png',
    name: 'Shirt',
    text: 'Unser xxx: das Beste was es aktuell gibt, nachhaltig und stylistisch wie eh und je. Retro und Modern in einem',
    price: '26.95',
    rating: 2,
  ),
  ShopData(
    id: 'id-004',
    imageUrl: 'assets/images/drop6.png',
    name: 'Jogger',
    text: 'Unser xxx: das Beste was es aktuell gibt, nachhaltig und stylistisch wie eh und je. Retro und Modern in einem',
    price: '45.95',
    rating: 0,
  ),
  ShopData(
    id: 'id-005',
    imageUrl: 'assets/images/drop7.png',
    name: 'Notes',
    text: 'Unser xxx: das Beste was es aktuell gibt, nachhaltig und stylistisch wie eh und je. Retro und Modern in einem',
    price: '8.95',
    rating: 5,
  ),
  ShopData(
    id: 'id-006',
    imageUrl: 'assets/images/drop8.png',
    name: 'Bundle',
    text: 'Unser xxx: das Beste was es aktuell gibt, nachhaltig und stylistisch wie eh und je. Retro und Modern in einem',
    price: '99.95',
    rating: 5,
  ),
  ShopData(
    id: 'id-007',
    imageUrl: 'assets/images/ios_icon.png',
    name: 'Gift Card',
    text: 'Unser xxx: das Beste was es aktuell gibt, nachhaltig und stylistisch wie eh und je. Retro und Modern in einem',
    price: '5.00',
    rating: 5,
  ),
];