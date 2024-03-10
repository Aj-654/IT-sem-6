import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChaptersRecord extends FirestoreRecord {
  ChaptersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chapterNo" field.
  int? _chapterNo;
  int get chapterNo => _chapterNo ?? 0;
  bool hasChapterNo() => _chapterNo != null;

  // "chapterTitle" field.
  String? _chapterTitle;
  String get chapterTitle => _chapterTitle ?? '';
  bool hasChapterTitle() => _chapterTitle != null;

  // "chapterContent" field.
  String? _chapterContent;
  String get chapterContent => _chapterContent ?? '';
  bool hasChapterContent() => _chapterContent != null;

  // "bookID" field.
  String? _bookID;
  String get bookID => _bookID ?? '';
  bool hasBookID() => _bookID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _chapterNo = castToType<int>(snapshotData['chapterNo']);
    _chapterTitle = snapshotData['chapterTitle'] as String?;
    _chapterContent = snapshotData['chapterContent'] as String?;
    _bookID = snapshotData['bookID'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Chapters')
          : FirebaseFirestore.instance.collectionGroup('Chapters');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Chapters').doc(id);

  static Stream<ChaptersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChaptersRecord.fromSnapshot(s));

  static Future<ChaptersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChaptersRecord.fromSnapshot(s));

  static ChaptersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChaptersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChaptersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChaptersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChaptersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChaptersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChaptersRecordData({
  int? chapterNo,
  String? chapterTitle,
  String? chapterContent,
  String? bookID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chapterNo': chapterNo,
      'chapterTitle': chapterTitle,
      'chapterContent': chapterContent,
      'bookID': bookID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChaptersRecordDocumentEquality implements Equality<ChaptersRecord> {
  const ChaptersRecordDocumentEquality();

  @override
  bool equals(ChaptersRecord? e1, ChaptersRecord? e2) {
    return e1?.chapterNo == e2?.chapterNo &&
        e1?.chapterTitle == e2?.chapterTitle &&
        e1?.chapterContent == e2?.chapterContent &&
        e1?.bookID == e2?.bookID;
  }

  @override
  int hash(ChaptersRecord? e) => const ListEquality()
      .hash([e?.chapterNo, e?.chapterTitle, e?.chapterContent, e?.bookID]);

  @override
  bool isValidKey(Object? o) => o is ChaptersRecord;
}
