import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
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

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "unidadMedia" field.
  String? _unidadMedia;
  String get unidadMedia => _unidadMedia ?? '';
  bool hasUnidadMedia() => _unidadMedia != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _unidadMedia = snapshotData['unidadMedia'] as String?;
    _activo = snapshotData['activo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createProductosRecordData({
  String? nombre,
  String? descripcion,
  int? cantidad,
  String? unidadMedia,
  bool? activo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'cantidad': cantidad,
      'unidadMedia': unidadMedia,
      'activo': activo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.cantidad == e2?.cantidad &&
        e1?.unidadMedia == e2?.unidadMedia &&
        e1?.activo == e2?.activo;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash(
      [e?.nombre, e?.descripcion, e?.cantidad, e?.unidadMedia, e?.activo]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
