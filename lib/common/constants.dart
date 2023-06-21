import 'package:first_cry_flutter/common/app_color.dart';
import 'package:first_cry_flutter/modals/category.dart' as category;
import 'package:first_cry_flutter/modals/product.dart' as prod;
import 'package:first_cry_flutter/modals/stores.dart' as store;
import 'package:flutter/material.dart';

const kWelcomeRichTextStyle = TextStyle(
  color: primaryBlue,
);

const kMainSliderImages = [
  'images/IMG_9941.jpg',
  'images/IMG_9942.jpg',
  'images/IMG_9943.jpg',
  'images/IMG_9944.jpg',
  'images/IMG_9945.jpg',
  'images/IMG_9946.jpg',
  'images/IMG_9947.jpg',
  'images/IMG_9948.jpg',
];

const kSliderImages = [
  'images/IMG_9949.jpg',
  'images/IMG_9950.jpg',
  'images/IMG_9951.jpg',
];

const kCategoryDummyData = [
  category.Category(img: 'images/IMG_9952.jpg', title: 'Girls Fashion'),
  category.Category(img: 'images/IMG_9953.jpg', title: 'Boys Fashion'),
  category.Category(img: 'images/IMG_9954.jpg', title: 'Footwear'),
  category.Category(img: 'images/IMG_9955.jpg', title: 'Fashion Accessories'),
  category.Category(img: 'images/IMG_9956.jpg', title: 'Toys & Gaming'),
  category.Category(img: 'images/IMG_9957.jpg', title: 'Baby Gear'),
  category.Category(img: 'images/IMG_9958.jpg', title: 'Nursery'),
  category.Category(img: 'images/IMG_9959.jpg', title: 'Health & Safety'),
];

const kProductDummyData = [
  prod.Product(
      id: '1',
      title: 'Babyhug',
      img: 'images/IMG_9960.jpg',
      price: 300.14,
      clubPrice: 286.18,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '2',
      title: 'Babyhug',
      img: 'images/IMG_9961.jpg',
      price: 1000.23,
      clubPrice: 974.25,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '3',
      title: 'Babyhug',
      img: 'images/IMG_9962.jpg',
      price: 434.13,
      clubPrice: 414.17,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '4',
      title: 'Babyhug',
      img: 'images/IMG_9963.jpg',
      price: 587.16,
      clubPrice: 573.18,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '5',
      title: 'Babyhug',
      img: 'images/IMG_9964.jpg',
      price: 857.22,
      clubPrice: 835.24,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '6',
      title: 'Babyhug',
      img: 'images/IMG_9965.jpg',
      price: 474.78,
      clubPrice: 435.28,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '7',
      title: 'Babyhug',
      img: 'images/IMG_9966.jpg',
      price: 531.24,
      clubPrice: 503.28,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '8',
      title: 'Babyhug',
      img: 'images/IMG_9967.jpg',
      price: 404.19,
      clubPrice: 384.23,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '9',
      title: 'Babyhug',
      img: 'images/IMG_9968.jpg',
      price: 601.14,
      clubPrice: 573.18,
      dateTime: 'Sunday, Jun 25'),
  prod.Product(
      id: '10',
      title: 'Babyhug',
      img: 'images/IMG_9969.jpg',
      price: 559.2,
      clubPrice: 531.24,
      dateTime: 'Sunday, Jun 25'),
];

const kStoresDummyData = [
  store.Stores(
      img: 'images/IMG_9970.jpg',
      title: 'THIS SUMMER, SAY NO TO RASHES!',
      subtitle: 'Up To 60% Off + Extra 10% Off',
      coupon: 'Coupon: BHTS10',
      caption: '*GST applicable on discounter price | T&C apply'),
  store.Stores(
      img: 'images/IMG_9972.jpg',
      title: 'GET YOUR GLAM',
      subtitle: 'Up To 34% Off*',
      coupon: 'Shop Now',
      caption: '*GST applicable on discounter price | T&C apply'),
  store.Stores(
      img: 'images/IMG_9973.jpg',
      title: 'EXPERT EDUCATOR RECOMMENDED',
      subtitle: 'Up To 60% Off*',
      coupon: 'Shop Now',
      caption: '*GST applicable on discounter price | T&C apply'),
  store.Stores(
      img: 'images/IMG_9974.jpg',
      title: 'TREND SETTERS',
      subtitle: 'Up To 75% Off*',
      coupon: 'Shop Now',
      caption: '*GST applicable on discounter price | T&C apply'),
  store.Stores(
      img: 'images/IMG_9975.jpg',
      title: 'BEST OF NURSERY ESSENTIAL',
      subtitle: 'Up To 35% Off*',
      coupon: 'Coupon: NURS',
      caption: '*GST applicable on discounter price | T&C apply'),
  store.Stores(
      img: 'images/IMG_9976.jpg',
      title: 'BREATHABLE FEATHER DIAPERS',
      subtitle: 'Up To 50% Off*',
      coupon: 'Coupon: RFR50',
      caption: '*GST applicable on discounter price | T&C apply'),
  store.Stores(
      img: 'images/IMG_9977.jpg',
      title: 'BEST OF BABY CARE',
      subtitle: 'Up To 35% Off*',
      coupon: 'Coupon: BGEA',
      caption: '*GST applicable on discounter price | T&C apply'),
];
