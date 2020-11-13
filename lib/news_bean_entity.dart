import 'package:flutter_app/generated/json/base/json_convert_content.dart';
import 'package:flutter_app/generated/json/base/json_field.dart';

class NewsBeanEntity with JsonConvert<NewsBeanEntity> {
	String reason;
	NewsBeanResult result;
	@JSONField(name: "error_code")
	int errorCode;
}

class NewsBeanResult with JsonConvert<NewsBeanResult> {
	String stat;
	List<NewsBeanResultData> data;
}

class NewsBeanResultData with JsonConvert<NewsBeanResultData> {
	String uniquekey;
	String title;
	String date;
	String category;
	@JSONField(name: "author_name")
	String authorName;
	String url;
	@JSONField(name: "thumbnail_pic_s")
	String thumbnailPicS;
	@JSONField(name: "thumbnail_pic_s02")
	String thumbnailPicS02;
	@JSONField(name: "thumbnail_pic_s03")
	String thumbnailPicS03;
}
