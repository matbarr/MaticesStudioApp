import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientasRecord extends FirestoreRecord {
  ClientasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "bloqueado" field.
  bool? _bloqueado;
  bool get bloqueado => _bloqueado ?? false;
  bool hasBloqueado() => _bloqueado != null;

  // "fechaBloqueado" field.
  DateTime? _fechaBloqueado;
  DateTime? get fechaBloqueado => _fechaBloqueado;
  bool hasFechaBloqueado() => _fechaBloqueado != null;

  // "fechaRegistro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "fechaActualizacion" field.
  DateTime? _fechaActualizacion;
  DateTime? get fechaActualizacion => _fechaActualizacion;
  bool hasFechaActualizacion() => _fechaActualizacion != null;

  // "registradoPor" field.
  DocumentReference? _registradoPor;
  DocumentReference? get registradoPor => _registradoPor;
  bool hasRegistradoPor() => _registradoPor != null;

  // "motivoBloqueo" field.
  String? _motivoBloqueo;
  String get motivoBloqueo => _motivoBloqueo ?? '';
  bool hasMotivoBloqueo() => _motivoBloqueo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _activo = snapshotData['activo'] as bool?;
    _apellidos = snapshotData['apellidos'] as String?;
    _correo = snapshotData['correo'] as String?;
    _observaciones = snapshotData['observaciones'] as String?;
    _bloqueado = snapshotData['bloqueado'] as bool?;
    _fechaBloqueado = snapshotData['fechaBloqueado'] as DateTime?;
    _fechaRegistro = snapshotData['fechaRegistro'] as DateTime?;
    _fechaActualizacion = snapshotData['fechaActualizacion'] as DateTime?;
    _registradoPor = snapshotData['registradoPor'] as DocumentReference?;
    _motivoBloqueo = snapshotData['motivoBloqueo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientas');

  static Stream<ClientasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientasRecord.fromSnapshot(s));

  static Future<ClientasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientasRecord.fromSnapshot(s));

  static ClientasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientasRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createClientasRecordData({
  String? nombre,
  String? telefono,
  bool? activo,
  String? apellidos,
  String? correo,
  String? observaciones,
  bool? bloqueado,
  DateTime? fechaBloqueado,
  DateTime? fechaRegistro,
  DateTime? fechaActualizacion,
  DocumentReference? registradoPor,
  String? motivoBloqueo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'telefono': telefono,
      'activo': activo,
      'apellidos': apellidos,
      'correo': correo,
      'observaciones': observaciones,
      'bloqueado': bloqueado,
      'fechaBloqueado': fechaBloqueado,
      'fechaRegistro': fechaRegistro,
      'fechaActualizacion': fechaActualizacion,
      'registradoPor': registradoPor,
      'motivoBloqueo': motivoBloqueo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientasRecordDocumentEquality implements Equality<ClientasRecord> {
  const ClientasRecordDocumentEquality();

  @override
  bool equals(ClientasRecord? e1, ClientasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.telefono == e2?.telefono &&
        e1?.activo == e2?.activo &&
        e1?.apellidos == e2?.apellidos &&
        e1?.correo == e2?.correo &&
        e1?.observaciones == e2?.observaciones &&
        e1?.bloqueado == e2?.bloqueado &&
        e1?.fechaBloqueado == e2?.fechaBloqueado &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.fechaActualizacion == e2?.fechaActualizacion &&
        e1?.registradoPor == e2?.registradoPor &&
        e1?.motivoBloqueo == e2?.motivoBloqueo;
  }

  @override
  int hash(ClientasRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.telefono,
        e?.activo,
        e?.apellidos,
        e?.correo,
        e?.observaciones,
        e?.bloqueado,
        e?.fechaBloqueado,
        e?.fechaRegistro,
        e?.fechaActualizacion,
        e?.registradoPor,
        e?.motivoBloqueo
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientasRecord;
}
