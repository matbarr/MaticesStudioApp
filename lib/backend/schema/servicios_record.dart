import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiciosRecord extends FirestoreRecord {
  ServiciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "precioBase" field.
  double? _precioBase;
  double get precioBase => _precioBase ?? 0.0;
  bool hasPrecioBase() => _precioBase != null;

  // "duracionMinutos" field.
  int? _duracionMinutos;
  int get duracionMinutos => _duracionMinutos ?? 0;
  bool hasDuracionMinutos() => _duracionMinutos != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "disponibleReserva" field.
  bool? _disponibleReserva;
  bool get disponibleReserva => _disponibleReserva ?? false;
  bool hasDisponibleReserva() => _disponibleReserva != null;

  // "ordenVisualizacion" field.
  int? _ordenVisualizacion;
  int get ordenVisualizacion => _ordenVisualizacion ?? 0;
  bool hasOrdenVisualizacion() => _ordenVisualizacion != null;

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

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _precioBase = castToType<double>(snapshotData['precioBase']);
    _duracionMinutos = castToType<int>(snapshotData['duracionMinutos']);
    _activo = snapshotData['activo'] as bool?;
    _disponibleReserva = snapshotData['disponibleReserva'] as bool?;
    _ordenVisualizacion = castToType<int>(snapshotData['ordenVisualizacion']);
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _fechaActualizacion = snapshotData['fechaActualizacion'] as DateTime?;
    _creadoPor = snapshotData['creadoPor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicios');

  static Stream<ServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiciosRecord.fromSnapshot(s));

  static Future<ServiciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiciosRecord.fromSnapshot(s));

  static ServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiciosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createServiciosRecordData({
  String? nombre,
  String? descripcion,
  String? categoria,
  double? precioBase,
  int? duracionMinutos,
  bool? activo,
  bool? disponibleReserva,
  int? ordenVisualizacion,
  DateTime? fechaCreacion,
  DateTime? fechaActualizacion,
  DocumentReference? creadoPor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'categoria': categoria,
      'precioBase': precioBase,
      'duracionMinutos': duracionMinutos,
      'activo': activo,
      'disponibleReserva': disponibleReserva,
      'ordenVisualizacion': ordenVisualizacion,
      'fechaCreacion': fechaCreacion,
      'fechaActualizacion': fechaActualizacion,
      'creadoPor': creadoPor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiciosRecordDocumentEquality implements Equality<ServiciosRecord> {
  const ServiciosRecordDocumentEquality();

  @override
  bool equals(ServiciosRecord? e1, ServiciosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoria == e2?.categoria &&
        e1?.precioBase == e2?.precioBase &&
        e1?.duracionMinutos == e2?.duracionMinutos &&
        e1?.activo == e2?.activo &&
        e1?.disponibleReserva == e2?.disponibleReserva &&
        e1?.ordenVisualizacion == e2?.ordenVisualizacion &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.fechaActualizacion == e2?.fechaActualizacion &&
        e1?.creadoPor == e2?.creadoPor;
  }

  @override
  int hash(ServiciosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.categoria,
        e?.precioBase,
        e?.duracionMinutos,
        e?.activo,
        e?.disponibleReserva,
        e?.ordenVisualizacion,
        e?.fechaCreacion,
        e?.fechaActualizacion,
        e?.creadoPor
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiciosRecord;
}
