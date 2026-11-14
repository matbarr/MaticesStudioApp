import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuentasRecord extends FirestoreRecord {
  CuentasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clienta" field.
  String? _clienta;
  String get clienta => _clienta ?? '';
  bool hasClienta() => _clienta != null;

  // "servicio" field.
  String? _servicio;
  String get servicio => _servicio ?? '';
  bool hasServicio() => _servicio != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "iva" field.
  double? _iva;
  double get iva => _iva ?? 0.0;
  bool hasIva() => _iva != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "pagado" field.
  double? _pagado;
  double get pagado => _pagado ?? 0.0;
  bool hasPagado() => _pagado != null;

  // "saldo" field.
  double? _saldo;
  double get saldo => _saldo ?? 0.0;
  bool hasSaldo() => _saldo != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "cita" field.
  DocumentReference? _cita;
  DocumentReference? get cita => _cita;
  bool hasCita() => _cita != null;

  void _initializeFields() {
    _clienta = snapshotData['clienta'] as String?;
    _servicio = snapshotData['servicio'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _iva = castToType<double>(snapshotData['iva']);
    _total = castToType<double>(snapshotData['total']);
    _pagado = castToType<double>(snapshotData['pagado']);
    _saldo = castToType<double>(snapshotData['saldo']);
    _estado = snapshotData['estado'] as String?;
    _cita = snapshotData['cita'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cuentas');

  static Stream<CuentasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuentasRecord.fromSnapshot(s));

  static Future<CuentasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuentasRecord.fromSnapshot(s));

  static CuentasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CuentasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuentasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuentasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuentasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuentasRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCuentasRecordData({
  String? clienta,
  String? servicio,
  DateTime? fecha,
  double? subtotal,
  double? iva,
  double? total,
  double? pagado,
  double? saldo,
  String? estado,
  DocumentReference? cita,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clienta': clienta,
      'servicio': servicio,
      'fecha': fecha,
      'subtotal': subtotal,
      'iva': iva,
      'total': total,
      'pagado': pagado,
      'saldo': saldo,
      'estado': estado,
      'cita': cita,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuentasRecordDocumentEquality implements Equality<CuentasRecord> {
  const CuentasRecordDocumentEquality();

  @override
  bool equals(CuentasRecord? e1, CuentasRecord? e2) {
    return e1?.clienta == e2?.clienta &&
        e1?.servicio == e2?.servicio &&
        e1?.fecha == e2?.fecha &&
        e1?.subtotal == e2?.subtotal &&
        e1?.iva == e2?.iva &&
        e1?.total == e2?.total &&
        e1?.pagado == e2?.pagado &&
        e1?.saldo == e2?.saldo &&
        e1?.estado == e2?.estado &&
        e1?.cita == e2?.cita;
  }

  @override
  int hash(CuentasRecord? e) => const ListEquality().hash([
        e?.clienta,
        e?.servicio,
        e?.fecha,
        e?.subtotal,
        e?.iva,
        e?.total,
        e?.pagado,
        e?.saldo,
        e?.estado,
        e?.cita
      ]);

  @override
  bool isValidKey(Object? o) => o is CuentasRecord;
}
