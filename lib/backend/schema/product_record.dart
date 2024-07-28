import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "price1" field.
  double? _price1;
  double get price1 => _price1 ?? 0.0;
  bool hasPrice1() => _price1 != null;

  // "mercado1" field.
  String? _mercado1;
  String get mercado1 => _mercado1 ?? '';
  bool hasMercado1() => _mercado1 != null;

  // "price2" field.
  double? _price2;
  double get price2 => _price2 ?? 0.0;
  bool hasPrice2() => _price2 != null;

  // "mercado2" field.
  String? _mercado2;
  String get mercado2 => _mercado2 ?? '';
  bool hasMercado2() => _mercado2 != null;

  // "price3" field.
  double? _price3;
  double get price3 => _price3 ?? 0.0;
  bool hasPrice3() => _price3 != null;

  // "mercado3" field.
  String? _mercado3;
  String get mercado3 => _mercado3 ?? '';
  bool hasMercado3() => _mercado3 != null;

  // "list" field.
  String? _list;
  String get list => _list ?? '';
  bool hasList() => _list != null;

  // "check" field.
  bool? _check;
  bool get check => _check ?? false;
  bool hasCheck() => _check != null;

  // "dono" field.
  String? _dono;
  String get dono => _dono ?? '';
  bool hasDono() => _dono != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _price1 = castToType<double>(snapshotData['price1']);
    _mercado1 = snapshotData['mercado1'] as String?;
    _price2 = castToType<double>(snapshotData['price2']);
    _mercado2 = snapshotData['mercado2'] as String?;
    _price3 = castToType<double>(snapshotData['price3']);
    _mercado3 = snapshotData['mercado3'] as String?;
    _list = snapshotData['list'] as String?;
    _check = snapshotData['check'] as bool?;
    _dono = snapshotData['dono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  String? name,
  DateTime? createdAt,
  DateTime? modifiedAt,
  double? price1,
  String? mercado1,
  double? price2,
  String? mercado2,
  double? price3,
  String? mercado3,
  String? list,
  bool? check,
  String? dono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'price1': price1,
      'mercado1': mercado1,
      'price2': price2,
      'mercado2': mercado2,
      'price3': price3,
      'mercado3': mercado3,
      'list': list,
      'check': check,
      'dono': dono,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.price1 == e2?.price1 &&
        e1?.mercado1 == e2?.mercado1 &&
        e1?.price2 == e2?.price2 &&
        e1?.mercado2 == e2?.mercado2 &&
        e1?.price3 == e2?.price3 &&
        e1?.mercado3 == e2?.mercado3 &&
        e1?.list == e2?.list &&
        e1?.check == e2?.check &&
        e1?.dono == e2?.dono;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.name,
        e?.createdAt,
        e?.modifiedAt,
        e?.price1,
        e?.mercado1,
        e?.price2,
        e?.mercado2,
        e?.price3,
        e?.mercado3,
        e?.list,
        e?.check,
        e?.dono
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
