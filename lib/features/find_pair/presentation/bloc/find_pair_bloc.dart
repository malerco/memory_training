import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:memory_training/features/find_pair/domain/entities/find_pair_card_model.dart';

part 'find_pair_bloc.freezed.dart';
part 'find_pair_event.dart';
part 'find_pair_state.dart';

enum FindPairPhase { preview, playing, completed }

@injectable
class FindPairBloc extends Bloc<FindPairEvent, FindPairState> {
  Timer? _timer;
  final Random _random = Random();

  static const List<String> _emojis = [
    '🍎', '🍊', '🍋', '🍇', '🍉', '🍓', '🫐', '🥝',
    '🌟', '🌙', '☀️', '🌈', '⚡', '❄️', '🔥', '💧',
    '🎈', '🎁', '🎀', '🎪', '🎨', '🎭', '🎯', '🎲',
    '🚀', '✈️', '🚗', '🚁', '⛵', '🚂', '🏎️', '🛸',
    '🦋', '🐝', '🐞', '🦄', '🐬', '🦁', '🐸', '🦊',
  ];

  FindPairBloc() : super(const FindPairState()) {
    on<_Start>(_onStart);
    on<_FlipCard>(_onFlipCard);
    on<_TimerTick>(_onTimerTick);
    on<_HideCards>(_onHideCards);
    on<_StartPlaying>(_onStartPlaying);
    on<_Restart>(_onRestart);
  }

  void _onStart(_Start event, Emitter<FindPairState> emit) {
    _timer?.cancel();
    
    final totalCards = event.rows * event.cols;
    final pairsCount = totalCards ~/ 2;
    
    final shuffledEmojis = List<String>.from(_emojis)..shuffle(_random);
    final selectedEmojis = shuffledEmojis.take(pairsCount).toList();
    
    final cards = <FindPairCardModel>[];
    int id = 0;
    
    for (int i = 0; i < pairsCount; i++) {
      cards.add(FindPairCardModel(id: id++, pairId: i, emoji: selectedEmojis[i], isFlipped: true));
      cards.add(FindPairCardModel(id: id++, pairId: i, emoji: selectedEmojis[i], isFlipped: true));
    }
    
    cards.shuffle(_random);

    emit(FindPairState(
      rows: event.rows,
      cols: event.cols,
      cards: cards,
      phase: FindPairPhase.preview,
      previewTimeLeft: 10,
      playTime: 0,
      mistakes: 0,
    ));

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const FindPairEvent.timerTick());
    });
  }

  void _onTimerTick(_TimerTick event, Emitter<FindPairState> emit) {
    if (state.phase == FindPairPhase.preview) {
      if (state.previewTimeLeft > 1) {
        emit(state.copyWith(previewTimeLeft: state.previewTimeLeft - 1));
      } else {
        add(const FindPairEvent.startPlaying());
      }
    } else if (state.phase == FindPairPhase.playing) {
      emit(state.copyWith(playTime: state.playTime + 1));
    }
  }

  void _onStartPlaying(_StartPlaying event, Emitter<FindPairState> emit) {
    _timer?.cancel();
    
    final hiddenCards = state.cards
        .map((c) => c.copyWith(isFlipped: false))
        .toList();

    emit(state.copyWith(
      cards: hiddenCards,
      phase: FindPairPhase.playing,
      previewTimeLeft: 0,
    ));

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const FindPairEvent.timerTick());
    });
  }

  void _onFlipCard(_FlipCard event, Emitter<FindPairState> emit) {
    if (state.phase != FindPairPhase.playing || state.isProcessing) return;

    final card = state.cards[event.index];
    if (card.isFlipped || card.isMatched) return;

    final newCards = List<FindPairCardModel>.from(state.cards);
    newCards[event.index] = card.copyWith(isFlipped: true);

    if (state.firstFlippedIndex == null) {
      emit(state.copyWith(
        cards: newCards,
        firstFlippedIndex: event.index,
      ));
    } else {
      final firstCard = state.cards[state.firstFlippedIndex!];
      
      emit(state.copyWith(
        cards: newCards,
        isProcessing: true,
      ));

      if (firstCard.pairId == card.pairId) {
        newCards[state.firstFlippedIndex!] = firstCard.copyWith(isMatched: true);
        newCards[event.index] = card.copyWith(isFlipped: true, isMatched: true);
        
        final allMatched = newCards.every((c) => c.isMatched);
        
        if (allMatched) {
          _timer?.cancel();
        }
        
        emit(state.copyWith(
          cards: newCards,
          firstFlippedIndex: null,
          isProcessing: false,
          phase: allMatched ? FindPairPhase.completed : state.phase,
        ));
      } else {
        emit(state.copyWith(
          cards: newCards,
          mistakes: state.mistakes + 1,
        ));
        
        Future.delayed(const Duration(milliseconds: 800), () {
          add(const FindPairEvent.hideCards());
        });
      }
    }
  }

  void _onHideCards(_HideCards event, Emitter<FindPairState> emit) {
    final newCards = state.cards.map((c) {
      if (!c.isMatched && c.isFlipped) {
        return c.copyWith(isFlipped: false);
      }
      return c;
    }).toList();

    emit(state.copyWith(
      cards: newCards,
      firstFlippedIndex: null,
      isProcessing: false,
    ));
  }

  void _onRestart(_Restart event, Emitter<FindPairState> emit) {
    add(FindPairEvent.start(rows: state.rows, cols: state.cols));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
