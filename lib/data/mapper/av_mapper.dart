import 'package:elementary_test/data/model/api_cars_response.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:injectable/injectable.dart';

abstract class IAvMapper {
  CarsModel apiCarsResponseToCarsModel(ApiCarsResponse source);

  Advert apiAdvertResponseToAdvert(ApiAdvertResponse source);
}

@Injectable(as: IAvMapper)
class AvMapper implements IAvMapper {
  @override
  CarsModel apiCarsResponseToCarsModel(ApiCarsResponse source) {
    return CarsModel(
      count: source.count,
      pageCount: source.pageCount,
      page: source.page,
      adverts: source.adverts.map(_mapAdvert).toList(),
      currentSorting: _mapCurrentSorting(source.currentSorting),
      advertsPerPage: source.advertsPerPage,
      initialValue: source.initialValue,
      extended: source.extended,
    );
  }

  Advert _mapAdvert(ApiAdvertResponse source) {
    return Advert(
      id: source.id,
      originalDaysOnSale: source.originalDaysOnSale,
      advertType: source.advertType,
      isRent: source.isRent,
      status: source.status,
      publicStatus: _mapPublicStatus(source.publicStatus),
      price: _mapPrice(source.price),
      description: source.description,
      exchange: _mapExchange(source.exchange),
      version: source.version,
      publishedAt: source.publishedAt,
      refreshedAt: source.refreshedAt,
      indexPromo: source.indexPromo,
      top: source.top,
      highlight: source.highlight,
      autoProlongPublication: source.autoProlongPublication,
      autoProlongationTop: source.autoProlongationTop,
      autoProlongationHighlight: source.autoProlongationHighlight,
      isAutoProlongAvailable: source.isAutoProlongAvailable,
      renewedAt: source.renewedAt,
      financeAdvertMinMonthlyPayment: _mapFinancePayment(source.financeAdvertMinMonthlyPayment),
      photos: source.photos.map(_mapPhoto).toList(),
      isPhoto360Paid: source.isPhoto360Paid,
      organizationId: source.organizationId,
      organizationTitle: source.organizationTitle,
      sellerName: source.sellerName,
      questionAllowed: source.questionAllowed,
      locationName: source.locationName,
      shortLocationName: source.shortLocationName,
      properties: source.properties.map(_mapProperty).toList(),
      publicUrl: source.publicUrl,
      year: source.year,
      metadata: _mapMetadata(source.metadata),
      foreignIp: source.foreignIp,
      isFavorite: source.isFavorite,
    );
  }

  PublicStatus _mapPublicStatus(ApiPublicStatusResponse source) {
    return PublicStatus(label: source.label, name: source.name);
  }

  Price _mapPrice(ApiPriceResponse source) {
    return Price(
      usd: _mapCurrencyAmount(source.usd),
      byn: _mapCurrencyAmount(source.byn),
      rub: _mapCurrencyAmount(source.rub),
      eur: _mapCurrencyAmount(source.eur),
    );
  }

  CurrencyAmount _mapCurrencyAmount(ApiCurrencyAmountResponse source) {
    return CurrencyAmount(
      currency: source.currency,
      amount: source.amount,
      amountFiat: source.amountFiat,
    );
  }

  Exchange _mapExchange(ApiExchangeResponse source) {
    return Exchange(
      type: source.type,
      label: source.label,
      exchangeAllowed: source.exchangeAllowed,
    );
  }

  FinanceAdvertMinMonthlyPayment? _mapFinancePayment(
    ApiFinanceAdvertMinMonthlyPaymentResponse? source,
  ) {
    return source != null
        ? FinanceAdvertMinMonthlyPayment(
            productId: source.productId,
            minPrice: source.minPrice,
            types: source.types,
            currency: source.currency,
          )
        : null;
  }

  Photo _mapPhoto(ApiPhotoResponse source) {
    return Photo(
      id: source.id,
      main: source.main,
      mimeType: source.mimeType,
      big: _mapPhotoSize(source.big),
      medium: _mapPhotoSize(source.medium),
      small: _mapPhotoSize(source.small),
      extrasmall: _mapPhotoSize(source.extrasmall),
    );
  }

  PhotoSize _mapPhotoSize(ApiPhotoSizeResponse source) {
    return PhotoSize(width: source.width, height: source.height, url: source.url);
  }

  Property _mapProperty(ApiPropertyResponse source) {
    return Property(
      fallbackType: source.fallbackType,
      value: source.value,
      id: source.id,
      name: source.name,
    );
  }

  AdvertMetadata _mapMetadata(ApiAdvertMetadataResponse source) {
    return AdvertMetadata(
      vinInfo: _mapVinInfo(source.vinInfo),
      condition: _mapCondition(source.condition),
      brandId: source.brandId,
      brandSlug: source.brandSlug,
      modelId: source.modelId,
      modelSlug: source.modelSlug,
      generationId: source.generationId,
      year: source.year,
      onOrder: source.onOrder,
      options: source.options.map(_mapAdvertOption).toList(),
    );
  }

  VinInfo? _mapVinInfo(ApiVinInfoResponse? source) {
    return source != null ? VinInfo(vin: source.vin, checked: source.checked) : null;
  }

  Condition _mapCondition(ApiConditionResponse source) {
    return Condition(id: source.id, label: source.label);
  }

  AdvertOption _mapAdvertOption(ApiAdvertOptionResponse source) {
    return AdvertOption(
      id: source.id,
      name: source.name,
      nameBel: source.nameBel,
      optionGroup: _mapOptionGroup(source.optionGroup),
      orderNumber: source.orderNumber,
    );
  }

  OptionGroup _mapOptionGroup(ApiOptionGroupResponse source) {
    return OptionGroup(
      id: source.id,
      name: source.name,
      nameBel: source.nameBel,
      orderNumber: source.orderNumber,
    );
  }

  CurrentSorting _mapCurrentSorting(ApiCurrentSortingResponse source) {
    return CurrentSorting(id: source.id, label: source.label);
  }

  @override
  Advert apiAdvertResponseToAdvert(ApiAdvertResponse source) {
    return _mapAdvert(source);
  }
}
