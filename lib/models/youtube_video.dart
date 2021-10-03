///
// ignore_for_file: sort_constructors_first

class YoutubeVideo {
  ///
  String? kind;

  ///
  String? etag;

  ///
  String? id;

  ///
  Snippet? snippet;

  ///
  YoutubeVideo({this.kind, this.etag, this.id, this.snippet});

  ///
  YoutubeVideo.fromJson(Map<String, dynamic> json) {
    kind = json['kind'] as String;
    etag = json['etag'] as String;
    id = json['id'] as String;
    snippet = (json['snippet'] != null)
        ? Snippet.fromJson(json['snippet'] as Map<String, dynamic>)
        : null;
  }
}

///
class Snippet {
  ///
  String? publishedAt;

  ///
  String? channelId;

  ///
  String? title;

  ///
  String? description;

  ///
  ThumbnailImageData? thumbnail;

  ///
  String? channelTitle;

  ///
  String? playlistId;

  ///
  int? position;

  ///
  ResourceId? resourceId;

  ///
  String? videoOwnerChannelTitle;

  ///
  String? videoOwnerChannelId;

  ///
  Snippet({
    this.publishedAt,
    this.channelId,
    this.title,
    this.description,
    this.thumbnail,
    this.channelTitle,
    this.playlistId,
    this.position,
    this.resourceId,
    this.videoOwnerChannelTitle,
    this.videoOwnerChannelId,
  });

  ///
  Snippet.fromJson(Map<String, dynamic> json) {
    publishedAt = json['publishedAt'] as String;
    channelId = json['channelId'] as String;
    title = json['title'] as String;
    description = json['description'] as String;
    thumbnail = json['thumbnails'] != null
        ? ThumbnailImageData.fromJson(
            json['thumbnails']['high'] as Map<String, dynamic>)
        : null;
    channelTitle = json['channelTitle'] as String;
    playlistId = json['playlistId'] as String;
    position = json['position'] as int;
    resourceId = json['resourceId'] != null
        ? ResourceId.fromJson(json['resourceId'] as Map<String, dynamic>)
        : null;
    videoOwnerChannelTitle = json['videoOwnerChannelTitle'] as String;
    videoOwnerChannelId = json['videoOwnerChannelId'] as String;
  }
}

///
class ThumbnailImageData {
  ///
  String? url;

  ///
  int? width;

  ///
  int? height;

  ///
  ThumbnailImageData({this.url, this.width, this.height});

  ///
  ThumbnailImageData.fromJson(Map<String, dynamic> json) {
    url = json['url'] as String;
    width = json['width'] as int;
    height = json['height'] as int;
  }
}

/// Resource Id
class ResourceId {
  ///
  String? kind;

  ///
  String? videoId;

  ///
  ResourceId({this.kind, this.videoId});

  ///
  ResourceId.fromJson(Map<String, dynamic> json) {
    kind = json['kind'] as String;
    videoId = json['videoId'] as String;
  }
}
