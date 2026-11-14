import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorariosSalonRecord extends FirestoreRecord {
  HorariosSalonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dia" field.
  String? _dia;
  String get dia => _dia ?? '';
  bool hasDia() => _dia != null;

  // "orden" field.
  int? _orden;
  int get orden => _orden ?? 0;
  bool hasOrden() => _orden != null;

  // "abierto" field.
  bool? _abierto;
  bool get abierto => _abierto ?? false;
  bool hasAbierto() => _abierto != null;

  // "apertura" field.
  String? _apertura;
  String get apertura => _apertura ?? '';
  bool hasApertura() => _apertura != null;

  // "cierre" field.
  String? _cierre;
  String get cierre => _cierre ?? '';
  bool hasCierre() => _cierre != null;

  void _initializeFields() {
    _dia = snapshotData['dia'] as String?;
    _orden = castToType<int>(snapshotData['orden']);
    _abierto = snapshotData['abierto'] as bool?;
    _apertura = snapshotData['apertura'] as String?;
    _cierre = snapshotData['cierre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horarios_salon');

  static Stream<HorariosSalonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorariosSalonRecord.fromSnapshot(s));

  static Future<HorariosSalonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorariosSalonRecord.fromSnapshot(s));

  static HorariosSalonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorariosSalonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorariosSalonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorariosSalonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorariosSalonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorariosSalonRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createHorariosSalonRecordData({
  String? dia,
  int? orden,
  bool? abierto,
  String? apertura,
  String? cierre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dia': dia,
      'orden': orden,
      'abierto': abierto,
      'apertura': apertura,
      'cierre': cierre,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorariosSalonRecordDocumentEquality
    implements Equality<HorariosSalonRecord> {
  const HorariosSalonRecordDocumentEquality();

  @override
  bool equals(HorariosSalonRecord? e1, HorariosSalonRecord? e2) {
    return e1?.dia == e2?.dia &&
        e1?.orden == e2?.orden &&
        e1?.abierto == e2?.abierto &&
        e1?.apertura == e2?.apertura &&
        e1?.cierre == e2?.cierre;
  }

  @override
  int hash(HorariosSalonRecord? e) => const ListEquality()
      .hash([e?.dia, e?.orden, e?.abierto, e?.apertura, e?.cierre]);

  @override
  bool isValidKey(Object? o) => o is HorariosSalonRecord;
}
