

import 'package:equatable/equatable.dart';



class Errormodel extends Equatable {
	final Error? error;

	const Errormodel({this.error});

	factory Errormodel.fromJson(Map<String, dynamic> json) => Errormodel(
				error: json['error'] == null
						? null
						: Error.fromJson(json['error'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'error': error?.toJson(),
			};

	@override
	List<Object?> get props => [error];
}

class Error extends Equatable {
	final int? code;
	final String? message;
	final List<Error>? errors;

	const Error({this.code, this.message, this.errors});

	factory Error.fromJson(Map<String, dynamic> json) => Error(
				code: json['code'] as int?,
				message: json['message'] as String?,
				errors: (json['errors'] as List<dynamic>?)
						?.map((e) => Error.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'code': code,
				'message': message,
				'errors': errors?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [code, message, errors];
}
