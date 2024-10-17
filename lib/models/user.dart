import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String? name;
  final String? password;
  const User({required this.id, this.name, this.password});
  static const empty = User(id: '');
  @override
  // TODO: implement props
  List<Object?> get props => [id, name, password];
}
