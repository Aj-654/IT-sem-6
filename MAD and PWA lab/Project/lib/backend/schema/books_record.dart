import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BooksRecord extends FirestoreRecord {
  BooksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  bool hasCover() => _cover != null;

  // "AuthorID" field.
  String? _authorID;
  String get authorID => _authorID ?? '';
  bool hasAuthorID() => _authorID != null;

  // "AuthorName" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "chapterref" field.
  DocumentReference? _chapterref;
  DocumentReference? get chapterref => _chapterref;
  bool hasChapterref() => _chapterref != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _cover = snapshotData['Cover'] as String?;
    _authorID = snapshotData['AuthorID'] as String?;
    _authorName = snapshotData['AuthorName'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _chapterref = snapshotData['chapterref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Books');

  static Stream<BooksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BooksRecord.fromSnapshot(s));

  static Future<BooksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BooksRecord.fromSnapshot(s));

  static BooksRecord fromSnapshot(DocumentSnapshot snapshot) => BooksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BooksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BooksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BooksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BooksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBooksRecordData({
  String? title,
  String? description,
  String? cover,
  String? authorID,
  String? authorName,
  DocumentReference? userref,
  DocumentReference? chapterref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Description': description,
      'Cover': cover,
      'AuthorID': authorID,
      'AuthorName': authorName,
      'userref': userref,
      'chapterref': chapterref,
    }.withoutNulls,
  );

  return firestoreData;
}

class BooksRecordDocumentEquality implements Equality<BooksRecord> {
  const BooksRecordDocumentEquality();

  @override
  bool equals(BooksRecord? e1, BooksRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.cover == e2?.cover &&
        e1?.authorID == e2?.authorID &&
        e1?.authorName == e2?.authorName &&
        e1?.userref == e2?.userref &&
        e1?.chapterref == e2?.chapterref;
  }

  @override
  int hash(BooksRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.cover,
        e?.authorID,
        e?.authorName,
        e?.userref,
        e?.chapterref
      ]);

  @override
  bool isValidKey(Object? o) => o is BooksRecord;
}
