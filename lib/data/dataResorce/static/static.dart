import 'package:bas_fast/core/constant/imageAsset.dart';
import 'package:bas_fast/data/model/onBoardingModel.dart';

List<OnBoardingModle> onboardingList = [
  OnBoardingModle(
      title: 'الخصوصية والأمان',
      body:
          'نضمن سلامة بياناتك الشخصية وسرية معلومات\n أموالك باتخاذ إجراءات إدارية وتكنولوجية قوية.',
      image: ImageAsset.onBoardingImageOne),
  OnBoardingModle(
      title: 'سهولة الاستخدام',
      body:
          'إمكانية دفع الفواتير وتحويل الأموال إلى الأصدقاء \nواستلامها من جميع أنحاء العالم بعملات مختلفة.',
      image: ImageAsset.onBoardingImageTwo),
  OnBoardingModle(
      title: 'تطوير مستمر',
      body:
          'نعمل على إضافة ميزات جديدة وتطويرها باستمرار، \nبهدف تلبية احتياجات المستخدم بشكل أفضل.',
      image: ImageAsset.onBoardingImageThree)
];
