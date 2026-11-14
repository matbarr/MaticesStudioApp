import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiciosCitaRecord extends FirestoreRecord {
  ServiciosCitaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "servicioRef" field.
  DocumentReference? _servicioRef;
  DocumentReference? get servicioRef => _servicioRef;
  bool hasServicioRef() => _servicioRef != null;

  // "nombreServicio" field.
  String? _nombreServicio;
  String get nombreServicio => _nombreServicio ?? '';
  bool hasNombreServicio() => _nombreServicio != null;

  // "precioBase" field.
  double? _precioBase;
  double get precioBase => _precioBase ?? 0.0;
  bool hasPrecioBase() => _precioBase != null;

  // "duracionMinutos" field.
  int? _duracionMinutos;
  int get duracionMinutos => _duracionMinutos ?? 0;
  bool hasDuracionMinutos() => _duracionMinutos != null;

  // "orden" field.
  int? _orden;
  int get orden => _orden ?? 0;
  bool hasOrden() => _orden != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _servicioRef = snapshotData['servicioRef'] as DocumentReference?;
    _nombreServicio = snapshotData['nombreServicio'] as String?;
    _precioBase = castToType<double>(snapshotData['precioBase']);
    _duracionMinutos = castToType<int>(snapshotData['duracionMinutos']);
    _orden = castToType<int>(snapshotData['orden']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('serviciosCita')
          : FirebaseFirestore.instance.collectionGroup('serviciosCita');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('serviciosCita').doc(id);

  static Stream<ServiciosCitaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiciosCitaRecord.fromSnapshot(s));

  static Future<ServiciosCitaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiciosCitaRecord.fromSnapshot(s));

  static ServiciosCitaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiciosCitaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiciosCitaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiciosCitaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiciosCitaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiciosCitaRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createServiciosCitaRecordData({
  DocumentReference? servicioRef,
  String? nombreServicio,
  double? precioBase,
  int? duracionMinutos,
  int? orden,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'servicioRef': servicioRef,
      'nombreServicio': nombreServicio,
      'precioBase': precioBase,
      'duracionMinutos': duracionMinutos,
      'orden': orden,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiciosCitaRecordDocumentEquality
    implements Equality<ServiciosCitaRecord> {
  const ServiciosCitaRecordDocumentEquality();

  @override
  bool equals(ServiciosCitaRecord? e1, ServiciosCitaRecord? e2) {
    return e1?.servicioRef == e2?.servicioRef &&
        e1?.nombreServicio == e2?.nombreServicio &&
        e1?.precioBase == e2?.precioBase &&
        e1?.duracionMinutos == e2?.duracionMinutos &&
        e1?.orden == e2?.orden;
  }

  @override
  int hash(ServiciosCitaRecord? e) => const ListEquality().hash([
        e?.servicioRef,
        e?.nombreServicio,
        e?.precioBase,
        e?.duracionMinutos,
        e?.orden
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiciosCitaRecord;
}
