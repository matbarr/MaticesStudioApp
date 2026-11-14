import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorariosPersonalRecord extends FirestoreRecord {
  HorariosPersonalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

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
    _personal = snapshotData['personal'] as DocumentReference?;
    _dia = snapshotData['dia'] as String?;
    _orden = castToType<int>(snapshotData['orden']);
    _abierto = snapshotData['abierto'] as bool?;
    _apertura = snapshotData['apertura'] as String?;
    _cierre = snapshotData['cierre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horarios_personal');

  static Stream<HorariosPersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorariosPersonalRecord.fromSnapshot(s));

  static Future<HorariosPersonalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HorariosPersonalRecord.fromSnapshot(s));

  static HorariosPersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorariosPersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorariosPersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorariosPersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorariosPersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorariosPersonalRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createHorariosPersonalRecordData({
  DocumentReference? personal,
  String? dia,
  int? orden,
  bool? abierto,
  String? apertura,
  String? cierre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'personal': personal,
      'dia': dia,
      'orden': orden,
      'abierto': abierto,
      'apertura': apertura,
      'cierre': cierre,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorariosPersonalRecordDocumentEquality
    implements Equality<HorariosPersonalRecord> {
  const HorariosPersonalRecordDocumentEquality();

  @override
  bool equals(HorariosPersonalRecord? e1, HorariosPersonalRecord? e2) {
    return e1?.personal == e2?.personal &&
        e1?.dia == e2?.dia &&
        e1?.orden == e2?.orden &&
        e1?.abierto == e2?.abierto &&
        e1?.apertura == e2?.apertura &&
        e1?.cierre == e2?.cierre;
  }

  @override
  int hash(HorariosPersonalRecord? e) => const ListEquality().hash(
      [e?.personal, e?.dia, e?.orden, e?.abierto, e?.apertura, e?.cierre]);

  @override
  bool isValidKey(Object? o) => o is HorariosPersonalRecord;
}
