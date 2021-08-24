import 'package:leo_ife/models/Products.dart';
import 'package:leo_ife/models/category.dart';

List<Product> productList = [
  Product(
      name: "Dettol Soap",
      wishList: false,
      rating: 4.3,
      price: 50,
      category: Category("Soaps", ""),
      company: "Dettol",
      description:
      "Dettol Original Bar Soap is a hygiene soap which provides trusted Dettol protection from a wide range of unseen germs. It cleanses and protects your skin for a hygienic, clean and refreshing feeling every day. Cleans & Protects against 99.9% of germs.",
      featured: true,
      images: [
        "assets/images/soaps/Sensitive.png",

        "assets/images/soaps/dettol3.png",

        "assets/images/soaps/Skincare.png",
      ],
      quantities: [
        "Sensitive",
        "Skin Care",
        "Plus"
      ]),
  Product(
      name: "Brooms",
      images: [
        "assets/images/brooms/broom-stick.png",
        "assets/images/brooms/pbroom.png",
            "assets/images/brooms/brooms.jpeg",
        "assets/images/brooms/broom-transparent.png"

      ],
      price: 200,
      rating: 4.1,
      wishList: false,
    quantities: [
          "Leafs","Brooms","Take"
    ],
    featured: true,
    description: "A broom (also known in some forms as a broomstick) is a cleaning tool consisting of usually stiff fibers (often made of materials such as plastic, hair, or corn husks) attached to, and roughly parallel to, a cylindrical handle, the broomstick. It is thus a variety of brush with a long handle.",
    company: "Company Varies",
    category: Category("Brooms","")

  ),
  Product(
      name: "Clorox",
      images: [
        "assets/images/liquids/Clorox.png",
        "assets/images/liquids/Clorox.png",
        "assets/images/liquids/Clorox.png",
      ],
      price: 100,
      rating: 4.3,
      wishList: true,
    category: Category("Liquid",""),
    company: "Leo Life",
    description: "Although best known for the household bleach that bears the firm's name, The Clorox Company is a diversified international manufacturer and marketer of a variety of consumer products ranging from household cleaners to salad dressings and from plastic bags to cat litter.",
    featured: true,
    quantities: [
      "250ml","500ml","1Ltr","4Ltr"
    ],

  ),
  Product(
      name: "Dettol Liquid",
      images: [
        "assets/images/liquids/Dettol.png",
        "assets/images/liquids/Dettol.png",
        "assets/images/liquids/Dettol.png",
      ],
      price: 220,
      rating: 4.1,
      wishList: true,
    quantities: [
      "100ml","250ml","500ml"
    ],
    featured: true,
    description: "Dettol Antiseptic Liquid removes germs from skin, safeguards from infections caused by cuts and scratches and can also be used as household disinfectant on home surfaces and in laundry. Always use as directed.",
    company: "Dettol",category: Category("Liquids","")
  ),
  Product(
      name: "Dettol Hand Wash",
      images: [
        "assets/images/liquids/dettolwash.png",
        "assets/images/liquids/dettolwash.png",
        "assets/images/liquids/dettolwash.png",
      ],
      price: 150,
      rating: 4.5,
      wishList: true,
    category: Category("Liquid",""),
    company: "Dettol",
    description: "Dettol Original Liquid Hand Wash kills 99.9% of germs. Using it every day protects hands from germs and helps keep them hygienically clean. The pH-balanced formula along with Dettol's trusted germ protection helps your skin feeling healthy and fresh.",
    featured: true,
    quantities: [
      "250ml","500ml"
    ],
  ),
  Product(
      name: "Brush Broom",
      images: [
        "assets/images/brooms/brush-broom.png",
        "assets/images/brooms/brush-broom.png",
        "assets/images/brooms/brush-broom.png"
      ],
      price: 200,
      rating: 4.1,
      wishList: true,
    quantities: [

    ],
    featured: true,
    description: "Glass cleansers are typically spray and wipe type of solvents that can be used on a variety of surfaces, including glass, laminates, dashboard, appliances and painted surfaces. ... The basic principle of a glass cleaner is loose and dissolve oily soils found on glass and dry quickly without streaking.",
company: "Leo Life",
    category: Category("Liquid","")
  ),
  Product(
      name: "Glass Cleaner",
      images: [
        "assets/images/liquids/glass-cleaner.png",
        "assets/images/liquids/glass-cleaner.png",
        "assets/images/liquids/glass-cleaner.png",
      ],
      price: 200,
      rating: 4.1,
      wishList: true,
      quantities: [

      ],
      featured: true,
      description: "Glass cleansers are typically spray and wipe type of solvents that can be used on a variety of surfaces, including glass, laminates, dashboard, appliances and painted surfaces. ... The basic principle of a glass cleaner is loose and dissolve oily soils found on glass and dry quickly without streaking.",
      company: "Leo Life",
      category: Category("Liquid","")
  ),
  Product(
      name: "Comfort",
      images: [
        "assets/images/liquids/png.webp",
        "assets/images/liquids/png.webp",
        "assets/images/liquids/png.webp"
      ],
      price: 200,
      rating: 4.1,
      wishList: true,
      quantities: [

      ],
      featured: true,
      description: "Glass cleansers are typically spray and wipe type of solvents that can be used on a variety of surfaces, including glass, laminates, dashboard, appliances and painted surfaces. ... The basic principle of a glass cleaner is loose and dissolve oily soils found on glass and dry quickly without streaking.",
      company: "Leo Life",
      category: Category("Liquid","")
  ),

];
