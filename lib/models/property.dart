class Property {
  final int id;
  final String title;
  // final String image;
  final List<String> images;
  final double price;
  final String address;
  final int size;
  final int bedrooms;
  final int toilets;
  final String description;
  final int floors;

  Property(
      {this.id,
      this.title,
      this.images,
      this.price,
      this.address,
      this.size,
      this.bedrooms,
      this.toilets,
      this.description,
      this.floors});
}

List<Property> properties = [
  Property(
    id: 1,
    title: "South Facing Apartment",
    images: [
      "assets/images/images (1).jpeg",
      "assets/images/images (11).jpeg",
      "assets/images/images (21).jpeg",
      "assets/images/images (31).jpeg"
    ],
    price: 500000.00,
    address: "799 Herman Views Apt",
    size: 1500,
    bedrooms: 4,
    toilets: 3,
    description:
        "Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple  but effective approach to object-oriented programming.",
    floors: 3,
  ),
  Property(
    id: 2,
    title: "Apartment",
    images: [
      "assets/images/images (2).jpeg",
      "assets/images/images (12).jpeg",
      "assets/images/images (22).jpeg",
      "assets/images/images (32).jpeg"
    ],
    price: 450000.00,
    address: "79 Allen Views Apt",
    size: 1300,
    bedrooms: 2,
    toilets: 2,
    description:
        "Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.",
    floors: 5,
  ),
  Property(
    id: 3,
    title: "North Apartment",
    images: [
      "assets/images/images (3).jpeg",
      "assets/images/images (13).jpeg",
      "assets/images/images (23).jpeg",
      "assets/images/images (33).jpeg"
    ],
    price: 200000.00,
    address: "2 Ajah Ilaje Jakande",
    size: 1500,
    bedrooms: 4,
    toilets: 3,
    description:
        "helps to have a Python interpreter handy for hands-on experience, but all examples are self-contained, so the tutorial",
    floors: 3,
  ),
  Property(
    id: 4,
    title: "Latest Apartment",
    images: [
      "assets/images/images (4).jpeg",
      "assets/images/images (14).jpeg",
      "assets/images/images (24).jpeg",
      "assets/images/images (34).jpeg"
    ],
    price: 225000.00,
    address: "525 Bogije Ajah Lagos",
    size: 9876,
    bedrooms: 3,
    toilets: 6,
    description:
        "This tutorial introduces the reader informally to the basic concepts and features of the Python language and system. It",
    floors: 6,
  ),
  Property(
    id: 5,
    title: "Ethiopia Apartment",
    images: [
      "assets/images/images (5).jpeg",
      "assets/images/images (15).jpeg",
      "assets/images/images (25).jpeg",
      "assets/images/images (35).jpeg"
    ],
    price: 163000.00,
    address: "225 IleOgbo Ajegunle",
    size: 8000,
    bedrooms: 7,
    toilets: 5,
    description:
        "languages callable from C). Python is also suitable as an extension language for customizable applications. Python allows you to split your program into modules that can be reused in other Python programs. It comes with a large collection of standard modules that you can use as the basis of your programs — or as examples to start learning to program in Python. Some of these modules provide things like file I/O, system calls, sockets, and even interfaces to graphical user interface toolkits like Tk.",
    floors: 8,
  ),
  Property(
    id: 6,
    title: "Angola Apartment",
    images: [
      "assets/images/images (6).jpeg",
      "assets/images/images (16).jpeg",
      "assets/images/images (26).jpeg",
      "assets/images/images (36).jpeg"
    ],
    price: 419000.00,
    address: "131 Marina Lagos",
    size: 8328,
    bedrooms: 5,
    toilets: 3,
    description:
        "The Python interpreter is easily extended with new functions and data types implemented in C or C++ (or other",
    floors: 8,
  ),
  Property(
    id: 7,
    title: "Luanda Apartment",
    images: [
      "assets/images/images (7).jpeg",
      "assets/images/images (17).jpeg",
      "assets/images/images (27).jpeg"
    ],
    price: 411000.00,
    address: "315 Awolowo Way",
    size: 7684,
    bedrooms: 2,
    toilets: 5,
    description:
        "contains distributions of and pointers to many free third party Python modules, programs and tools, and additional documentation. Python is simple to use, but it is a real programming language, offering much more structure and support for large programs than shell scripts or batch files can offer. On the other hand, Python also offers much more error checking than C, and, being a very-high-level language, it has high-level data types built in, such as flexible arrays and dictio- naries. Because of its more general data types",
    floors: 9,
  ),
  Property(
    id: 8,
    title: "Maputo Apartment",
    images: [
      "assets/images/images (8).jpeg",
      "assets/images/images (18).jpeg",
      "assets/images/images (28).jpeg"
    ],
    price: 131000.00,
    address: "200 Ikota Herman Views Apt",
    size: 2365,
    bedrooms: 7,
    toilets: 1,
    description:
        "platforms from the Python Web site, https://www.python.org/, and may be freely distributed. The same site also You could write a Unix shell script or Windows batch files for some of these tasks, but shell scripts are best at moving around files and changing text data, not well-suited for GUI applications or games. You could write a C/C++/Java program, but it can take a lot of development time to get even a first-draft program. Python is simpler to use, available on Windows, Mac OS X, and Unix operating systems, and will hel",
    floors: 6,
  ),
  Property(
    id: 9,
    title: "East Apartment",
    images: [
      "assets/images/images (9).jpeg",
      "assets/images/images (19).jpeg",
      "assets/images/images (29).jpeg"
    ],
    price: 221000.00,
    address: "15 Lekki Views Apt",
    size: 2250,
    bedrooms: 6,
    toilets: 5,
    description:
        "The Python interpreter and the extensive standard library are freely available in source or binary form for all major. If you’re a professional software developer, you may have to work with several C/C++/Java libraries but find the usual write/compile/test/re-compile cycle is too slow. Perhaps you’re writing a test suite for such a library and find writing the testing code a tedious task. Or maybe you’ve written a program that could u",
    floors: 4,
  ),
  Property(
    id: 10,
    title: "Southern Park",
    images: [
      "assets/images/images (10).jpeg",
      "assets/images/images (20).jpeg",
      "assets/images/images (30).jpeg"
    ],
    price: 175000.00,
    address: "17 Aguda Surulere",
    size: 4500,
    bedrooms: 8,
    toilets: 4,
    description:
        "If you do much work on computers, eventually you find that there’s some task you’d like to automate. For example, you may wish to perform a search-and-replace over a large number of text files, or rename and rearrange a bunch of photo files in a complicated way. Perhaps you’d like to write a small custom database, or a specialized GUI application, or a simple game.",
    floors: 4,
  )
];
