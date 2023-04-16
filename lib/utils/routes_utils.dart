import 'icon_utils.dart';

class Buildoption {
  final String icon;
  final String name;
  final String route;

  Buildoption({
    required this.icon,
    required this.name,
    required this.route,
  });

}

class allroutes {
  static String home = '/';
  static String buildpage = 'resumes_build_options_page';
  static String contact = 'contact_info_page';
  static String selectdeclaration = 'declaration_page_select';
  static String contactincontact = 'contactin_contact_page';
  static String contactinphoto = 'contactin_photo_page';
  static List<Buildoption> buildoption = [
    Buildoption(icon: "${iconePath}contact-books.png", name: "Contact info", route: "contact_info_page"),
    Buildoption(icon: "${iconePath}briefcase.png", name: "Carrer objective", route: "carrier_objective_page.dart"),
    Buildoption(icon: "${iconePath}user.png", name: "Personal Details", route: "peronal_details_page.dart"),
    Buildoption(icon: "${iconePath}mortarboard.png", name: "Eduction", route: "educyion_page.dart"),
    Buildoption(icon: "${iconePath}thinking.png", name: "Experiences", route: "experiences_page.dart"),
    Buildoption(icon: "${iconePath}experience.png", name: "Technical Skills", route: "technical_skills_page.dart"),
    Buildoption(icon: "${iconePath}open-book.png", name: "Interest/Hobbies", route: "interest_hobbies_page.dart"),
    Buildoption(icon: "${iconePath}project.png", name: "Projects", route: "projects_page.dart"),
    Buildoption(icon: "${iconePath}achievement.png", name: "Achievements", route: "achievements_page"),
    Buildoption(icon: "${iconePath}handshake.png", name: "References", route: "references_page"),
    Buildoption(icon: "${iconePath}declaration.png", name: "Declaration", route: "declaration_page"),
  ];
}
