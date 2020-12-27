import 'package:flutter/material.dart';

class Animal {
  final String nickname;
  final String typeAnimal;
  final String pathImage;
  final String desc;
  final String color;
  final String sex;
  final int age;

  Animal({
    this.nickname,
    this.typeAnimal,
    this.pathImage,
    this.desc,
    this.color,
    this.age,
    this.sex,
  });
}

Animal animalDog = new Animal(
    nickname: "Charlie",
    typeAnimal: "Labrador",
    pathImage: "assets/images/dog.png",
    desc:
        "Charlie the labrador loks for a new home.\nHe is a puppy yet, only 8 month and needs good family to treat him.",
    color: "Black",
    sex: "Male",
    age: 8);

Animal animalCat = new Animal(
    nickname: "Cat",
    typeAnimal: "Labrador",
    pathImage: "assets/images/cat.png",
    desc:
        "Charlie the labrador loks for a new home.\nHe is a puppy yet, only 8 month and needs good family to treat him.",
    color: "Orange",
    sex: "Male",
    age: 8);
Animal animalFish = new Animal(
    nickname: "Fisih",
    typeAnimal: "Ikan Cupang",
    pathImage: "assets/images/fish.png",
    desc:
        "Charlie the labrador loks for a new home.\nHe is a puppy yet, only 8 month and needs good family to treat him.",
    color: "Red",
    sex: "Male",
    age: 8);
Animal animalRabbit = new Animal(
    nickname: "Rabbit",
    typeAnimal: "Labrador",
    pathImage: "assets/images/rabbit.png",
    desc:
        "Charlie the labrador loks for a new home.\nHe is a puppy yet, only 8 month and needs good family to treat him.",
    color: "Brown",
    sex: "Male",
    age: 8);

List<Animal> animalList = [animalDog, animalCat, animalRabbit, animalFish];

List categoryList = [
  'assets/images/icons-dog.png',
  'assets/images/icons-cat.png',
  'assets/images/icons-rabbit.png',
  'assets/images/icons-fish.png',
  'assets/images/icons-dog.png',
  'assets/images/icons-cat.png',
  'assets/images/icons-rabbit.png',
  'assets/images/icons-fish.png',
];
