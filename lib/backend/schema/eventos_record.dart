import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosRecord extends FirestoreRecord {
  EventosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "url_link" field.
  String? _urlLink;
  String get urlLink => _urlLink ?? '';
  bool hasUrlLink() => _urlLink != null;

  // "preco" field.
  String? _preco;
  String get preco => _preco ?? '';
  bool hasPreco() => _preco != null;

  // "data_inicio" field.
  DateTime? _dataInicio;
  DateTime? get dataInicio => _dataInicio;
  bool hasDataInicio() => _dataInicio != null;

  // "data_fim" field.
  DateTime? _dataFim;
  DateTime? get dataFim => _dataFim;
  bool hasDataFim() => _dataFim != null;

  // "divulgador" field.
  DocumentReference? _divulgador;
  DocumentReference? get divulgador => _divulgador;
  bool hasDivulgador() => _divulgador != null;

  // "hora_criacao" field.
  DateTime? _horaCriacao;
  DateTime? get horaCriacao => _horaCriacao;
  bool hasHoraCriacao() => _horaCriacao != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "enderecoCompleto" field.
  String? _enderecoCompleto;
  String get enderecoCompleto => _enderecoCompleto ?? '';
  bool hasEnderecoCompleto() => _enderecoCompleto != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "categorias" field.
  List<String>? _categorias;
  List<String> get categorias => _categorias ?? const [];
  bool hasCategorias() => _categorias != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "usuariosConfirmados" field.
  List<DocumentReference>? _usuariosConfirmados;
  List<DocumentReference> get usuariosConfirmados =>
      _usuariosConfirmados ?? const [];
  bool hasUsuariosConfirmados() => _usuariosConfirmados != null;

  void _initializeFields() {
    _foto = snapshotData['foto'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _urlLink = snapshotData['url_link'] as String?;
    _preco = snapshotData['preco'] as String?;
    _dataInicio = snapshotData['data_inicio'] as DateTime?;
    _dataFim = snapshotData['data_fim'] as DateTime?;
    _divulgador = snapshotData['divulgador'] as DocumentReference?;
    _horaCriacao = snapshotData['hora_criacao'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _enderecoCompleto = snapshotData['enderecoCompleto'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _categorias = getDataList(snapshotData['categorias']);
    _estado = snapshotData['estado'] as String?;
    _usuariosConfirmados = getDataList(snapshotData['usuariosConfirmados']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventos');

  static Stream<EventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventosRecord.fromSnapshot(s));

  static Future<EventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventosRecord.fromSnapshot(s));

  static EventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventosRecordData({
  String? foto,
  String? titulo,
  String? descricao,
  String? urlLink,
  String? preco,
  DateTime? dataInicio,
  DateTime? dataFim,
  DocumentReference? divulgador,
  DateTime? horaCriacao,
  LatLng? location,
  String? enderecoCompleto,
  String? cidade,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foto': foto,
      'titulo': titulo,
      'descricao': descricao,
      'url_link': urlLink,
      'preco': preco,
      'data_inicio': dataInicio,
      'data_fim': dataFim,
      'divulgador': divulgador,
      'hora_criacao': horaCriacao,
      'location': location,
      'enderecoCompleto': enderecoCompleto,
      'cidade': cidade,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventosRecordDocumentEquality implements Equality<EventosRecord> {
  const EventosRecordDocumentEquality();

  @override
  bool equals(EventosRecord? e1, EventosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.foto == e2?.foto &&
        e1?.titulo == e2?.titulo &&
        e1?.descricao == e2?.descricao &&
        e1?.urlLink == e2?.urlLink &&
        e1?.preco == e2?.preco &&
        e1?.dataInicio == e2?.dataInicio &&
        e1?.dataFim == e2?.dataFim &&
        e1?.divulgador == e2?.divulgador &&
        e1?.horaCriacao == e2?.horaCriacao &&
        e1?.location == e2?.location &&
        e1?.enderecoCompleto == e2?.enderecoCompleto &&
        e1?.cidade == e2?.cidade &&
        listEquality.equals(e1?.categorias, e2?.categorias) &&
        e1?.estado == e2?.estado &&
        listEquality.equals(e1?.usuariosConfirmados, e2?.usuariosConfirmados);
  }

  @override
  int hash(EventosRecord? e) => const ListEquality().hash([
        e?.foto,
        e?.titulo,
        e?.descricao,
        e?.urlLink,
        e?.preco,
        e?.dataInicio,
        e?.dataFim,
        e?.divulgador,
        e?.horaCriacao,
        e?.location,
        e?.enderecoCompleto,
        e?.cidade,
        e?.categorias,
        e?.estado,
        e?.usuariosConfirmados
      ]);

  @override
  bool isValidKey(Object? o) => o is EventosRecord;
}
