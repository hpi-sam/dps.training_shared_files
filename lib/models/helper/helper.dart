// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:dps.training_shared_files/models/inventory/inventory.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';
import 'package:dps.training_shared_files/models/running_measure/running_measure.dart';

part 'helper.freezed.dart';

enum HelperRole { PARAMEDIC, DOCTOR }

/// Data class that saves the necessary information of a Helper.
///
/// This information is necessary to allow a user to play and switch between
/// multiple helpers, while retaining crucial state information of these helpers.
@freezed
class Helper with _$Helper {
  const factory Helper({
    /// The ID of the patient a helper has most recently scanned. Null if no patient
    /// has been scanned by the helper yet.
    String? patientDpsCode,

    /// The measure a helper is currently implementing. Null if the helper is currently
    /// not implementing a measure.
    RunningMeasure? runningMeasure,

    /// The inventory of the helper
    Inventory? inventory,

    /// The instance of the last scanned patient
    Patient? patient,

    /// The identifying number of this helper that is used for any helper-specific
    /// API calls.
    required int helperNr,

    /// The role of this helper.
    required HelperRole role,

    /// The entityID of this helper that is displayed in its QR-Code. **Caution:** This is **not** the ID used in helper-specific
    /// API calls. For that, see [helperNr].

    int? entityID,
  }) = _Helper;
}
