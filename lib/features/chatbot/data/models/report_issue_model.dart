class ReportIssueRequest {

  ReportIssueRequest({
    required this.message,
    required this.issueType,
    required this.issuerEmail,
  });
  final String message;
  final String issueType;
  final String issuerEmail;

  Map<String, dynamic> toJson() => {
        'message': message,
        'issueType': issueType,
        'issuerEmail': issuerEmail,
      };
}

enum IssueType {
  inappropriate('Inappropriate'),
  inaccurate('Inaccurate'),
  offensive('Offensive'),
  other('Other');

  const IssueType(this.value);
  final String value;

  static IssueType fromString(String value) {
    switch (value.toLowerCase()) {
      case 'inappropriate content':
        return IssueType.inappropriate;
      case 'error':
        return IssueType.inaccurate;
      case 'offensive content':
        return IssueType.offensive;
      case 'other':
        return IssueType.other;
      default:
        return IssueType.other;
    }
  }
}
