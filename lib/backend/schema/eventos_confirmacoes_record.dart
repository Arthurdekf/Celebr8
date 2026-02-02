import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosConfirmacoesRecord extends FirestoreRecord {
  EventosConfirmacoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "evento" field.
  DocumentReference? _evento;
  DocumentReference? get evento => _evento;
  bool hasEvento() => _evento != null;

  // "hora_confirmacao" field.
  DateTime? _horaConfirmacao;
  DateTime? get horaConfirmacao => _horaConfirmacao;
  bool hasHoraConfirmacao() => _horaConfirmacao != null;

  // "data_evento" field.
  DateTime? _dataEvento;
  DateTime? get dataEvento => _dataEvento;
  bool hasDataEvento() => _dataEvento != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _evento = snapshotData['evento'] as DocumentReference?;
    _horaConfirmacao = snapshotData['hora_confirmacao'] as DateTime?;
    _dataEvento = snapshotData['data_evento'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventos_confirmacoes');

  static Stream<EventosConfirmacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventosConfirmacoesRecord.fromSnapshot(s));

  static Future<EventosConfirmacoesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EventosConfirmacoesRecord.fromSnapshot(s));

  static EventosConfirmacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventosConfirmacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventosConfirmacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventosConfirmacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventosConfirmacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventosConfirmacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventosConfirmacoesRecordData({
  DocumentReference? user,
  DocumentReference? evento,
  DateTime? horaConfirmacao,
  DateTime? dataEvento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'evento': evento,
      'hora_confirmacao': horaConfirmacao,
      'data_evento': dataEvento,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventosConfirmacoesRecordDocumentEquality
    implements Equality<EventosConfirmacoesRecord> {
  const EventosConfirmacoesRecordDocumentEquality();

  @override
  bool equals(EventosConfirmacoesRecord? e1, EventosConfirmacoesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.evento == e2?.evento &&
        e1?.horaConfirmacao == e2?.horaConfirmacao &&
        e1?.dataEvento == e2?.dataEvento;
  }

  @override
  int hash(EventosConfirmacoesRecord? e) => const ListEquality()
      .hash([e?.user, e?.evento, e?.horaConfirmacao, e?.dataEvento]);

  @override
  bool isValidKey(Object? o) => o is EventosConfirmacoesRecord;
}
