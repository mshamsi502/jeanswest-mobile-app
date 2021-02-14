import 'package:jeanswest/src/models/user/gender/gender.dart';
import 'package:jeanswest/src/models/user/userInfo/user-main-info.dart';
import 'package:jeanswest/src/models/user/userInfo/user-friends-info.dart';
import 'package:jeanswest/src/models/user/userInfo/user-payment-info.dart';
import 'package:jeanswest/src/models/user/userInfo/user-invite-info.dart';

UserMainInfo user = new UserMainInfo(
  firstName: 'کاربر',
  lastName: 'جدید',
  email: 'your_email@gmail.com',
  phoneNumber: '+989121234567',
  gender: male,
  dayOfBirth: '24',
  monthOfBirth: '07',
  yearOfBirth: '1375',
);

UserFriendsInfo userFriends = new UserFriendsInfo(friends: []);
UserPaymentInfo userPayment = new UserPaymentInfo(
  moneyBuying: 0,
  // 50000; // zero level
// 17000000; // infinty level
//
// 199000; // in limit before 200,000
// 200000; // in limit center 200,000
// 205000; // in limit after 200,000
// 700000; // blue level
//
// 1495000; // in limit before 1,500,000
// 1500000; // in limit center 1,500,000userPayment
// 1501000; // in limit after 1,500,000
// 2000000; // blue + level
//
//
// 2950000; // in limit before 3,000,000
// 3000000; // in limit center 3,000,000
// 3010000; // in limit after 3,000,000
// 4000000; // blue 2+ level
//
// 4950000; // in limit before 5,000,000
// 5000000; // in limit center 5,000,000
// 5005000; // in limit after 5,000,000
  // 8600000, // silver levelP
//
// 14950000; // in limit before 15,000,000
// 15000000; // in limit center 15,000,000
// 15100000; // in limit after 15,000,000
// 17500000; // gold level
// 100000000; // gold level
);
UserInviteInfo userInvite = new UserInviteInfo(
  someOfInvited: 0,
  someOfInstallFromInvited: 0,
  someOfShoppingFromInvited: 0,
  receivedGift: 0,
);

// UserMainInfo

// ! -->