import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_pair_card_model.freezed.dart';

@freezed
class FindPairCardModel with _$FindPairCardModel {
  const factory FindPairCardModel({
    required int id,
    required int pairId,
    required String emoji,
    @Default(false) bool isFlipped,
    @Default(false) bool isMatched,
  }) = _FindPairCardModel;
}