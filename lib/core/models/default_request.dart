class DefaultRequest {
  String url;
  bool shouldCache;
  Map<String, dynamic> queryString;
  Map<String, dynamic> header;
  dynamic body;
  bool nullable;

  DefaultRequest({
    required this.url,
    this.shouldCache = false,
    this.nullable = false,
    this.queryString = const {},
    this.body = const {},
    this.header = const {},
  });

  String get urlQueryString => url + _queryStringFormat();

  String _queryStringFormat() {
    String query = '';

    if (queryString.isNotEmpty) {
      query = '?';

      queryString.forEach((key, value) {
        query += '$key=$value&';
      });

      query = query.substring(0, query.length - 1);
    }

    return query;
  }
}

class DefaultRequestHeader {
  static DefaultRequestHeader? _instance;

  static DefaultRequestHeader get instance {
    _instance ??= const DefaultRequestHeader();

    return _instance!;
  }

  final String contentType;
  final String authorization;
  final Map<String, dynamic> options;

  const DefaultRequestHeader({
    this.authorization = '',
    this.contentType = 'application/json',
    this.options = const {},
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'Content-Type': contentType,
      'Authorization': authorization,
    };

    map.addAll(options);

    return map;
  }

  DefaultRequestHeader copyWith({
    String? contentType,
    String? authorization,
    Map<String, dynamic>? options,
  }) {
    return DefaultRequestHeader(
      authorization: authorization ?? this.authorization,
      contentType: contentType ?? this.contentType,
      options: options ?? this.options,
    );
  }
}
