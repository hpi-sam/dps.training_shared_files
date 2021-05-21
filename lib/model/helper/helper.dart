// Package imports:
import 'package:bpmanv_app_sharedFiles/model/running_measure/running_measure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'helper.freezed.dart';

enum HelperRole { PARAMEDIC, DOCTOR }

/// Data class that saves the necessary information of a Helper.
///
/// This information is necessary to allow a user to play and switch between
/// multiple helpers, while retaining crucial state information of these helpers.
@freezed
class Helper with _$Helper {
  const Helper._();
  const factory Helper({
    /// The ID of the patient a helper has most recently scanned. Null if no patient
    /// has been scanned by the helper yet.
    @Default(null) int? patientID,

    /// The measure a helper is currently implementing. Null if the helper is currently
    /// not implementing a measure.
    @Default(null) RunningMeasure? runningMeasure,

    /// The page of the bottom navigation bar a helper has viewed last.
    required int activePage,

    /// The identifying number of this helper that is used for any helper-specific
    /// API calls.
    required int helperNr,

    /// The role of this helper.
    required HelperRole role,

    /// The entityID of this helper. **Caution:** This is **not** the ID used in helper-specific
    /// API calls. For that, see [helperNr].
    required int entityID,
  }) = _Helper;
}
