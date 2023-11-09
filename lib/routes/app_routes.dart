import 'package:devhack/presentation/vending_machine_categories_one_screen/vending_machine_categories_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:devhack/presentation/home_one_screen/home_one_screen.dart';
import 'package:devhack/presentation/ambulance_one_screen/ambulance_one_screen.dart';
import 'package:devhack/presentation/ambulance_two_screen/ambulance_two_screen.dart';
import 'package:devhack/presentation/ambulancepayment_screen/ambulancepayment_screen.dart';
import 'package:devhack/presentation/vending_machine_location_screen/vending_machine_location_screen.dart';
import 'package:devhack/presentation/vending_machine_categories_screen/vending_machine_categories_screen.dart';
import 'package:devhack/presentation/vending_machine_gaviscon_add_to_cart_screen/vending_machine_gaviscon_add_to_cart_screen.dart';
import 'package:devhack/presentation/vending_machine_gaviscon_adjust_quantity_screen/vending_machine_gaviscon_adjust_quantity_screen.dart';
import 'package:devhack/presentation/vending_machine_digestion_gastrointestinal_screen/vending_machine_digestion_gastrointestinal_screen.dart';
import 'package:devhack/presentation/checkout_order_summary_one_screen/checkout_order_summary_one_screen.dart';
import 'package:devhack/presentation/checkout_order_summary_screen/checkout_order_summary_screen.dart';
import 'package:devhack/presentation/checkout_cart_screen/checkout_cart_screen.dart';
import 'package:devhack/presentation/payment_add_card_screen/payment_add_card_screen.dart';
import 'package:devhack/presentation/checkout_cart_one_screen/checkout_cart_one_screen.dart';
import 'package:devhack/presentation/doctor_consultation.dart';
import 'package:devhack/presentation/medical_officers.dart';
import 'package:devhack/presentation/doctor_lee.dart';
import 'package:devhack/presentation/doctor_payment.dart';
import 'package:devhack/presentation/doctor_payment_complete.dart';
import 'package:devhack/presentation/chat_with_doctor.dart';
import 'package:devhack/presentation/rating_doctor.dart';
import 'package:devhack/presentation/consultation_complete.dart';
import 'package:devhack/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeOneScreen = '/home_one_screen';

  static const String ambulanceOneScreen = '/ambulance_one_screen';

  static const String ambulanceTwoScreen = '/ambulance_two_screen';

  static const String ambulancepaymentScreen = '/ambulancepayment_screen';

  static const String vendingMachineLocationScreen =
      '/vending_machine_location_screen';

  static const String vendingMachineCategoriesScreen =
      '/vending_machine_categories_screen';

  static const String vendingMachineGavisconAddToCartScreen =
      '/vending_machine_gaviscon_add_to_cart_screen';

  static const String vendingMachineGavisconAdjustQuantityScreen =
      '/vending_machine_gaviscon_adjust_quantity_screen';

  static const String vendingMachineCategoriesOneScreen =
      '/vending_machine_categories_one_screen';

  static const String vendingMachineDigestionGastrointestinalScreen =
      '/vending_machine_digestion_gastrointestinal_screen';

  static const String checkoutOrderSummaryOneScreen =
      '/checkout_order_summary_one_screen';

  static const String checkoutOrderSummaryScreen =
      '/checkout_order_summary_screen';

  static const String checkoutCartScreen = '/checkout_cart_screen';

  static const String paymentAddCardScreen = '/payment_add_card_screen';

  static const String checkoutCartOneScreen = '/checkout_cart_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String doctorConsultationScreen = '/doctor_consultation';

  static const String medicalOfficerScreen = '/medical_officers';

  static const String doctorLeeScreen = '/doctor_lee';

  static const String doctorPaymentScreen = '/doctor_payment';

  static const String doctorPaymentCompleteScreen = '/doctor_payment_complete';

  static const String chatWithDoctorScreen = '/chat_with_doctor';

  static const String ratingDoctorScreen = '/rating_dotor';

  static const String consultationCompleteScreen = '/consultation_complete';

  static Map<String, WidgetBuilder> routes = {
    homeOneScreen: (context) => HomeOneScreen(),
    ambulanceOneScreen: (context) => AmbulanceOneScreen(),
    ambulanceTwoScreen: (context) => AmbulanceTwoScreen(),
    ambulancepaymentScreen: (context) => AmbulancepaymentScreen(),
    vendingMachineLocationScreen: (context) => VendingMachineLocationScreen(),
    vendingMachineCategoriesScreen: (context) =>
        VendingMachineCategoriesScreen(),
    vendingMachineGavisconAddToCartScreen: (context) =>
        VendingMachineGavisconAddToCartScreen(),
    vendingMachineGavisconAdjustQuantityScreen: (context) =>
        VendingMachineGavisconAdjustQuantityScreen(),
    vendingMachineCategoriesOneScreen: (context) =>
        VendingMachineCategoriesOneScreen(),
    vendingMachineDigestionGastrointestinalScreen: (context) =>
        VendingMachineDigestionGastrointestinalScreen(),
    checkoutOrderSummaryOneScreen: (context) => CheckoutOrderSummaryOneScreen(),
    checkoutOrderSummaryScreen: (context) => CheckoutOrderSummaryScreen(),
    checkoutCartScreen: (context) => CheckoutCartScreen(),
    paymentAddCardScreen: (context) => PaymentAddCardScreen(),
    checkoutCartOneScreen: (context) => CheckoutCartOneScreen(),
    doctorConsultationScreen: (context) => MyApp(),
    medicalOfficerScreen: (context) => MedicalOfficers(),
    doctorLeeScreen: (context) => DavidLee(),
    doctorPaymentScreen: (context) => PaymentPage(),
    doctorPaymentCompleteScreen: (context) => PaymentSuccess(),
    chatWithDoctorScreen: (context) => ConsultationChat(),
    ratingDoctorScreen: (context) => RatingPage(),
    consultationCompleteScreen: (context) => CompleteConsultation(),
    appNavigationScreen: (context) => AppNavigationScreen(),
  };
}
