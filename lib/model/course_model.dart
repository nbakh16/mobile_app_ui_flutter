class CourseModel {
  String courseID;
  String courseName;
  String courseImage;
  String courseDescription;
  String courseDuration;
  String courseInstructor;

  CourseModel(
    this.courseID,
    this.courseName,
    this.courseImage,
    this.courseDescription,
    this.courseDuration,
    this.courseInstructor
  );

  //dummy course list
  static List<CourseModel> listOfCourses() {
    return [
      CourseModel(
        '2001',
        'Mobile Application Development',
        'assets/images/sample-image.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
            'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
            'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
            'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
            'feugiat in. Vestibulum morbi blandit cursus risus at.',
        '22h',
        'Name name'
      ),
      CourseModel(
          '2021',
          'Web Development',
          'assets/images/sample-image.png',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
              'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
              'feugiat in. Vestibulum morbi blandit cursus risus at.',
          '18h',
          'Name name'
      ),
      CourseModel(
          '2200',
          'Graphics Designing',
          'assets/images/sample-image.png',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
              'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
              'feugiat in. Vestibulum morbi blandit cursus risus at.',
          '12h',
          'Name name'
      ),
      CourseModel(
          '4000',
          'Python Bootcamp',
          'assets/images/sample-image.png',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
              'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
              'feugiat in. Vestibulum morbi blandit cursus risus at.',
          '16h',
          'Name name'
      ),
    ];
  }
}