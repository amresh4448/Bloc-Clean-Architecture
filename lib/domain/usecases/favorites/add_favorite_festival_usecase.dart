// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dartz/dartz.dart';

import 'package:todo_list_app/data/network/failure.dart';
import 'package:todo_list_app/domain/entities/festival.dart';
import 'package:todo_list_app/domain/repository/repository.dart';
import 'package:todo_list_app/domain/usecases/base_usecase.dart';

class AddFavoriteFestivalUseCaseInput {
  String user_id;
  String festival_id;
  AddFavoriteFestivalUseCaseInput(
    this.user_id,
    this.festival_id,
  );
}

class AddFavoriteFestivalUseCase extends BaseUseCase<AddFavoriteFestivalUseCaseInput, String> {
  final Repository _repository;

  AddFavoriteFestivalUseCase(this._repository);
 

  @override
  Future<Either<Failure, String>> execute(input) async {
   
    final result =  _repository.addFavoriteFestival(input.user_id, input.festival_id);
    return result;
  }

}