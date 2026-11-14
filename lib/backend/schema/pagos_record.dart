import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosRecord extends FirestoreRecord {
  PagosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "metodo" field.
  String? _metodo;
  String get metodo => _metodo ?? '';
  bool hasMetodo() => _metodo != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "cuenta" field.
  DocumentReference? _cuenta;
  DocumentReference? get cuenta => _cuenta;
  bool hasCuenta() => _cuenta != null;

  void _initializeFields() {
    _monto = castToType<double>(snapshotData['monto']);
    _metodo = snapshotData['metodo'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _cuenta = snapshotData['cuenta'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pagos');

  static Stream<PagosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagosRecord.fromSnapshot(s));

  static Future<PagosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagosRecord.fromSnapshot(s));

  static PagosRecord fromSnapshot(DocumentSnapshot snapshot) => PagosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createPagosRecordData({
  double? monto,
  String? metodo,
  DateTime? fecha,
  DocumentReference? cuenta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'monto': monto,
      'metodo': metodo,
      'fecha': fecha,
      'cuenta': cuenta,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagosRecordDocumentEquality implements Equality<PagosRecord> {
  const PagosRecordDocumentEquality();

  @override
  bool equals(PagosRecord? e1, PagosRecord? e2) {
    return e1?.monto == e2?.monto &&
        e1?.metodo == e2?.metodo &&
        e1?.fecha == e2?.fecha &&
        e1?.cuenta == e2?.cuenta;
  }

  @override
  int hash(PagosRecord? e) =>
      const ListEquality().hash([e?.monto, e?.metodo, e?.fecha, e?.cuenta]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
