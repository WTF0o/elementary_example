import 'package:json_annotation/json_annotation.dart';

part 'api_cars_response.g.dart';

@JsonSerializable()
class ApiCarsResponse {
  final int count;
  final int pageCount;
  final int page;
  final List<ApiAdvertResponse> adverts;
  final ApiCurrentSortingResponse currentSorting;
  final int advertsPerPage;
  final String initialValue;
  final List<dynamic> extended;

  ApiCarsResponse({
    required this.count,
    required this.pageCount,
    required this.page,
    required this.adverts,
    required this.currentSorting,
    required this.advertsPerPage,
    required this.initialValue,
    required this.extended,
  });

  factory ApiCarsResponse.fromJson(Map<String, dynamic> json) => _$ApiCarsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCarsResponseToJson(this);
}

@JsonSerializable()
class ApiAdvertResponse {
  final int id;
  final int originalDaysOnSale;
  final String advertType;
  final bool isRent;
  final String status;
  final ApiPublicStatusResponse publicStatus;
  final ApiPriceResponse price;
  final String description;
  final ApiExchangeResponse exchange;
  final int version;
  final String publishedAt;
  final String refreshedAt;
  final bool indexPromo;
  final bool top;
  final bool highlight;
  final bool autoProlongPublication;
  final bool autoProlongationTop;
  final bool autoProlongationHighlight;
  final bool isAutoProlongAvailable;
  final String? renewedAt;
  final ApiFinanceAdvertMinMonthlyPaymentResponse? financeAdvertMinMonthlyPayment;
  final List<ApiPhotoResponse> photos;
  final bool isPhoto360Paid;
  final int? organizationId;
  final String? organizationTitle;
  final String sellerName;
  final bool questionAllowed;
  final String locationName;
  final String shortLocationName;
  final List<ApiPropertyResponse> properties;
  final String publicUrl;
  final int year;
  final ApiAdvertMetadataResponse metadata;
  final bool foreignIp;
  @JsonKey(defaultValue: false)
  final bool isFavorite;

  ApiAdvertResponse({
    required this.id,
    required this.originalDaysOnSale,
    required this.advertType,
    required this.isRent,
    required this.status,
    required this.publicStatus,
    required this.price,
    required this.description,
    required this.exchange,
    required this.version,
    required this.publishedAt,
    required this.refreshedAt,
    required this.indexPromo,
    required this.top,
    required this.highlight,
    required this.autoProlongPublication,
    required this.autoProlongationTop,
    required this.autoProlongationHighlight,
    required this.isAutoProlongAvailable,
    required this.renewedAt,
    required this.financeAdvertMinMonthlyPayment,
    required this.photos,
    required this.isPhoto360Paid,
    required this.organizationId,
    required this.organizationTitle,
    required this.sellerName,
    required this.questionAllowed,
    required this.locationName,
    required this.shortLocationName,
    required this.properties,
    required this.publicUrl,
    required this.year,
    required this.metadata,
    required this.foreignIp,
    required this.isFavorite,
  });

  factory ApiAdvertResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiAdvertResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAdvertResponseToJson(this);
}

@JsonSerializable()
class ApiPublicStatusResponse {
  final String label;
  final String name;

  ApiPublicStatusResponse({required this.label, required this.name});

  factory ApiPublicStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiPublicStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPublicStatusResponseToJson(this);
}

@JsonSerializable()
class ApiPriceResponse {
  final ApiCurrencyAmountResponse usd;
  final ApiCurrencyAmountResponse byn;
  final ApiCurrencyAmountResponse rub;
  final ApiCurrencyAmountResponse eur;

  ApiPriceResponse({required this.usd, required this.byn, required this.rub, required this.eur});

  factory ApiPriceResponse.fromJson(Map<String, dynamic> json) => _$ApiPriceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPriceResponseToJson(this);
}

@JsonSerializable()
class ApiCurrencyAmountResponse {
  final String currency;
  final int amount;
  final double amountFiat;

  ApiCurrencyAmountResponse({
    required this.currency,
    required this.amount,
    required this.amountFiat,
  });

  factory ApiCurrencyAmountResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiCurrencyAmountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCurrencyAmountResponseToJson(this);
}

@JsonSerializable()
class ApiExchangeResponse {
  final String type;
  final String label;
  final String exchangeAllowed;

  ApiExchangeResponse({required this.type, required this.label, required this.exchangeAllowed});

  factory ApiExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiExchangeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiExchangeResponseToJson(this);
}

@JsonSerializable()
class ApiFinanceAdvertMinMonthlyPaymentResponse {
  final int productId;
  final int minPrice;
  final List<String> types;
  final String currency;

  ApiFinanceAdvertMinMonthlyPaymentResponse({
    required this.productId,
    required this.minPrice,
    required this.types,
    required this.currency,
  });

  factory ApiFinanceAdvertMinMonthlyPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiFinanceAdvertMinMonthlyPaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiFinanceAdvertMinMonthlyPaymentResponseToJson(this);
}

@JsonSerializable()
class ApiPhotoResponse {
  final int id;
  final bool main;
  final String mimeType;
  final ApiPhotoSizeResponse big;
  final ApiPhotoSizeResponse medium;
  final ApiPhotoSizeResponse small;
  final ApiPhotoSizeResponse extrasmall;

  ApiPhotoResponse({
    required this.id,
    required this.main,
    required this.mimeType,
    required this.big,
    required this.medium,
    required this.small,
    required this.extrasmall,
  });

  factory ApiPhotoResponse.fromJson(Map<String, dynamic> json) => _$ApiPhotoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPhotoResponseToJson(this);
}

@JsonSerializable()
class ApiPhotoSizeResponse {
  final int width;
  final int height;
  final String url;

  ApiPhotoSizeResponse({required this.width, required this.height, required this.url});

  factory ApiPhotoSizeResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiPhotoSizeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPhotoSizeResponseToJson(this);
}

@JsonSerializable()
class ApiPropertyResponse {
  final String fallbackType;
  final dynamic value;
  final int id;
  final String name;

  ApiPropertyResponse({
    required this.fallbackType,
    required this.value,
    required this.id,
    required this.name,
  });

  factory ApiPropertyResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiPropertyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPropertyResponseToJson(this);
}

@JsonSerializable()
class ApiAdvertMetadataResponse {
  final ApiVinInfoResponse? vinInfo;
  final ApiConditionResponse condition;
  final int brandId;
  final String brandSlug;
  final int modelId;
  final String modelSlug;
  final int generationId;
  final int year;
  final bool onOrder;
  final List<ApiAdvertOptionResponse> options;

  ApiAdvertMetadataResponse({
    required this.vinInfo,
    required this.condition,
    required this.brandId,
    required this.brandSlug,
    required this.modelId,
    required this.modelSlug,
    required this.generationId,
    required this.year,
    required this.onOrder,
    required this.options,
  });

  factory ApiAdvertMetadataResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiAdvertMetadataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAdvertMetadataResponseToJson(this);
}

@JsonSerializable()
class ApiVinInfoResponse {
  final String vin;
  final bool checked;

  ApiVinInfoResponse({required this.vin, required this.checked});

  factory ApiVinInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiVinInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVinInfoResponseToJson(this);
}

@JsonSerializable()
class ApiConditionResponse {
  final int id;
  final String label;

  ApiConditionResponse({required this.id, required this.label});

  factory ApiConditionResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiConditionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiConditionResponseToJson(this);
}

@JsonSerializable()
class ApiAdvertOptionResponse {
  final int id;
  final String name;
  final String nameBel;
  final ApiOptionGroupResponse optionGroup;
  final int orderNumber;

  ApiAdvertOptionResponse({
    required this.id,
    required this.name,
    required this.nameBel,
    required this.optionGroup,
    required this.orderNumber,
  });

  factory ApiAdvertOptionResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiAdvertOptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAdvertOptionResponseToJson(this);
}

@JsonSerializable()
class ApiOptionGroupResponse {
  final int id;
  final String name;
  final String nameBel;
  final int orderNumber;

  ApiOptionGroupResponse({
    required this.id,
    required this.name,
    required this.nameBel,
    required this.orderNumber,
  });

  factory ApiOptionGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiOptionGroupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiOptionGroupResponseToJson(this);
}

@JsonSerializable()
class ApiCurrentSortingResponse {
  final int id;
  final String label;

  ApiCurrentSortingResponse({required this.id, required this.label});

  factory ApiCurrentSortingResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiCurrentSortingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCurrentSortingResponseToJson(this);
}
