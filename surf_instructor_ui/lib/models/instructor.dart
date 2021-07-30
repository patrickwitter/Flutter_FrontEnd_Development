class Instructor {
  String instructorName;
  String rating;
  String instructorPic;

  Instructor({this.instructorName, this.rating, this.instructorPic});

  static var allInstructors = [
    Instructor(
        instructorName: 'Cora Wong',
        rating: '9.95',
        instructorPic: 'lib/assets/woman1.jpg'),
    Instructor(
        instructorName: 'Charlie Roy',
        rating: '9.91',
        instructorPic: 'lib/assets/man1.jpg'),
    Instructor(
        instructorName: 'Ruth Norton',
        rating: '9.87',
        instructorPic: 'lib/assets/woman2.jpg'),
    Instructor(
        instructorName: 'Leah Price',
        rating: '9.85',
        instructorPic: 'lib/assets/man2.jpg'),
    Instructor(
        instructorName: 'Hettie Bell',
        rating: '9.83',
        instructorPic: 'lib/assets/woman3.jpg'),
    Instructor(
        instructorName: 'Floyd Lyons',
        rating: '9.82',
        instructorPic: 'lib/assets/man3.jpg'),
    Instructor(
        instructorName: 'Charlie Casey',
        rating: '9.77',
        instructorPic: 'lib/assets/woman4.jpg'),
    Instructor(
        instructorName: 'Dustin Simon',
        rating: '9.74',
        instructorPic: 'lib/assets/man4.jpg'),
    Instructor(
        instructorName: 'Adele Lee',
        rating: '9.71',
        instructorPic: 'lib/assets/man5.jpg')
  ];
}
