import 'package:jeanswest/src/models/api_response/productRes/banimode/banimode-detail-product-res.dart';
import 'package:jeanswest/src/models/api_response/productRes/banimode/banimodeSubDetails/banimode-image-product-res.dart';
import 'package:jeanswest/src/models/api_response/productRes/banimode/banimodeSubDetails/banimode-size-product-res.dart';
import 'package:jeanswest/src/models/api_response/userRes/userFavorite/dataFavorite/data-favorites-info-res.dart';
import 'package:jeanswest/src/models/api_response/productRes/single-product-info-res.dart';
import 'package:jeanswest/src/models/api_response/userRes/userFavorite/user-favorite-info-res.dart';

UserFavoriteInfoRes userFavorites = UserFavoriteInfoRes(
  data: DataFavoriteInfoRes(
    result: [
      SingleProductInfoRes(
        active: false,
        quantity: 0,
        barcode: "",
        basePrice: 0,
        salePrice: 0,
        banimodeDetails: BanimodeDetailsProductRes(
          size: [
            BanimodeSizeProductRes(
              name: "",
              active: 0,
              idSize: 0,
              position: 0,
              quantity: 0,
            ),
          ],
          images: BanimodeImageProductRes(
            cartDefault: [""],
            homeDefault: [""],
            largeDefault: [""],
            smallDefault: [""],
            mediumDefault: [""],
            thickboxDefault: [""],
            thickboxDefault2x: [""],
          ),
          idColor: 0,
          colorName: "",
          colorValue: "",
          productName: "",
          productManufacturerName: "",
          productManufacturerEnName: "",
        ),
      ),
    ],
    page: 0,
    perPage: 0,
    total: 0,
  ),
);
