import 'package:flutter_app/news_bean_entity.dart';

newsBeanEntityFromJson(NewsBeanEntity data, Map<String, dynamic> json) {
	if (json['reason'] != null) {
		data.reason = json['reason']?.toString();
	}
	if (json['result'] != null) {
		data.result = new NewsBeanResult().fromJson(json['result']);
	}
	if (json['error_code'] != null) {
		data.errorCode = json['error_code']?.toInt();
	}
	return data;
}

Map<String, dynamic> newsBeanEntityToJson(NewsBeanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['reason'] = entity.reason;
	if (entity.result != null) {
		data['result'] = entity.result.toJson();
	}
	data['error_code'] = entity.errorCode;
	return data;
}

newsBeanResultFromJson(NewsBeanResult data, Map<String, dynamic> json) {
	if (json['stat'] != null) {
		data.stat = json['stat']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<NewsBeanResultData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new NewsBeanResultData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> newsBeanResultToJson(NewsBeanResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['stat'] = entity.stat;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

newsBeanResultDataFromJson(NewsBeanResultData data, Map<String, dynamic> json) {
	if (json['uniquekey'] != null) {
		data.uniquekey = json['uniquekey']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['date'] != null) {
		data.date = json['date']?.toString();
	}
	if (json['category'] != null) {
		data.category = json['category']?.toString();
	}
	if (json['author_name'] != null) {
		data.authorName = json['author_name']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['thumbnail_pic_s'] != null) {
		data.thumbnailPicS = json['thumbnail_pic_s']?.toString();
	}
	if (json['thumbnail_pic_s02'] != null) {
		data.thumbnailPicS02 = json['thumbnail_pic_s02']?.toString();
	}
	if (json['thumbnail_pic_s03'] != null) {
		data.thumbnailPicS03 = json['thumbnail_pic_s03']?.toString();
	}
	return data;
}

Map<String, dynamic> newsBeanResultDataToJson(NewsBeanResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['uniquekey'] = entity.uniquekey;
	data['title'] = entity.title;
	data['date'] = entity.date;
	data['category'] = entity.category;
	data['author_name'] = entity.authorName;
	data['url'] = entity.url;
	data['thumbnail_pic_s'] = entity.thumbnailPicS;
	data['thumbnail_pic_s02'] = entity.thumbnailPicS02;
	data['thumbnail_pic_s03'] = entity.thumbnailPicS03;
	return data;
}