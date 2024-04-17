import 'package:flutter_application_2/index.dart';

/// TODO: - ch kareli regex-ery , route anunnery localizacnel
///
const String signUp = 'sign_up';
const String login = 'login';
const String welcome = 'welcome';
const String welcomeBack = 'welcome_back';
const String signUpTitle = 'sign_up_title';
const String loginTitle = 'login_title';
const String hintText = 'hint_text';
const String emailAddress = 'email_address';
const String emptyError = 'empty_error';
const String passwordHintText = 'password_hint_text';
const String password = 'password';
const String submit = 'submit';
const String passwordValidationMessage = 'password_validation_message';
const String signUpWith = 'sign_up_with';
const String alreadyHaveAccount = 'already_have_account';
const String signUpTextRichPartOne = 'sign_up_text_rich_part_one';
const String signUpTextRichPartTwo = 'sign_up_text_rich_part_two';
const String toSignUpTextPartOne = 'to_sign_up_text_part_one';
const String and = 'and';
const String privacyPolicy = 'privacy_policy';
const String loginWith = 'login_with';
const String createAccount = 'create_account';
const String setUpProfile = 'set_up_profile';
const String profileHintName = 'profile_hint_name';
const String profileTextFieldHelpText = 'profile_text_field_help_text';
const String textContinue = 'text_continue';
const String myCourses = 'my_courses';
const String ongoing = 'ongoing';
const String completed = 'completed';
const String certificates = 'certificated';
const String projectTitle = 'project_title';
const String homeRoute = '/';
const String getYouInRoute = 'get_you_in_route';
const String allCoursesRoute = 'all_courses_route';
const String singlePopularCourseRoute = 'single_popular_course_route';
const String enrollPaymentRoute = 'enroll_payment_route';
const String signUpAndLoginRoute = 'sign_up_and_login_route';
const String profileRoute = 'profile_route';
const String coursesRoute = 'courses_route';
const String enrollCourse = 'enroll_course';
const String selectPaymentMethod = 'select_payment_method';
const String clipPathGroupImgPath = 'clip_path_group_img_path';
const String getYouInTitle = 'get_you_in_title';
const String or = 'or';
const String signInWithPassword = 'sign_in_with_password';
const String skip = 'skip';
const String next = 'next';
const String of = 'of';
const String study8 = 'study8';
const String readMoreText = 'read_more_text';
const String home = 'home';
const String favourites = 'favourites';
const String profile = 'profile';
const String passwordRegExp = 'password_reg_exp';
const String browser = 'browser';
const String logedHomeRoute = 'loged_home_route';
const String singleCourseRoute = 'single_course_route';
const String lectures = 'lectures';
const String more = 'more';
const String goodMorning = 'good_morning';
const String benjamin = 'benjamin';
const String search = 'search';
const String makeProgressListTitle = 'make_progress_list_title';
const String popularCourses = 'popular_courses';
const String seeAll = 'see_all';
const String unenroll = 'unenroll';
const String resetDeadlines = 'reset_deadlines';
const String continueCourse = 'continue_course';
const String priceRange = 'price_range';
const String filter = 'filter';
const String category = 'category';
const String raiting = 'raiting';
const String clearFilter = 'clear_filter';
const String applyFilter = 'apply_filter';
const String allCourses = 'all_courses';
const String aboutThisCourse = 'about_this_course';
const String skillsYouWillGain = 'skills_you_will_gain';
const String courseInstructor = 'course_instructor';
const String onboardingRoute = 'onboarding_route';
const String enrollCourseRoute = 'enroll_course_route';
const String enterYourPin = 'enter_your_pin';
const String successfullyEnrolled = 'successfully_enrolled';
const String viewCourse = 'view_course';
const String paymentReceipt = 'payment_receipt';
const String successfullyEnrolledImg = 'successfully_enrolled_img';
const String searchRoute = 'search_route';
const String recent = 'recent';
const String clearAll = 'clear_all';
const String resultFor = 'result_for';
const String notFounded = 'not_founded';
const String smileImg = 'smile_img';
const String notFound = 'not_found';
const String notFoundDescription = 'not_found_description';

extension StringLocalization on String {
  String get localized {
    return localizations.containsKey(this) ? localizations[this]! : this;
  }
}
