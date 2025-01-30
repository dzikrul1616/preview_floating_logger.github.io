// ignore_for_file: depend_on_referenced_packages
import 'package:device_frame/src/info/device_type.dart';
import 'package:device_frame/src/info/identifier.dart';
import 'package:device_frame/src/info/info.dart';
import 'package:flutter/material.dart';

final info = DeviceInfo(
  identifier: const DeviceIdentifier(
    TargetPlatform.iOS,
    DeviceType.phone,
    'iphone-13-pro-max',
  ),
  name: 'iPhone 13 Pro Max',
  pixelRatio: 3.0,
  frameSize: const Size(873.0, 1770.0),
  screenSize: const Size(428.0, 926.0),
  safeAreas: const EdgeInsets.only(
    left: 0.0,
    top: 47.0,
    right: 0.0,
    bottom: 34.0,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 47.0,
    top: 0.0,
    right: 47.0,
    bottom: 21.0,
  ),
  framePainter: const FramePainter(),
  screenPath: _screenPath,
);

class FramePainter extends CustomPainter {
  const FramePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final path_0 = Path();
    path_0.moveTo(866.809, 495.105);
    path_0.lineTo(869.904, 495.105);
    path_0.cubicTo(871.614, 495.105, 873, 496.49, 873, 498.199);
    path_0.lineTo(873, 683.864);
    path_0.cubicTo(873, 685.573, 871.614, 686.958, 869.904, 686.958);
    path_0.lineTo(866.809, 686.958);
    path_0.lineTo(866.809, 495.105);
    path_0.close();

    final paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff213744);
    canvas.drawPath(path_0, paint0Fill);

    final path_1 = Path();
    path_1.moveTo(6.19141, 728.217);
    path_1.lineTo(3.09565, 728.217);
    path_1.cubicTo(1.38592, 728.217, 0, 726.831, 0, 725.122);
    path_1.lineTo(0, 609.598);
    path_1.cubicTo(0, 607.889, 1.38593, 606.503, 3.09566, 606.503);
    path_1.lineTo(6.19142, 606.503);
    path_1.lineTo(6.19141, 728.217);
    path_1.close();

    final paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff213744);
    canvas.drawPath(path_1, paint1Fill);

    final path_2 = Path();
    path_2.moveTo(6.19141, 573.496);
    path_2.lineTo(3.09565, 573.496);
    path_2.cubicTo(1.38592, 573.496, 0, 572.111, 0, 570.402);
    path_2.lineTo(0, 454.877);
    path_2.cubicTo(0, 453.168, 1.38593, 451.783, 3.09566, 451.783);
    path_2.lineTo(6.19142, 451.783);
    path_2.lineTo(6.19141, 573.496);
    path_2.close();

    final paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff213744);
    canvas.drawPath(path_2, paint2Fill);

    final path_3 = Path();
    path_3.moveTo(6.19141, 398.147);
    path_3.lineTo(3.09566, 398.147);
    path_3.cubicTo(1.38592, 398.147, 0, 396.761, 0, 395.052);
    path_3.lineTo(0, 343.479);
    path_3.cubicTo(0, 341.77, 1.38593, 340.384, 3.09566, 340.384);
    path_3.lineTo(6.19141, 340.384);
    path_3.lineTo(6.19141, 398.147);
    path_3.close();

    final paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff213744);
    canvas.drawPath(path_3, paint3Fill);

    final path_4 = Path();
    path_4.moveTo(6.19141, 187.727);
    path_4.cubicTo(6.19141, 137.811, 6.19141, 112.853, 12.7571, 92.6545);
    path_4.cubicTo(26.0269, 51.8322, 58.046, 19.8269, 98.886, 6.56288);
    path_4.cubicTo(119.093, 0, 144.062, 0, 194, 0);
    path_4.lineTo(679, 0);
    path_4.cubicTo(728.938, 0, 753.907, 0, 774.114, 6.56288);
    path_4.cubicTo(814.954, 19.8269, 846.973, 51.8322, 860.243, 92.6545);
    path_4.cubicTo(866.808, 112.853, 866.808, 137.811, 866.808, 187.727);
    path_4.lineTo(866.808, 1582.27);
    path_4.cubicTo(866.808, 1632.19, 866.808, 1657.15, 860.243, 1677.35);
    path_4.cubicTo(846.973, 1718.17, 814.954, 1750.17, 774.114, 1763.44);
    path_4.cubicTo(753.907, 1770, 728.938, 1770, 679, 1770);
    path_4.lineTo(194, 1770);
    path_4.cubicTo(144.062, 1770, 119.093, 1770, 98.886, 1763.44);
    path_4.cubicTo(58.046, 1750.17, 26.0269, 1718.17, 12.7571, 1677.35);
    path_4.cubicTo(6.19141, 1657.15, 6.19141, 1632.19, 6.19141, 1582.27);
    path_4.lineTo(6.19141, 187.727);
    path_4.close();

    final paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff213744);
    canvas.drawPath(path_4, paint4Fill);

    final path_5 = Path();
    path_5.moveTo(679.824, 4.12593);
    path_5.lineTo(193.173, 4.12593);
    path_5.cubicTo(143.843, 4.12593, 119.667, 4.15138, 100.16, 10.4869);
    path_5.cubicTo(60.5768, 23.3427, 29.5429, 54.3633, 16.6814, 93.9296);
    path_5.cubicTo(10.3432, 113.428, 10.3177, 137.593, 10.3177, 186.902);
    path_5.lineTo(10.3177, 1583.1);
    path_5.cubicTo(10.3177, 1632.41, 10.3432, 1656.57, 16.6814, 1676.07);
    path_5.cubicTo(29.5429, 1715.64, 60.5768, 1746.66, 100.16, 1759.51);
    path_5.cubicTo(119.667, 1765.85, 143.843, 1765.87, 193.173, 1765.87);
    path_5.lineTo(679.824, 1765.87);
    path_5.cubicTo(729.154, 1765.87, 753.33, 1765.85, 772.837, 1759.51);
    path_5.cubicTo(812.42, 1746.66, 843.454, 1715.64, 856.316, 1676.07);
    path_5.cubicTo(862.654, 1656.57, 862.679, 1632.41, 862.679, 1583.1);
    path_5.lineTo(862.679, 186.902);
    path_5.cubicTo(862.679, 137.593, 862.654, 113.428, 856.316, 93.9296);
    path_5.cubicTo(843.454, 54.3633, 812.42, 23.3427, 772.837, 10.4869);
    path_5.cubicTo(753.33, 4.15138, 729.154, 4.12593, 679.824, 4.12593);
    path_5.close();
    path_5.moveTo(14.7186, 93.2921);
    path_5.cubicTo(8.25391, 113.18, 8.25391, 137.754, 8.25391, 186.902);
    path_5.lineTo(8.25391, 1583.1);
    path_5.cubicTo(8.25391, 1632.25, 8.25391, 1656.82, 14.7186, 1676.71);
    path_5.cubicTo(27.7842, 1716.9, 59.3107, 1748.42, 99.5225, 1761.48);
    path_5.cubicTo(119.419, 1767.94, 144.004, 1767.94, 193.173, 1767.94);
    path_5.lineTo(679.824, 1767.94);
    path_5.cubicTo(728.994, 1767.94, 753.578, 1767.94, 773.475, 1761.48);
    path_5.cubicTo(813.686, 1748.42, 845.213, 1716.9, 858.279, 1676.71);
    path_5.cubicTo(864.743, 1656.82, 864.743, 1632.25, 864.743, 1583.1);
    path_5.lineTo(864.743, 186.902);
    path_5.cubicTo(864.743, 137.754, 864.743, 113.18, 858.279, 93.2921);
    path_5.cubicTo(845.213, 53.0977, 813.686, 21.5848, 773.475, 8.5249);
    path_5.cubicTo(753.578, 2.06299, 728.994, 2.06299, 679.824, 2.06299);
    path_5.lineTo(193.173, 2.06299);
    path_5.cubicTo(144.004, 2.06299, 119.419, 2.06299, 99.5225, 8.5249);
    path_5.cubicTo(59.3107, 21.5848, 27.7842, 53.0977, 14.7186, 93.2921);
    path_5.close();

    final paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff8EADC1);
    canvas.drawPath(path_5, paint5Fill);

    final path_6 = Path();
    path_6.moveTo(16.5117, 183.601);
    path_6.cubicTo(16.5117, 137.525, 16.5117, 114.487, 22.5724, 95.842);
    path_6.cubicTo(34.8214, 58.1598, 64.3775, 28.6164, 102.076, 16.3727);
    path_6.cubicTo(120.729, 10.3147, 143.777, 10.3147, 189.873, 10.3147);
    path_6.lineTo(683.129, 10.3147);
    path_6.cubicTo(729.225, 10.3147, 752.273, 10.3147, 770.926, 16.3727);
    path_6.cubicTo(808.625, 28.6164, 838.181, 58.1598, 850.43, 95.842);
    path_6.cubicTo(856.49, 114.487, 856.49, 137.525, 856.49, 183.601);
    path_6.lineTo(856.49, 1586.4);
    path_6.cubicTo(856.49, 1632.48, 856.49, 1655.51, 850.43, 1674.16);
    path_6.cubicTo(838.181, 1711.84, 808.625, 1741.38, 770.926, 1753.63);
    path_6.cubicTo(752.273, 1759.69, 729.225, 1759.69, 683.129, 1759.69);
    path_6.lineTo(189.873, 1759.69);
    path_6.cubicTo(143.777, 1759.69, 120.729, 1759.69, 102.076, 1753.63);
    path_6.cubicTo(64.3775, 1741.38, 34.8214, 1711.84, 22.5724, 1674.16);
    path_6.cubicTo(16.5117, 1655.51, 16.5117, 1632.48, 16.5117, 1586.4);
    path_6.lineTo(16.5117, 183.601);
    path_6.close();

    final paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff121515);
    canvas.drawPath(path_6, paint6Fill);

    final path_7 = Path();
    path_7.moveTo(683.127, 0);
    path_7.lineTo(695.51, 0);
    path_7.lineTo(695.51, 10.3147);
    path_7.lineTo(683.127, 10.3147);
    path_7.lineTo(683.127, 0);
    path_7.close();

    final paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff36454C);
    canvas.drawPath(path_7, paint7Fill);

    final path_8 = Path();
    path_8.moveTo(856.49, 177.413);
    path_8.lineTo(866.809, 177.413);
    path_8.lineTo(866.809, 189.79);
    path_8.lineTo(856.49, 189.79);
    path_8.lineTo(856.49, 177.413);
    path_8.close();

    final paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff36454C);
    canvas.drawPath(path_8, paint8Fill);

    final path_9 = Path();
    path_9.moveTo(6.19141, 177.413);
    path_9.lineTo(16.5106, 177.413);
    path_9.lineTo(16.5106, 189.79);
    path_9.lineTo(6.19141, 189.79);
    path_9.lineTo(6.19141, 177.413);
    path_9.close();

    final paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff36454C);
    canvas.drawPath(path_9, paint9Fill);

    final path_10 = Path();
    path_10.moveTo(6.19141, 1580.21);
    path_10.lineTo(16.5106, 1580.21);
    path_10.lineTo(16.5106, 1592.59);
    path_10.lineTo(6.19141, 1592.59);
    path_10.lineTo(6.19141, 1580.21);
    path_10.close();

    final paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff36454C);
    canvas.drawPath(path_10, paint10Fill);

    final path_11 = Path();
    path_11.moveTo(856.49, 1580.21);
    path_11.lineTo(866.809, 1580.21);
    path_11.lineTo(866.809, 1592.59);
    path_11.lineTo(856.49, 1592.59);
    path_11.lineTo(856.49, 1580.21);
    path_11.close();

    final paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff36454C);
    canvas.drawPath(path_11, paint11Fill);

    final path_12 = Path();
    path_12.moveTo(177.49, 1759.69);
    path_12.lineTo(189.873, 1759.69);
    path_12.lineTo(189.873, 1770);
    path_12.lineTo(177.49, 1770);
    path_12.lineTo(177.49, 1759.69);
    path_12.close();

    final paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff36454C);
    canvas.drawPath(path_12, paint12Fill);

    final path_13 = Path();
    path_13.moveTo(331.447, 73.8811);
    path_13.cubicTo(339.426, 73.8811, 345.894, 67.4159, 345.894, 59.4406);
    path_13.cubicTo(345.894, 51.4653, 339.426, 45, 331.447, 45);
    path_13.cubicTo(323.468, 45, 317, 51.4653, 317, 59.4406);
    path_13.cubicTo(317, 67.4159, 323.468, 73.8811, 331.447, 73.8811);
    path_13.close();

    final paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff262C2D);
    canvas.drawPath(path_13, paint13Fill);

    final path_14 = Path();
    path_14.moveTo(331.447, 68.466);
    path_14.cubicTo(336.434, 68.466, 340.476, 64.4252, 340.476, 59.4406);
    path_14.cubicTo(340.476, 54.4561, 336.434, 50.4153, 331.447, 50.4153);
    path_14.cubicTo(326.46, 50.4153, 322.418, 54.4561, 322.418, 59.4406);
    path_14.cubicTo(322.418, 64.4252, 326.46, 68.466, 331.447, 68.466);
    path_14.close();

    final paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff121515);
    canvas.drawPath(path_14, paint14Fill);

    final path_15 = Path();
    path_15.moveTo(331.446, 57.6355);
    path_15.cubicTo(332.444, 57.6355, 333.252, 56.8274, 333.252, 55.8305);
    path_15.cubicTo(333.252, 54.8335, 332.444, 54.0254, 331.446, 54.0254);
    path_15.cubicTo(330.449, 54.0254, 329.641, 54.8335, 329.641, 55.8305);
    path_15.cubicTo(329.641, 56.8274, 330.449, 57.6355, 331.446, 57.6355);
    path_15.close();

    final paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff636F73);
    canvas.drawPath(path_15, paint15Fill);

    final path_16 = Path();
    path_16.moveTo(372, 13);
    path_16.lineTo(499, 13);
    path_16.lineTo(499, 17);
    path_16.cubicTo(499, 21.4183, 495.418, 25, 491, 25);
    path_16.lineTo(380, 25);
    path_16.cubicTo(375.582, 25, 372, 21.4183, 372, 17);
    path_16.lineTo(372, 13);
    path_16.close();

    final paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff262C2D);
    canvas.drawPath(path_16, paint16Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

final _screenPath = Path()
  ..moveTo(329.809, 99.021)
  ..cubicTo(308.338, 99.021, 290.596, 81.7495, 290.596, 60.4441)
  ..lineTo(290.596, 49.9231)
  ..cubicTo(290.596, 44.1125, 286.132, 39.1958, 280.277, 39.1958)
  ..lineTo(187.994, 39.1958)
  ..cubicTo(145.528, 39.1958, 124.295, 39.1958, 107.406, 45.727)
  ..cubicTo(81.9318, 55.5778, 61.7934, 75.7075, 51.9383, 101.17)
  ..cubicTo(45.4043, 118.052, 45.4043, 139.276, 45.4043, 181.724)
  ..lineTo(45.4043, 1588.28)
  ..cubicTo(45.4043, 1630.72, 45.4043, 1651.95, 51.9383, 1668.83)
  ..cubicTo(61.7934, 1694.29, 81.9318, 1714.42, 107.406, 1724.27)
  ..cubicTo(124.295, 1730.8, 145.528, 1730.8, 187.994, 1730.8)
  ..lineTo(685.006, 1730.8)
  ..cubicTo(727.472, 1730.8, 748.705, 1730.8, 765.594, 1724.27)
  ..cubicTo(791.068, 1714.42, 811.207, 1694.29, 821.062, 1668.83)
  ..cubicTo(827.596, 1651.95, 827.596, 1630.72, 827.596, 1588.28)
  ..lineTo(827.596, 181.724)
  ..cubicTo(827.596, 139.276, 827.596, 118.052, 821.062, 101.17)
  ..cubicTo(811.207, 75.7075, 791.068, 55.5778, 765.594, 45.727)
  ..cubicTo(748.705, 39.1958, 727.472, 39.1958, 685.006, 39.1958)
  ..lineTo(596.723, 39.1958)
  ..cubicTo(590.868, 39.1958, 586.404, 44.1125, 586.404, 49.9231)
  ..lineTo(586.404, 60.4441)
  ..cubicTo(586.404, 81.7495, 568.662, 99.021, 547.191, 99.021)
  ..lineTo(329.809, 99.021)
  ..close()
  ..fillType = PathFillType.evenOdd;
