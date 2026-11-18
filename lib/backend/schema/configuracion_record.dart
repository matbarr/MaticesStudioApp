import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfiguracionRecord extends FirestoreRecord {
  ConfiguracionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "minimoInventario" field.
  int? _minimoInventario;
  int get minimoInventario => _minimoInventario ?? 0;
  bool hasMinimoInventario() => _minimoInventario != null;

  void _initializeFields() {
    _minimoInventario = castToType<int>(snapshotData['minimoInventario']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('configuracion');

  static Stream<ConfiguracionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConfiguracionRecord.fromSnapshot(s));

  static Future<ConfiguracionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConfiguracionRecord.fromSnapshot(s));

  static ConfiguracionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConfiguracionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConfiguracionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConfiguracionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConfiguracionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConfiguracionRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createConfiguracionRecordData({
  int? minimoInventario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'minimoInventario': minimoInventario,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConfiguracionRecordDocumentEquality
    implements Equality<ConfiguracionRecord> {
  const ConfiguracionRecordDocumentEquality();

  @override
  bool equals(ConfiguracionRecord? e1, ConfiguracionRecord? e2) {
    return e1?.minimoInventario == e2?.minimoInventario;
  }

  @override
  int hash(ConfiguracionRecord? e) =>
      const ListEquality().hash([e?.minimoInventario]);

  @override
  bool isValidKey(Object? o) => o is ConfiguracionRecord;
}
