import 'package:equatable/equatable.dart';
class homemodel extends Equatable{
  List<homemodeldeaitlas>results=[];
  homemodel.fromJson(Map<String,dynamic>json){
    json['results'].forEach((e){
      results.add(homemodeldeaitlas.fromJson(e));
    });
  }
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class homemodeldeaitlas extends Equatable{

  dynamic id;
  dynamic original_title;
  dynamic publisher;
  dynamic poster_path;
  dynamic vote_average;
  dynamic vote_count;
  dynamic backdrop_path;
  homemodeldeaitlas.fromJson(Map<String,dynamic>json){
    id=json['id'];
    original_title=json['original_title'];
    publisher=json['publisher'];
    poster_path=json['poster_path'];
    backdrop_path=json['backdrop_path'];
    vote_average=json['vote_average'];
    vote_count=json['vote_count'];
  }



  @override
  // TODO: implement props
  List<Object?> get props => [id,original_title,publisher,backdrop_path,poster_path];

  homemodeldeaitlas({
    this.id,
    this.original_title,
    this.publisher,
    this.poster_path,
    this.backdrop_path,
    this.vote_average,
    this.vote_count,
  });
}