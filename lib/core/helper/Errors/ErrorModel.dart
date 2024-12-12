class Errormodel {
  final int code;
  final String message;
  final List<ErrorDetail> errors;

  Errormodel({
    required this.code,
    required this.message,
    required this.errors,
  });

  factory Errormodel.fromJson(Map<String, dynamic> json) {
    return Errormodel(
      code: json['code'],
      message: json['message'],
      errors: (json['errors'] as List)
          .map((error) => ErrorDetail.fromJson(error))
          .toList(),
    );
  }

  
}

class ErrorDetail {
  final String message;
  final String domain;
  final String reason;

  ErrorDetail({
    required this.message,
    required this.domain,
    required this.reason,
  });

  factory ErrorDetail.fromJson(Map<String, dynamic> json) {
    return ErrorDetail(
      message: json['message'],
      domain: json['domain'],
      reason: json['reason'],
    );
  }

}