class SignupModel {
  String password;
  String phone;
  String firstname;
  String lastname;

  SignupModel({
    required this.password,
    required this.phone,
    required this.firstname,
    required this.lastname,
  });

  // Factory method to create a SignupModel from JSON
  factory SignupModel.fromJson(Map<String, dynamic> json) {
    return SignupModel(
      password: json['password'],
      phone: json['phone'],
      firstname: json['name']['firstname'],
      lastname: json['name']['lastname'],
    );
  }

  // Method to convert SignupModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'phone': phone,
      'firstname': firstname,
      'lastname': lastname,
    };
  }
}