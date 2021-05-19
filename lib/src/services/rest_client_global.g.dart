// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client_global.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GlobalRestClient implements GlobalRestClient {
  _GlobalRestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<Branch>> getBranchesAddress(lat, long) async {
    ArgumentError.checkNotNull(lat, 'lat');
    ArgumentError.checkNotNull(long, 'long');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': long};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>(
        'http://10.1.2.94:3001/v1/getBranches',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Branch.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Branch>> getBranchesAddressOldClub(lat, long) async {
    ArgumentError.checkNotNull(lat, 'lat');
    ArgumentError.checkNotNull(long, 'long');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'long': long};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>(
        'https://jeanswest.club/v1/api/near_branch',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Branch.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<OTPReqResponse> reqOtp(map) async {
    ArgumentError.checkNotNull(map, 'map');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/otp/request',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = OTPReqResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<AuthReqRespons> reqAuth(map) async {
    ArgumentError.checkNotNull(map, 'map');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/customerAuth',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AuthReqRespons.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMainInfoRes> getUserMainInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/customer/myCustomer',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserMainInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserTblPosCustRes> getUserErp(mobile) async {
    ArgumentError.checkNotNull(mobile, 'mobile');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(mobile ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/erp/user/user',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserTblPosCustRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMainInfoRes> getMockUserMainInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserMainInfo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserMainInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserTblPosCustRes> getMockUserErp() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserTblPosCustRes',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserTblPosCustRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserPaymentInfoRes> getUserPaymentInfo(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(id ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/erp/promotion/customerMembershipLevel',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserPaymentInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserPaymentInfoRes> getMockUserPaymentInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserPaymentInfo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserPaymentInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserFriendsInfoRes> getUserFriendsInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserFriendsInfo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserFriendsInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserFriendsInfoRes> getMockUserFriendsInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserFriendsInfo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserFriendsInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserFavoriteInfoRes> getUserFavoriteInfo(tblPosCustomersID) async {
    ArgumentError.checkNotNull(tblPosCustomersID, 'tblPosCustomersID');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(tblPosCustomersID ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/favorite/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserFavoriteInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<GeneralRespons> removeFromUserFavorite(barcode) async {
    ArgumentError.checkNotNull(barcode, 'barcode');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(barcode ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/favorite/remove',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GeneralRespons.fromJson(_result.data);
    return value;
  }

  @override
  Future<GeneralRespons> addToUserFavorite(barcode) async {
    ArgumentError.checkNotNull(barcode, 'barcode');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(barcode ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/favorite/remove',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GeneralRespons.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserFavoriteInfoRes> getMockUserFavoriteInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserFavorite',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserFavoriteInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserInviteInfoRes> getUserInviteInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserInviteInfo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserInviteInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserJeanpointsResponse> getUserJeanpointBonsInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserJeanpointBons',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserJeanpointsResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserOrderDataRes> getUserOrdersInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserOrders',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserOrderDataRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserTicketsRes> getUserTicketsInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3005/api/v1/ticket/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserTicketsRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMessagesInfoRes> getUserMessagesInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserMessages',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserMessagesInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserAddressesInfoRes> getMockUserAddressesInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3003/v1/getUserAddressesInfo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserAddressesInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserAddressesInfoRes> getUserAddressesInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/address/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserAddressesInfoRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<GeneralRespons> addToUserAddressesInfo(address) async {
    ArgumentError.checkNotNull(address, 'address');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(address ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/address/create',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GeneralRespons.fromJson(_result.data);
    return value;
  }

  @override
  Future<GeneralRespons> editUserAddressesInfo(address) async {
    ArgumentError.checkNotNull(address, 'address');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(address ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/address/edit',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PATCH',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GeneralRespons.fromJson(_result.data);
    return value;
  }

  @override
  Future<GeneralRespons> deleteUserAddressesInfo(code) async {
    ArgumentError.checkNotNull(code, 'code');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(code ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/address/remove',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GeneralRespons.fromJson(_result.data);
    return value;
  }

  @override
  Future<ContactUsRes> getContactUsInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3005/api/v1/contact-us/contact-info',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ContactUsRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<FAQRes> getFAQInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3005/api/v1/faq/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FAQRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<LevelCardsRes> getLevelCardsInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/address/giftCardsInfo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LevelCardsRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<AllProvince> getAllProvinceInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/logistic/states',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AllProvince.fromJson(_result.data);
    return value;
  }

  @override
  Future<AllCity> getAllCityInfo(idState) async {
    ArgumentError.checkNotNull(idState, 'idState');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(idState ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/logistic/cities',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AllCity.fromJson(_result.data);
    return value;
  }

  @override
  Future<AllDistrict> getAllDistrictInfo(idCity) async {
    ArgumentError.checkNotNull(idCity, 'idCity');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(idCity ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/logistic/districts',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AllDistrict.fromJson(_result.data);
    return value;
  }

  @override
  Future<ListOfProductsRes> getProductList(filter) async {
    ArgumentError.checkNotNull(filter, 'filter');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(filter ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/product/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ListOfProductsRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<ListOfProductsRes> getMockProductList(filter) async {
    ArgumentError.checkNotNull(filter, 'filter');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(filter ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.0.1.111:8000/api/v1/product/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ListOfProductsRes.fromJson(_result.data);
    return value;
  }

  @override
  Future<ListOfProductsRes> getAddToCardProductDetailInfo(barcode) async {
    ArgumentError.checkNotNull(barcode, 'barcode');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'barcode': barcode};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://10.1.2.94:3002/v1/getAddToCardProductDetail',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ListOfProductsRes.fromJson(_result.data);
    return value;
  }
}
