import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clienteRef" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  bool hasClienteRef() => _clienteRef != null;

  // "empleadoRef" field.
  DocumentReference? _empleadoRef;
  DocumentReference? get empleadoRef => _empleadoRef;
  bool hasEmpleadoRef() => _empleadoRef != null;

  // "fechaInicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fechaFin" field.
  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  bool hasFechaFin() => _fechaFin != null;

  // "duracionTotalMinutos" field.
  int? _duracionTotalMinutos;
  int get duracionTotalMinutos => _duracionTotalMinutos ?? 0;
  bool hasDuracionTotalMinutos() => _duracionTotalMinutos != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "estadoConfirmacion" field.
  String? _estadoConfirmacion;
  String get estadoConfirmacion => _estadoConfirmacion ?? '';
  bool hasEstadoConfirmacion() => _estadoConfirmacion != null;

  // "origenReserva" field.
  String? _origenReserva;
  String get origenReserva => _origenReserva ?? '';
  bool hasOrigenReserva() => _origenReserva != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "subtotalEstimado" field.
  double? _subtotalEstimado;
  double get subtotalEstimado => _subtotalEstimado ?? 0.0;
  bool hasSubtotalEstimado() => _subtotalEstimado != null;

  // "ivaEstimado" field.
  double? _ivaEstimado;
  double get ivaEstimado => _ivaEstimado ?? 0.0;
  bool hasIvaEstimado() => _ivaEstimado != null;

  // "totalEstimado" field.
  double? _totalEstimado;
  double get totalEstimado => _totalEstimado ?? 0.0;
  bool hasTotalEstimado() => _totalEstimado != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "fechaActualizacion" field.
  DateTime? _fechaActualizacion;
  DateTime? get fechaActualizacion => _fechaActualizacion;
  bool hasFechaActualizacion() => _fechaActualizacion != null;

  // "creadoPor" field.
  DocumentReference? _creadoPor;
  DocumentReference? get creadoPor => _creadoPor;
  bool hasCreadoPor() => _creadoPor != null;

  // "fechaCancelacion" field.
  DateTime? _fechaCancelacion;
  DateTime? get fechaCancelacion => _fechaCancelacion;
  bool hasFechaCancelacion() => _fechaCancelacion != null;

  // "motivoCancelacion" field.
  String? _motivoCancelacion;
  String get motivoCancelacion => _motivoCancelacion ?? '';
  bool hasMotivoCancelacion() => _motivoCancelacion != null;

  // "canceladoPor" field.
  DocumentReference? _canceladoPor;
  DocumentReference? get canceladoPor => _canceladoPor;
  bool hasCanceladoPor() => _canceladoPor != null;

  // "nombreServicio" field.
  String? _nombreServicio;
  String get nombreServicio => _nombreServicio ?? '';
  bool hasNombreServicio() => _nombreServicio != null;

  void _initializeFields() {
    _clienteRef = snapshotData['clienteRef'] as DocumentReference?;
    _empleadoRef = snapshotData['empleadoRef'] as DocumentReference?;
    _fechaInicio = snapshotData['fechaInicio'] as DateTime?;
    _fechaFin = snapshotData['fechaFin'] as DateTime?;
    _duracionTotalMinutos =
        castToType<int>(snapshotData['duracionTotalMinutos']);
    _estado = snapshotData['estado'] as String?;
    _estadoConfirmacion = snapshotData['estadoConfirmacion'] as String?;
    _origenReserva = snapshotData['origenReserva'] as String?;
    _observaciones = snapshotData['observaciones'] as String?;
    _subtotalEstimado = castToType<double>(snapshotData['subtotalEstimado']);
    _ivaEstimado = castToType<double>(snapshotData['ivaEstimado']);
    _totalEstimado = castToType<double>(snapshotData['totalEstimado']);
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _fechaActualizacion = snapshotData['fechaActualizacion'] as DateTime?;
    _creadoPor = snapshotData['creadoPor'] as DocumentReference?;
    _fechaCancelacion = snapshotData['fechaCancelacion'] as DateTime?;
    _motivoCancelacion = snapshotData['motivoCancelacion'] as String?;
    _canceladoPor = snapshotData['canceladoPor'] as DocumentReference?;
    _nombreServicio = snapshotData['nombreServicio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCitasRecordData({
  DocumentReference? clienteRef,
  DocumentReference? empleadoRef,
  DateTime? fechaInicio,
  DateTime? fechaFin,
  int? duracionTotalMinutos,
  String? estado,
  String? estadoConfirmacion,
  String? origenReserva,
  String? observaciones,
  double? subtotalEstimado,
  double? ivaEstimado,
  double? totalEstimado,
  DateTime? fechaCreacion,
  DateTime? fechaActualizacion,
  DocumentReference? creadoPor,
  DateTime? fechaCancelacion,
  String? motivoCancelacion,
  DocumentReference? canceladoPor,
  String? nombreServicio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clienteRef': clienteRef,
      'empleadoRef': empleadoRef,
      'fechaInicio': fechaInicio,
      'fechaFin': fechaFin,
      'duracionTotalMinutos': duracionTotalMinutos,
      'estado': estado,
      'estadoConfirmacion': estadoConfirmacion,
      'origenReserva': origenReserva,
      'observaciones': observaciones,
      'subtotalEstimado': subtotalEstimado,
      'ivaEstimado': ivaEstimado,
      'totalEstimado': totalEstimado,
      'fechaCreacion': fechaCreacion,
      'fechaActualizacion': fechaActualizacion,
      'creadoPor': creadoPor,
      'fechaCancelacion': fechaCancelacion,
      'motivoCancelacion': motivoCancelacion,
      'canceladoPor': canceladoPor,
      'nombreServicio': nombreServicio,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.clienteRef == e2?.clienteRef &&
        e1?.empleadoRef == e2?.empleadoRef &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaFin == e2?.fechaFin &&
        e1?.duracionTotalMinutos == e2?.duracionTotalMinutos &&
        e1?.estado == e2?.estado &&
        e1?.estadoConfirmacion == e2?.estadoConfirmacion &&
        e1?.origenReserva == e2?.origenReserva &&
        e1?.observaciones == e2?.observaciones &&
        e1?.subtotalEstimado == e2?.subtotalEstimado &&
        e1?.ivaEstimado == e2?.ivaEstimado &&
        e1?.totalEstimado == e2?.totalEstimado &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.fechaActualizacion == e2?.fechaActualizacion &&
        e1?.creadoPor == e2?.creadoPor &&
        e1?.fechaCancelacion == e2?.fechaCancelacion &&
        e1?.motivoCancelacion == e2?.motivoCancelacion &&
        e1?.canceladoPor == e2?.canceladoPor &&
        e1?.nombreServicio == e2?.nombreServicio;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.clienteRef,
        e?.empleadoRef,
        e?.fechaInicio,
        e?.fechaFin,
        e?.duracionTotalMinutos,
        e?.estado,
        e?.estadoConfirmacion,
        e?.origenReserva,
        e?.observaciones,
        e?.subtotalEstimado,
        e?.ivaEstimado,
        e?.totalEstimado,
        e?.fechaCreacion,
        e?.fechaActualizacion,
        e?.creadoPor,
        e?.fechaCancelacion,
        e?.motivoCancelacion,
        e?.canceladoPor,
        e?.nombreServicio
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
