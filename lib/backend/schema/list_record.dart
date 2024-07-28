import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListRecord extends FirestoreRecord {
  ListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "dono" field.
  String? _dono;
  String get dono => _dono ?? '';
  bool hasDono() => _dono != null;

  void _initializeFields() {
    _data = snapshotData['data'] as DateTime?;
    _nome = snapshotData['nome'] as String?;
    _dono = snapshotData['dono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list');

  static Stream<ListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListRecord.fromSnapshot(s));

  static Future<ListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListRecord.fromSnapshot(s));

  static ListRecord fromSnapshot(DocumentSnapshot snapshot) => ListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListRecordData({
  DateTime? data,
  String? nome,
  String? dono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data': data,
      'nome': nome,
      'dono': dono,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListRecordDocumentEquality implements Equality<ListRecord> {
  const ListRecordDocumentEquality();

  @override
  bool equals(ListRecord? e1, ListRecord? e2) {
    return e1?.data == e2?.data && e1?.nome == e2?.nome && e1?.dono == e2?.dono;
  }

  @override
  int hash(ListRecord? e) =>
      const ListEquality().hash([e?.data, e?.nome, e?.dono]);

  @override
  bool isValidKey(Object? o) => o is ListRecord;
}
