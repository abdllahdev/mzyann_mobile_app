import 'package:mzyann/model/Professional.dart';


class Professionals {
  static final List<Professional> professionals = [
    const Professional(
      id: '1',
      name: 'Abdullah Fathy',
      location: 'Zagazig',
      avatar: 'assets/img/2.jpg',
      about: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      job: 'Photographer',
      salary: '100-1000',
      portfolio: [
        'assets/img/2.jpg',
        'assets/img/1.jpg',
        'assets/img/3.jpg',
        'assets/img/2.jpg',
        'assets/img/1.jpg',
        'assets/img/3.jpg',
        'assets/img/2.jpg',
        'assets/img/1.jpg',
        'assets/img/3.jpg',
        'assets/img/2.jpg',
        'assets/img/1.jpg',
        'assets/img/3.jpg',
      ]
    ),
    const Professional(
        id: '2',
        name: 'Billie Eilish',
        location: 'Cairo',
        avatar: 'assets/img/1.jpg',
        about: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident',
        job: 'Photographer',
        salary: '100-1000',
        portfolio: [
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
        ]
    ),
    const Professional(
        id: '3',
        name: 'Lea Eulo',
        location: 'Giza',
        avatar: 'assets/img/3.jpg',
        about: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident',
        job: 'Photographer',
        salary: '100-1000',
        portfolio: [
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
          'assets/img/2.jpg',
          'assets/img/1.jpg',
          'assets/img/3.jpg',
        ]
    )
  ];

  static Professional getProfessionalById(id) {
    return professionals.where((p) => p.id == id).first;
  }
}
