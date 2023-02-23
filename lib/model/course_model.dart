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
        'Learn to develop mobile application using Flutter. we will learn various flutter tricks to boost our productivity',
        '22h',
        'Name name'
      ),
      CourseModel(
          '2001',
          'Mobile Application Development',
          'assets/images/sample-image.png',
          'Learn to develop mobile application using Flutter. we will learn various flutter tricks to boost our productivity',
          '22h',
          'Name name'
      ),
      CourseModel(
          '2001',
          'Mobile Application Development',
          'assets/images/sample-image.png',
          'Learn to develop mobile application using Flutter. we will learn various flutter tricks to boost our productivity',
          '22h',
          'Name name'
      )
    ];
  }
}