import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class NewsArticlesDataSource {
  Stream<QuerySnapshot> getNewsArticlesStream();
}

@LazySingleton(as: NewsArticlesDataSource)
class NewsArticlesFirestoreDataSourceImpl implements NewsArticlesDataSource {
  final FirebaseFirestore _firestore;

  NewsArticlesFirestoreDataSourceImpl(this._firestore);

  @override
  Stream<QuerySnapshot> getNewsArticlesStream() {
    return _firestore.collection('news_articles').snapshots();
  }
}
