import 'package:equatable/equatable.dart';

class CheckinProgressModel extends Equatable {
  const CheckinProgressModel({
    required this.totalCheckinsDone,
  });

  factory CheckinProgressModel.fromJson(Map<String, dynamic> json) {
    return CheckinProgressModel(
      totalCheckinsDone: json['total_checkins_done'] as int,
    );
  }

  final int totalCheckinsDone;

  /// Calculate current day based on total checkins done (3 checkins per day)
  int get currentDay {
    return ((totalCheckinsDone - 1) / 3).floor() + 1;
  }

  /// Calculate steps completed in current day (1, 2, or 3)
  int get stepsInCurrentDay {
    final remainder = totalCheckinsDone % 3;
    return remainder == 0 ? 3 : remainder;
  }

  /// Calculate total progress for the 21-stage program
  double get overallProgress {
    return totalCheckinsDone / 21.0;
  }

  /// Check if current day is completed (all 3 stages done)
  bool get isCurrentDayCompleted {
    return stepsInCurrentDay == 3 && totalCheckinsDone < 21;
  }

  /// Check if entire 7-day program is completed
  bool get isProgramCompleted {
    return totalCheckinsDone >= 21;
  }

  Map<String, dynamic> toJson() => {
        'total_checkins_done': totalCheckinsDone,
      };

  @override
  List<Object?> get props => [totalCheckinsDone];
}
