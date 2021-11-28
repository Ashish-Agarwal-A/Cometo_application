import 'package:flutter/material.dart';

class Product{
  final String image, title,line, description,followers;
  final int id,size;

  final Color color;

  Product({
    required this.followers,
    required this.line,
    required this.id,
    required this.size,
    required this.color,
    required this.image,
    required this.title,
    required this.description,
  });
}


List<Product> product = [
  Product(
      id: 1,
      followers: "1.8 million",
      line: "Buddy! Apke Father Aaye Hain..",
      title: "Anubhav Singh Bassi",
      description: "Anubhav Singh Bassi is an Indian comedian. Bassi was born in Parikshitgarh, Meerut. He is 30 years old (2021). He specializes in anecdotal comedy.",
      image: "assets/images/bassi.png",
      color: Color(0xFFEEEEEE),
      size: 20,
),

  Product(
      id: 2,
    followers:"3.7 million",
     line: "Karwali Bezzati ?",
      title: "Abhishek Upmanyu",
      description: "Abhishek Upmanyu is an Indian Comedian and Youtuber. He is renown for uploading comedy videos on his YouTube channel. He has 2.22 million subscribers on his Youtube channel. He is also known as a writer for On Air with AIB.",
      image: "assets/images/manyu.jpg",
      color: Color(0xFFEEEEEE),
      size: 20,
),

  Product(
      id: 3,
    followers: "6.62 million",
    line: "Par Yahan Mai Pighal Gya..",
      title: "Zakir Khan",
      description: "Zakir Khan is an Indian YouTuber, stand-up comedian, writer, poet, presenter and actor. In 2012, he rose to popularity by winning Comedy Central's India's Best Stand Up Comedian competition. He has also been a part of a news comedy show, On Air with AIB.",
      image: "assets/images/khan.jpg",
      color: Color(0xFFEEEEEE),
      size: 20,
),

  Product(
      id: 4,
    followers: "1 million",
    line: "Girl Meets Mic..",
      title: "Aditi Mittal",
      description: "Aditi Mittal is an Indian stand-up comedian, actress and writer.[1][2] One of the first women to do stand-up comedy in India, Mittal has been rated amongst India's top 10 stand-up comedians by The Times of India.",
      image: "assets/images/mittal.jpg",
      color: Color(0xFFEEEEEE),
      size: 20,
),

  Product(
      id: 5,
    followers: "1.25 million",
    line: "Sasta Vicky Kaushal..",
      title: "Harsh Gujral",
      description: "Harsh Gujral is a renowned standup comedian and social media celebrity. He is a brand of observable humor that is fresh and contemporary that has struck a chord with audiences across India.",
      image: "assets/images/guju.jpg",
      color: Color(0xFFEEEEEE),
      size: 20,
),

  Product(
      id: 6,
    followers: "2.44 million",
    line: "Rahul, Akshay, Shampoo..",
      title: "Akash Gupta",
      description: "Aakash Gupta was an awesome person and one of my favorite standup comedian famous for his unique way of standUp Comedy.While writing this article, I remember one of his video Dogs:- “Shampoo Bhaiya Aa Gaye, Aapke Brother”, oh! God, very Funny video that was, recommend you to watch it.",
      image: "assets/images/sky.jpg",
      color: Color(0xFFEEEEEE),
      size: 20,),
];