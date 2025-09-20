// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: [Category.figurine],
        id: 0,
        isFeatured: true,
        name: 'Lookup',
        price: 620000,
      ),
      Product(
        category: [Category.acrylic],
        id: 1,
        isFeatured: true,
        name: 'Hip Keychain',
        price: 169000,
      ),
      Product(
        category: [Category.acrylic],
        id: 2,
        isFeatured: false,
        name: 'Chibi Keychain',
        price: 158000,
      ),
      Product(
        category: [Category.variety],
        id: 3,
        isFeatured: true,
        name: 'Baking Soda Tee',
        price: 269000,
      ),
      Product(
        category: [Category.acrylic],
        id: 4,
        isFeatured: false,
        name: 'Uniform Ver.',
        price: 154000,
      ),
      Product(
        category: [Category.acrylic],
        id: 5,
        isFeatured: false,
        name: 'B-Komachi Acrylic Stand',
        price: 12,
      ),
      Product(
        category: [Category.figurine],
        id: 6,
        isFeatured: false,
        name: 'B-Komachi Limited-Edition Figure',
        price: 2050000,
      ),
      Product(
        category: [Category.acrylic],
        id: 7,
        isFeatured: true,
        name: 'Exhibition Acrylic Stand',
        price: 440000,
      ),
      Product(
        category: [Category.acrylic],
        id: 8,
        isFeatured: true,
        name: 'B-Komachi Private Edition',
        price: 176000,
      ),
      Product(
        category: [Category.acrylic],
        id: 9,
        isFeatured: false,
        name: 'Tsurugi Acrylic Stand',
        price: 165000,
      ),
      Product(
        category: [Category.acrylic],
        id: 10,
        isFeatured: false,
        name: 'Halloween costume ver.',
        price: 154000,
      ),
      Product(
        category: [Category.acrylic],
        id: 11,
        isFeatured: false,
        name: 'Oshi no ko Keychain',
        price: 46200,
      ),
      Product(
        category: [Category.variety],
        id: 12,
        isFeatured: false,
        name: 'Pin Exhibition ver.',
        price: 132000,
      ),
      Product(
        category: [Category.variety],
        id: 13,
        isFeatured: true,
        name: 'Poster',
        price: 220000,
      ),
      Product(
        category: [Category.variety],
        id: 14,
        isFeatured: true,
        name: 'Handfan',
        price: 132000,
      ),
      Product(
        category: [Category.figurine],
        id: 15,
        isFeatured: true,
        name: 'Figurine Full moon...! ver.',
        price: 858000,
      ),
      Product(
        category: [Category.variety],
        id: 16,
        isFeatured: false,
        name: 'Oshi no ko Badge Marine ver.',
        price: 50100,
      ),
      Product(
        category: [Category.variety],
        id: 17,
        isFeatured: false,
        name: 'Clear File',
        price: 165000,
      ),
      Product(
        category: [Category.variety],
        id: 18,
        isFeatured: false,
        name: 'Rubber Mat Xmas ver.',
        price: 330000,
      ),
      Product(
        category: [
          Category.figurine,
          Category.acrylic,
        ], // Two categories due to combo set
        id: 19,
        isFeatured: false,
        name: 'Badge + Keychain Set',
        price: 132000,
      ),
      Product(
        category: [
          Category.acrylic,
          Category.variety,
        ], // Two categories due to combo set
        id: 20,
        isFeatured: false,
        name: 'Keychain + Bromide Set',
        price: 198000,
      ),
      Product(
        category: [Category.acrylic],
        id: 21,
        isFeatured: false,
        name: 'Fan Appreciation Acrylic Stand',
        price: 165000,
      ),
      Product(
        category: [Category.figurine],
        id: 22,
        isFeatured: true,
        name: 'Figurine',
        price: 858000,
      ),
      Product(
        category: [Category.acrylic],
        id: 23,
        isFeatured: true,
        name: 'Acrylic Stand',
        price: 264000,
      ),
      Product(
        category: [Category.variety, Category.acrylic],
        id: 24,
        isFeatured: false,
        name: 'Badge + Keychain Set Pieyon land.ver',
        price: 132000,
      ),
      Product(
        category: [Category.acrylic],
        id: 25,
        isFeatured: false,
        name: 'Keychain 47 Prefectures ver.',
        price: 693000,
      ),
      Product(
        category: [Category.variety],
        id: 26,
        isFeatured: false,
        name: 'Clear file 47 Prefectures ver.',
        price: 110000,
      ),
      Product(
        category: [Category.variety],
        id: 27,
        isFeatured: false,
        name: 'Oshi no ko wristbands',
        price: 77000,
      ),
      Product(
        category: [Category.variety],
        id: 28,
        isFeatured: true,
        name: 'Towel Kanto Summer Festival ver.',
        price: 220000,
      ),
      Product(
        category: [Category.variety],
        id: 29,
        isFeatured: false,
        name: 'Pin Kanto Summer Festival ver.',
        price: 55000,
      ),
      Product(
        category: [Category.acrylic],
        id: 30,
        isFeatured: true,
        name: 'Acrylic Stand Kimono ver.',
        price: 132000,
      ),
      Product(
        category: [Category.acrylic],
        id: 31,
        isFeatured: false,
        name: 'Acrylic Stand Aomori Prefecture ver.',
        price: 165000,
      ),
      Product(
        category: [Category.variety],
        id: 32,
        isFeatured: true,
        name: 'Replica B-Komachi\'s Private Edition',
        price: 1650000,
      ),
      Product(
        category: [Category.variety],
        id: 33,
        isFeatured: true,
        name: 'B2 Tapestry Carnival ver.',
        price: 220000,
      ),
      Product(
        category: [Category.variety],
        id: 34,
        isFeatured: false,
        name: 'Ribbon charm Fan Appreciation ver.',
        price: 704000,
      ),
      Product(
        category: [Category.variety],
        id: 35,
        isFeatured: false,
        name: 'Oshi no ko Photocard Stage ver.',
        price: 396000,
      ),
      Product(
        category: [Category.acrylic],
        id: 36,
        isFeatured: false,
        name: 'Acrylic Panel Marine Day 2024 ver.',
        price: 352000,
      ),
      Product(
        category: [Category.variety],
        id: 37,
        isFeatured: true,
        name: 'Rubber Mat New Year 2024ver.',
        price: 330000,
      ),
      Product(
        category: [Category.acrylic],
        id: 38,
        isFeatured: true,
        name: 'ANIME STUDIO Card Holder Set',
        price: 220000,
      ),
    ];

    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category.contains(category); // Use contains() instead of ==
      }).toList();
    }
  }
}
