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
        category: Category.figurine,
        id: 0,
        isFeatured: true,
        name: 'Lookup',
        price: 620000,
      ),
      Product(
        category: Category.keychain,
        id: 1,
        isFeatured: true,
        name: 'Hip Keychain',
        price: 169000,
      ),
      Product(
        category: Category.keychain,
        id: 2,
        isFeatured: false,
        name: 'Chibi Keychain',
        price: 158000,
      ),
      Product(
        category: Category.variety,
        id: 3,
        isFeatured: true,
        name: 'Baking Soda Tee',
        price: 269000,
      ),
      Product(
        category: Category.figurine,
        id: 4,
        isFeatured: false,
        name: 'Uniform Ver.',
        price: 154000,
      ),
      Product(
        category: Category.figurine,
        id: 5,
        isFeatured: false,
        name: 'B-Komachi Acrylic Stand',
        price: 12,
      ),
      Product(
        category: Category.figurine,
        id: 6,
        isFeatured: false,
        name: 'B-Komachi Limited-Edition Figure',
        price: 2050000,
      ),
      Product(
        category: Category.figurine,
        id: 7,
        isFeatured: true,
        name: 'Exhibition Acrylic Stand',
        price: 440000,
      ),
      Product(
        category: Category.figurine,
        id: 8,
        isFeatured: true,
        name: 'B-Komachi ver. 2',
        price: 176000,
      ),
      Product(
        category: Category.figurine,
        id: 9,
        isFeatured: false,
        name: 'Tsurugi Acrylic Stand',
        price: 165000,
      ),
      Product(
        category: Category.figurine,
        id: 10,
        isFeatured: false,
        name: 'Halloween costume ver.',
        price: 154000,
      ),
      Product(
        category: Category.keychain,
        id: 11,
        isFeatured: false,
        name: 'Oshi no ko Keychain',
        price: 46200,
      ),
      Product(
        category: Category.variety,
        id: 12,
        isFeatured: false,
        name: 'Pin Exhibition ver.',
        price: 132000,
      ),
      Product(
        category: Category.variety,
        id: 13,
        isFeatured: true,
        name: 'Poster',
        price: 220000,
      ),
      Product(
        category: Category.variety,
        id: 14,
        isFeatured: true,
        name: 'Handfan',
        price: 132000,
      ),
      Product(
        category: Category.figurine,
        id: 15,
        isFeatured: false,
        name: 'Figurine Full moon...! ver.',
        price: 16000,
      ),
      // Product(
      //   category: Category.home,
      //   id: 16,
      //   isFeatured: true,
      //   name: 'Succulent planters',
      //   price: 16,
      // ),
      // Product(
      //   category: Category.home,
      //   id: 17,
      //   isFeatured: false,
      //   name: 'Quartet table',
      //   price: 175,
      // ),
      // Product(
      //   category: Category.home,
      //   id: 18,
      //   isFeatured: true,
      //   name: 'Kitchen quattro',
      //   price: 129,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 19,
      //   isFeatured: false,
      //   name: 'Clay sweater',
      //   price: 48,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 20,
      //   isFeatured: false,
      //   name: 'Sea tunic',
      //   price: 45,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 21,
      //   isFeatured: false,
      //   name: 'Plaster tunic',
      //   price: 38,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 22,
      //   isFeatured: false,
      //   name: 'White pinstripe shirt',
      //   price: 70,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 23,
      //   isFeatured: false,
      //   name: 'Chambray shirt',
      //   price: 70,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 24,
      //   isFeatured: true,
      //   name: 'Seabreeze sweater',
      //   price: 60,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 25,
      //   isFeatured: false,
      //   name: 'Gentry jacket',
      //   price: 178,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 26,
      //   isFeatured: false,
      //   name: 'Navy trousers',
      //   price: 74,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 27,
      //   isFeatured: true,
      //   name: 'Walter henley (white)',
      //   price: 38,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 28,
      //   isFeatured: true,
      //   name: 'Surf and perf shirt',
      //   price: 48,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 29,
      //   isFeatured: true,
      //   name: 'Ginger scarf',
      //   price: 98,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 30,
      //   isFeatured: true,
      //   name: 'Ramona crossover',
      //   price: 68,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 31,
      //   isFeatured: false,
      //   name: 'Chambray shirt',
      //   price: 38,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 32,
      //   isFeatured: false,
      //   name: 'Classic white collar',
      //   price: 58,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 33,
      //   isFeatured: true,
      //   name: 'Cerise scallop tee',
      //   price: 42,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 34,
      //   isFeatured: false,
      //   name: 'Shoulder rolls tee',
      //   price: 27,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 35,
      //   isFeatured: false,
      //   name: 'Grey slouch tank',
      //   price: 24,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 36,
      //   isFeatured: false,
      //   name: 'Sunshirt dress',
      //   price: 58,
      // ),
      // Product(
      //   category: Category.clothing,
      //   id: 37,
      //   isFeatured: true,
      //   name: 'Fine lines tee',
      //   price: 58,
      // ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
