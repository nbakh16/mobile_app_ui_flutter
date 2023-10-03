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
        'assets/images/course01-1.png',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
            'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
            'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
            'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
            'feugiat in. Vestibulum morbi blandit cursus risus at.',
        '22h',
        'Course Tutor'
      ),
      CourseModel(
          '2021',
          'Web Development',
          'assets/images/course02.png',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
              'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
              'feugiat in. Vestibulum morbi blandit cursus risus at.',
          '18h',
          'Course Tutor'
      ),
      CourseModel(
          '2200',
          'Graphics Designing',
          'assets/images/course03.png',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
              'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
              'feugiat in. Vestibulum morbi blandit cursus risus at.',
          '12h',
          'Course Tutor'
      ),
      CourseModel(
          '4000',
          'Python Bootcamp',
          'assets/images/course04.png',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Posuere lorem ipsum dolor sit amet consectetur adipiscing. '
              'Mauris a diam maecenas sed enim. Adipiscing tristique risus nec '
              'feugiat in. Vestibulum morbi blandit cursus risus at.',
          '16h',
          'Course Tutor'
      ),
    ];
  }
}