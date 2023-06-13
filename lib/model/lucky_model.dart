import 'dart:convert';

List<LuckyModel> luckyModelFromJson(String str) =>
    List<LuckyModel>.from(json.decode(str).map((x) => LuckyModel.fromJson(x)));

String luckyModelToJson(List<LuckyModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LuckyModel {
  int? companyProfileId;
  String? companyProfileName;
  String? companyProfileShortName;
  String? companyProfileMailingName;
  String? companyProfileAddress1;
  String? companyProfileAddress2;
  String? companyProfileAddress3;
  String? companyProfileGstNo;
  dynamic companyProfilePan;
  String? companyProfileMobile;
  String? companyProfileContact;
  String? companyProfileEmail;
  String? companyProfileWeb;
  String? companyProfileBankName;
  String? companyProfileAccountNo;
  String? companyProfileBranch;
  String? companyProfileIfsc;
  String? companyProfileImagePath;
  dynamic companyProfileIsPrintHead;
  int? companyProfileStateId;
  int? companyProfileLedgerId;
  dynamic companyProfilePin;
  dynamic companyProfileNameLatin;
  dynamic buildingNo;
  dynamic buildingNoLatin;
  dynamic streetName;
  dynamic streetNameLatin;
  dynamic district;
  dynamic districtLatin;
  dynamic city;
  dynamic cityLatin;
  dynamic country;
  dynamic countryLatin;
  dynamic pinNo;
  dynamic pinNoLatin;
  String? regKey;
  dynamic companyProfileLedger;
  dynamic companyProfileState;

  LuckyModel({
    this.companyProfileId,
    this.companyProfileName,
    this.companyProfileShortName,
    this.companyProfileMailingName,
    this.companyProfileAddress1,
    this.companyProfileAddress2,
    this.companyProfileAddress3,
    this.companyProfileGstNo,
    this.companyProfilePan,
    this.companyProfileMobile,
    this.companyProfileContact,
    this.companyProfileEmail,
    this.companyProfileWeb,
    this.companyProfileBankName,
    this.companyProfileAccountNo,
    this.companyProfileBranch,
    this.companyProfileIfsc,
    this.companyProfileImagePath,
    this.companyProfileIsPrintHead,
    this.companyProfileStateId,
    this.companyProfileLedgerId,
    this.companyProfilePin,
    this.companyProfileNameLatin,
    this.buildingNo,
    this.buildingNoLatin,
    this.streetName,
    this.streetNameLatin,
    this.district,
    this.districtLatin,
    this.city,
    this.cityLatin,
    this.country,
    this.countryLatin,
    this.pinNo,
    this.pinNoLatin,
    this.regKey,
    this.companyProfileLedger,
    this.companyProfileState,
  });

  factory LuckyModel.fromJson(Map<String, dynamic> json) => LuckyModel(
        companyProfileId: json["companyProfileId"],
        companyProfileName: json["companyProfileName"],
        companyProfileShortName: json["companyProfileShortName"],
        companyProfileMailingName: json["companyProfileMailingName"],
        companyProfileAddress1: json["companyProfileAddress1"],
        companyProfileAddress2: json["companyProfileAddress2"],
        companyProfileAddress3: json["companyProfileAddress3"],
        companyProfileGstNo: json["companyProfileGstNo"],
        companyProfilePan: json["companyProfilePan"],
        companyProfileMobile: json["companyProfileMobile"],
        companyProfileContact: json["companyProfileContact"],
        companyProfileEmail: json["companyProfileEmail"],
        companyProfileWeb: json["companyProfileWeb"],
        companyProfileBankName: json["companyProfileBankName"],
        companyProfileAccountNo: json["companyProfileAccountNo"],
        companyProfileBranch: json["companyProfileBranch"],
        companyProfileIfsc: json["companyProfileIfsc"],
        companyProfileImagePath: json["companyProfileImagePath"],
        companyProfileIsPrintHead: json["companyProfileIsPrintHead"],
        companyProfileStateId: json["companyProfileStateId"],
        companyProfileLedgerId: json["companyProfileLedgerId"],
        companyProfilePin: json["companyProfilePin"],
        companyProfileNameLatin: json["companyProfileNameLatin"],
        buildingNo: json["buildingNo"],
        buildingNoLatin: json["buildingNoLatin"],
        streetName: json["streetName"],
        streetNameLatin: json["streetNameLatin"],
        district: json["district"],
        districtLatin: json["districtLatin"],
        city: json["city"],
        cityLatin: json["cityLatin"],
        country: json["country"],
        countryLatin: json["countryLatin"],
        pinNo: json["pinNo"],
        pinNoLatin: json["pinNoLatin"],
        regKey: json["regKey"],
        companyProfileLedger: json["companyProfileLedger"],
        companyProfileState: json["companyProfileState"],
      );

  Map<String, dynamic> toJson() => {
        "companyProfileId": companyProfileId,
        "companyProfileName": companyProfileName,
        "companyProfileShortName": companyProfileShortName,
        "companyProfileMailingName": companyProfileMailingName,
        "companyProfileAddress1": companyProfileAddress1,
        "companyProfileAddress2": companyProfileAddress2,
        "companyProfileAddress3": companyProfileAddress3,
        "companyProfileGstNo": companyProfileGstNo,
        "companyProfilePan": companyProfilePan,
        "companyProfileMobile": companyProfileMobile,
        "companyProfileContact": companyProfileContact,
        "companyProfileEmail": companyProfileEmail,
        "companyProfileWeb": companyProfileWeb,
        "companyProfileBankName": companyProfileBankName,
        "companyProfileAccountNo": companyProfileAccountNo,
        "companyProfileBranch": companyProfileBranch,
        "companyProfileIfsc": companyProfileIfsc,
        "companyProfileImagePath": companyProfileImagePath,
        "companyProfileIsPrintHead": companyProfileIsPrintHead,
        "companyProfileStateId": companyProfileStateId,
        "companyProfileLedgerId": companyProfileLedgerId,
        "companyProfilePin": companyProfilePin,
        "companyProfileNameLatin": companyProfileNameLatin,
        "buildingNo": buildingNo,
        "buildingNoLatin": buildingNoLatin,
        "streetName": streetName,
        "streetNameLatin": streetNameLatin,
        "district": district,
        "districtLatin": districtLatin,
        "city": city,
        "cityLatin": cityLatin,
        "country": country,
        "countryLatin": countryLatin,
        "pinNo": pinNo,
        "pinNoLatin": pinNoLatin,
        "regKey": regKey,
        "companyProfileLedger": companyProfileLedger,
        "companyProfileState": companyProfileState,
      };
}
