class TruemeUser {
  TruemeUser({
    required this.userId,
    this.city,
    this.gender,
    this.birthday,
    this.userExternalId,
    this.activePrograms,
    this.isTrailFinished,
    this.isOnboardingFinished,
    this.lastVisitedPage,
    this.lastVisitedProgram,
    this.name,
  });

  factory TruemeUser.fromJson(Map<String, dynamic> json) {
    return TruemeUser(
      city: json['city'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] != null
          ? DateTime.tryParse(json['birthday'] as String)
          : null,
      userId: json['userId'] as String,
      userExternalId: json['userExternalId'] as String?,
      activePrograms: json['activePrograms'] != null
          ? List<String?>.from(json['activePrograms'] as List)
          : null,
      isTrailFinished: json['isTrailFinished'] as bool?,
      isOnboardingFinished: json['isOnboardingFinished'] as bool?,
      lastVisitedPage: json['lastVisitedPage'] as String?,
      lastVisitedProgram: json['lastVisitedProgram'] as String?,
      name: json['name'] as String?,
    );
  }

  final String userId;
  final String? city;
  final String? gender;
  final DateTime? birthday;
  final String? userExternalId;
  final List<String?>? activePrograms;
  final bool? isTrailFinished;
  final bool? isOnboardingFinished;
  final String? lastVisitedPage;
  final String? lastVisitedProgram;
  final String? name;

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'gender': gender,
      'birthday': birthday?.toIso8601String(),
      'userId': userId,
      'userExternalId': userExternalId,
      'activePrograms': activePrograms,
      'isTrailFinished': isTrailFinished,
      'isOnboardingFinished': isOnboardingFinished,
      'lastVisitedPage': lastVisitedPage,
      'lastVisitedProgram': lastVisitedProgram,
      'name': name,
    };
  }
}
