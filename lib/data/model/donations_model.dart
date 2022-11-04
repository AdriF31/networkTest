import 'dart:convert';
/// status : true
/// message : "List Donation"
/// data : {"current_page":1,"data":[{"id":31,"title":"Ikhsan Heriyawan","description":"<p>ave problems with count posts a cateory and show them. I want show categories in sidbar and count of them base on posts.</p><p>for example.</p><ul><li>num=count of posts that have medical is 8</li><li>medical=8</li></ul><p>My post table is \"ebooks\" My category table is \"categories\"</p><p><br>&nbsp;</p>","total_budget":"10000000.00","image":"img/donations/aoAw80uBUolnqZ6FA5qnKGwZgM2FFlMSPoDw4HXE.jpg","category":"Bencana Alam","created_at":"2022-10-22","updated_at":"2022-10-22","total_collected":0,"transactions":[]},{"id":30,"title":"Rerum est recusandae nam culpa.","description":"Et molestias animi quam sit. Vero nobis optio dolorum sit dolor expedita est. Provident iste optio qui. Omnis atque fugiat molestiae.","total_budget":"9976768.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":29,"title":"Ut voluptatibus quas quis sunt et voluptatum nobis quia.","description":"Necessitatibus cupiditate cupiditate hic expedita dolorem harum. Qui quibusdam et corrupti repellat ea. Ut dolorum dolor omnis adipisci rerum. Quisquam aspernatur ut officiis consequatur eos.","total_budget":"3575259.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":22,"title":"Natus esse assumenda sapiente harum sint.","description":"Sunt officiis sunt quas aliquam earum earum molestias quidem. Vitae totam officiis quas dolor mollitia minima. Eligendi placeat dolorem voluptatem tenetur.","total_budget":"636934.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":17,"title":"Fuga sint ut deleniti eveniet sed excepturi est nihil.","description":"Qui qui ut iste sed nostrum ipsum ipsam. Mollitia quo sint voluptatum illo error aperiam. Impedit fugiat cumque molestias quaerat. Incidunt molestias sit labore qui.","total_budget":"7011049.00","image":"img/donations/default.jpg","category":"Disabilitas","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":21,"title":"Facilis dolore quo rerum sed autem aut exercitationem tenetur.","description":"Aliquid accusantium amet quod doloribus perferendis. Praesentium ipsa ut ipsam libero. Saepe et tempora beatae.","total_budget":"4539069.00","image":"img/donations/default.jpg","category":"Yatim Piatu","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":20,"title":"Tenetur dignissimos accusamus quidem velit.","description":"Sed iusto accusamus quam quis. Nesciunt nemo sequi quod repellendus aut vero et. Consequuntur et voluptatibus et unde sit culpa. Tempore ipsum ratione veniam et porro non harum. Quia nulla ducimus iste ut eos.","total_budget":"2743283.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":19,"title":"Sapiente ducimus similique esse dignissimos laboriosam culpa.","description":"Veniam aliquam soluta vero nisi dolores perferendis non. Praesentium ut et et dolores error qui. Ratione ut architecto sint sunt quia et numquam fugit. Aut sunt labore illo non sunt maiores.","total_budget":"9103544.00","image":"img/donations/default.jpg","category":"Disabilitas","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":18,"title":"Ut totam non sint quasi magni aspernatur.","description":"Voluptas voluptate ipsa modi est. Quae accusamus itaque sit sed tenetur laboriosam labore tempora. Quaerat omnis necessitatibus quam odit sint.","total_budget":"2449205.00","image":"img/donations/default.jpg","category":"Disabilitas","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":16,"title":"Quisquam dignissimos officiis cum est ducimus.","description":"Harum omnis culpa aliquid eos sunt eligendi. Quia quos possimus consequatur ex necessitatibus. Fugiat non atque repellendus exercitationem eveniet reiciendis.","total_budget":"3723390.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]}],"first_page_url":"http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations?page=1","from":1,"last_page":4,"last_page_url":"http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations?page=4","next_page_url":"http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations?page=2","path":"http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations","per_page":10,"prev_page_url":null,"to":10,"total":31}

DonationsModel donationsModelFromJson(String str) => DonationsModel.fromJson(json.decode(str));
String donationsModelToJson(DonationsModel data) => json.encode(data.toJson());
class DonationsModel {
  DonationsModel({
      bool? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  DonationsModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
DonationsModel copyWith({  bool? status,
  String? message,
  Data? data,
}) => DonationsModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// current_page : 1
/// data : [{"id":31,"title":"Ikhsan Heriyawan","description":"<p>ave problems with count posts a cateory and show them. I want show categories in sidbar and count of them base on posts.</p><p>for example.</p><ul><li>num=count of posts that have medical is 8</li><li>medical=8</li></ul><p>My post table is \"ebooks\" My category table is \"categories\"</p><p><br>&nbsp;</p>","total_budget":"10000000.00","image":"img/donations/aoAw80uBUolnqZ6FA5qnKGwZgM2FFlMSPoDw4HXE.jpg","category":"Bencana Alam","created_at":"2022-10-22","updated_at":"2022-10-22","total_collected":0,"transactions":[]},{"id":30,"title":"Rerum est recusandae nam culpa.","description":"Et molestias animi quam sit. Vero nobis optio dolorum sit dolor expedita est. Provident iste optio qui. Omnis atque fugiat molestiae.","total_budget":"9976768.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":29,"title":"Ut voluptatibus quas quis sunt et voluptatum nobis quia.","description":"Necessitatibus cupiditate cupiditate hic expedita dolorem harum. Qui quibusdam et corrupti repellat ea. Ut dolorum dolor omnis adipisci rerum. Quisquam aspernatur ut officiis consequatur eos.","total_budget":"3575259.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":22,"title":"Natus esse assumenda sapiente harum sint.","description":"Sunt officiis sunt quas aliquam earum earum molestias quidem. Vitae totam officiis quas dolor mollitia minima. Eligendi placeat dolorem voluptatem tenetur.","total_budget":"636934.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":17,"title":"Fuga sint ut deleniti eveniet sed excepturi est nihil.","description":"Qui qui ut iste sed nostrum ipsum ipsam. Mollitia quo sint voluptatum illo error aperiam. Impedit fugiat cumque molestias quaerat. Incidunt molestias sit labore qui.","total_budget":"7011049.00","image":"img/donations/default.jpg","category":"Disabilitas","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":21,"title":"Facilis dolore quo rerum sed autem aut exercitationem tenetur.","description":"Aliquid accusantium amet quod doloribus perferendis. Praesentium ipsa ut ipsam libero. Saepe et tempora beatae.","total_budget":"4539069.00","image":"img/donations/default.jpg","category":"Yatim Piatu","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":20,"title":"Tenetur dignissimos accusamus quidem velit.","description":"Sed iusto accusamus quam quis. Nesciunt nemo sequi quod repellendus aut vero et. Consequuntur et voluptatibus et unde sit culpa. Tempore ipsum ratione veniam et porro non harum. Quia nulla ducimus iste ut eos.","total_budget":"2743283.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":19,"title":"Sapiente ducimus similique esse dignissimos laboriosam culpa.","description":"Veniam aliquam soluta vero nisi dolores perferendis non. Praesentium ut et et dolores error qui. Ratione ut architecto sint sunt quia et numquam fugit. Aut sunt labore illo non sunt maiores.","total_budget":"9103544.00","image":"img/donations/default.jpg","category":"Disabilitas","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":18,"title":"Ut totam non sint quasi magni aspernatur.","description":"Voluptas voluptate ipsa modi est. Quae accusamus itaque sit sed tenetur laboriosam labore tempora. Quaerat omnis necessitatibus quam odit sint.","total_budget":"2449205.00","image":"img/donations/default.jpg","category":"Disabilitas","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]},{"id":16,"title":"Quisquam dignissimos officiis cum est ducimus.","description":"Harum omnis culpa aliquid eos sunt eligendi. Quia quos possimus consequatur ex necessitatibus. Fugiat non atque repellendus exercitationem eveniet reiciendis.","total_budget":"3723390.00","image":"img/donations/default.jpg","category":"Bencana Alam","created_at":"2022-10-21","updated_at":"2022-10-21","total_collected":0,"transactions":[]}]
/// first_page_url : "http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations?page=1"
/// from : 1
/// last_page : 4
/// last_page_url : "http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations?page=4"
/// next_page_url : "http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations?page=2"
/// path : "http://f24a-2001-448a-2022-f8f6-a8a8-1adb-61e7-639f.ngrok.io/api/v1/donations"
/// per_page : 10
/// prev_page_url : null
/// to : 10
/// total : 31

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? currentPage, 
      List<Data2>? data,
      String? firstPageUrl, 
      int? from, 
      int? lastPage, 
      String? lastPageUrl, 
      String? nextPageUrl, 
      String? path, 
      int? perPage, 
      dynamic prevPageUrl, 
      int? to, 
      int? total,}){
    _currentPage = currentPage;
    _data = data;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
}

  Data.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data2.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }
  int? _currentPage;
  List<Data2>? _data;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  String? _nextPageUrl;
  String? _path;
  int? _perPage;
  dynamic _prevPageUrl;
  int? _to;
  int? _total;
Data copyWith({  int? currentPage,
  List<Data2>? data,
  String? firstPageUrl,
  int? from,
  int? lastPage,
  String? lastPageUrl,
  String? nextPageUrl,
  String? path,
  int? perPage,
  dynamic prevPageUrl,
  int? to,
  int? total,
}) => Data(  currentPage: currentPage ?? _currentPage,
  data: data ?? _data,
  firstPageUrl: firstPageUrl ?? _firstPageUrl,
  from: from ?? _from,
  lastPage: lastPage ?? _lastPage,
  lastPageUrl: lastPageUrl ?? _lastPageUrl,
  nextPageUrl: nextPageUrl ?? _nextPageUrl,
  path: path ?? _path,
  perPage: perPage ?? _perPage,
  prevPageUrl: prevPageUrl ?? _prevPageUrl,
  to: to ?? _to,
  total: total ?? _total,
);
  int? get currentPage => _currentPage;
  List<Data2>? get data => _data;
  String? get firstPageUrl => _firstPageUrl;
  int? get from => _from;
  int? get lastPage => _lastPage;
  String? get lastPageUrl => _lastPageUrl;
  String? get nextPageUrl => _nextPageUrl;
  String? get path => _path;
  int? get perPage => _perPage;
  dynamic get prevPageUrl => _prevPageUrl;
  int? get to => _to;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}

/// id : 31
/// title : "Ikhsan Heriyawan"
/// description : "<p>ave problems with count posts a cateory and show them. I want show categories in sidbar and count of them base on posts.</p><p>for example.</p><ul><li>num=count of posts that have medical is 8</li><li>medical=8</li></ul><p>My post table is \"ebooks\" My category table is \"categories\"</p><p><br>&nbsp;</p>"
/// total_budget : "10000000.00"
/// image : "img/donations/aoAw80uBUolnqZ6FA5qnKGwZgM2FFlMSPoDw4HXE.jpg"
/// category : "Bencana Alam"
/// created_at : "2022-10-22"
/// updated_at : "2022-10-22"
/// total_collected : 0
/// transactions : []

Data2 data2FromJson(String str) => Data2.fromJson(json.decode(str));
String data2ToJson(Data2 data) => json.encode(data.toJson());
class Data2 {
  Data2({
      int? id, 
      String? title, 
      String? description, 
      String? totalBudget, 
      String? image, 
      String? category, 
      String? createdAt, 
      String? updatedAt, 
      int? totalCollected, 
      List<dynamic>? transactions,}){
    _id = id;
    _title = title;
    _description = description;
    _totalBudget = totalBudget;
    _image = image;
    _category = category;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _totalCollected = totalCollected;
    _transactions = transactions;
}

  Data2.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _totalBudget = json['total_budget'];
    _image = json['image'];
    _category = json['category'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _totalCollected = json['total_collected'];
  }
  int? _id;
  String? _title;
  String? _description;
  String? _totalBudget;
  String? _image;
  String? _category;
  String? _createdAt;
  String? _updatedAt;
  int? _totalCollected;
  List<dynamic>? _transactions;
Data2 copyWith({  int? id,
  String? title,
  String? description,
  String? totalBudget,
  String? image,
  String? category,
  String? createdAt,
  String? updatedAt,
  int? totalCollected,
  List<dynamic>? transactions,
}) => Data2(  id: id ?? _id,
  title: title ?? _title,
  description: description ?? _description,
  totalBudget: totalBudget ?? _totalBudget,
  image: image ?? _image,
  category: category ?? _category,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  totalCollected: totalCollected ?? _totalCollected,
  transactions: transactions ?? _transactions,
);
  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get totalBudget => _totalBudget;
  String? get image => _image;
  String? get category => _category;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  int? get totalCollected => _totalCollected;
  List<dynamic>? get transactions => _transactions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['total_budget'] = _totalBudget;
    map['image'] = _image;
    map['category'] = _category;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['total_collected'] = _totalCollected;
    if (_transactions != null) {
      map['transactions'] = _transactions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}