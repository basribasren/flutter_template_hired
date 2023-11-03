import '../models/listlogo_one_item_model.dart';
import 'package:basri_s_application21/core/app_export.dart';
import 'package:basri_s_application21/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlogoOneItemWidget extends StatelessWidget {
  ListlogoOneItemWidget(
    this.listlogoOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListlogoOneItemModel listlogoOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: getSize(32),
          width: getSize(32),
          margin: getMargin(
            bottom: 62,
          ),
          padding: getPadding(
            all: 4,
          ),
          decoration: IconButtonStyleHelper.fillGrayTL16,
          child: CustomImageView(
            svgPath: ImageConstant.imgFrame162722,
          ),
        ),
        Container(
          height: getVerticalSize(90),
          width: getHorizontalSize(283),
          margin: getMargin(
            left: 12,
            top: 4,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "lbl_32_min_ago".tr,
                  style: CustomTextStyles.labelLargeBluegray300,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      listlogoOneItemModelObj.junioruidesigneTxt,
                      style: CustomTextStyles.titleSmallPrimaryBold,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        listlogoOneItemModelObj.shopeesgTxt,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor7".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargePrimary_1.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
