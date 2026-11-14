import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BloqueosRecord extends FirestoreRecord {
  BloqueosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  // "alcance" field.
  String? _alcance;
  String get alcance => _alcance ?? '';
  bool hasAlcance() => _alcance != null;

  // "inicio" field.
  DateTime? _inicio;
  DateTime? get inicio => _inicio;
  bool hasInicio() => _inicio != null;

  // "fin" field.
  DateTime? _fin;
  DateTime? get fin => _fin;
  bool hasFin() => _fin != null;

  // "personal" field.
  DocumentReference? _personal;
  DocumentReference? get personal => _personal;
  bool hasPersonal() => _personal != null;

  void _initializeFields() {
    _tipo = snapshotData['tipo'] as String?;
    _motivo = snapshotData['motivo'] as String?;
    _alcance = snapshotData['alcance'] as String?;
    _inicio = snapshotData['inicio'] as DateTime?;
    _fin = snapshotData['fin'] as DateTime?;
    _personal = snapshotData['personal'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bloqueos');

  static Stream<BloqueosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloqueosRecord.fromSnapshot(s));

  static Future<BloqueosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloqueosRecord.fromSnapshot(s));

  static BloqueosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BloqueosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloqueosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloqueosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloqueosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BloqueosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createBloqueosRecordData({
  String? tipo,
  String? motivo,
  String? alcance,
  DateTime? inicio,
  DateTime? fin,
  DocumentReference? personal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo': tipo,
      'motivo': motivo,
      'alcance': alcance,
      'inicio': inicio,
      'fin': fin,
      'personal': personal,
    }.withoutNulls,
  );

  return firestoreData;
}

class BloqueosRecordDocumentEquality implements Equality<BloqueosRecord> {
  const BloqueosRecordDocumentEquality();

  @override
  bool equals(BloqueosRecord? e1, BloqueosRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.motivo == e2?.motivo &&
        e1?.alcance == e2?.alcance &&
        e1?.inicio == e2?.inicio &&
        e1?.fin == e2?.fin &&
        e1?.personal == e2?.personal;
  }

  @override
  int hash(BloqueosRecord? e) => const ListEquality()
      .hash([e?.tipo, e?.motivo, e?.alcance, e?.inicio, e?.fin, e?.personal]);

  @override
  bool isValidKey(Object? o) => o is BloqueosRecord;
}
