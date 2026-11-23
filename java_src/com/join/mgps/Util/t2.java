package com.join.mgps.Util;

import android.widget.TextView;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class t2 {
    public static String a(long number) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (number <= 999999) {
            return decimalFormat.format(number) + "魅力";
        }
        if (number <= 99999999) {
            return new DecimalFormat("##0.0").format(number / 10000.0d) + "万魅力";
        }
        if (number > 99999999999L) {
            return "1000+亿魅力";
        }
        return new DecimalFormat("##0.00").format(number / 10000.0d) + "亿魅力";
    }

    public static String b(int number) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (number < 10000) {
            return decimalFormat.format(number) + "";
        }
        if (number >= 1000000) {
            return "100万+";
        }
        return new DecimalFormat("##0.0").format(((double) number) / 10000.0d) + "万";
    }

    public static String c(int number) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (number < 10000) {
            return decimalFormat.format(number) + "热度";
        }
        if (number < 1000000) {
            return new DecimalFormat("##0.0").format(((double) number) / 10000.0d) + "万热度";
        }
        if (number >= 10000000) {
            return "999万+热度";
        }
        return decimalFormat.format(((double) number) / 10000.0d) + "万热度";
    }

    public static String d(int number) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (number < 10000) {
            return decimalFormat.format(number) + "";
        }
        if (number < 1000000) {
            return new DecimalFormat("##0.0").format(((double) number) / 10000.0d) + "万";
        }
        if (number >= 10000000) {
            return "999万+";
        }
        return decimalFormat.format(((double) number) / 10000.0d) + "万";
    }

    public static String e(int number) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (number < 1000) {
            return decimalFormat.format(number) + "";
        }
        if (number < 10000) {
            DecimalFormat decimalFormat2 = new DecimalFormat("##0.0");
            decimalFormat2.setRoundingMode(RoundingMode.DOWN);
            return decimalFormat2.format(number / 1000.0f) + "K";
        }
        if (number >= 100000) {
            return "10W+";
        }
        DecimalFormat decimalFormat3 = new DecimalFormat("##0.0");
        decimalFormat3.setRoundingMode(RoundingMode.DOWN);
        return decimalFormat3.format(((double) number) / 10000.0d) + "W";
    }

    public static String f(String path) {
        int iLastIndexOf = path.lastIndexOf(47);
        int iLastIndexOf2 = path.lastIndexOf(46);
        if (iLastIndexOf2 == -1) {
            iLastIndexOf2 = path.length();
        }
        return iLastIndexOf == -1 ? path.substring(0, iLastIndexOf2) : path.substring(iLastIndexOf + 1, iLastIndexOf2);
    }

    public static String g(String str) {
        return str == null ? "" : str;
    }

    public static boolean h(String str) {
        return str == null || str.equals("");
    }

    public static boolean i(String str) {
        return (str == null || str.equals("")) ? false : true;
    }

    public static boolean j(String code) {
        return Pattern.compile("[0-9]*").matcher(code).matches();
    }

    public static double k(double $score) {
        if ($score > 0.0d && $score <= 1.0d) {
            return 0.5d;
        }
        double d10 = 2.0d;
        if ($score > 1.0d && $score <= 2.0d) {
            return 1.0d;
        }
        if ($score > 2.0d && $score <= 3.0d) {
            return 1.5d;
        }
        if ($score <= 3.0d || $score > 4.0d) {
            d10 = 5.0d;
            if ($score > 4.0d && $score <= 5.0d) {
                return 2.5d;
            }
            if ($score > 5.0d && $score <= 6.0d) {
                return 3.0d;
            }
            if ($score > 6.0d && $score <= 7.0d) {
                return 3.5d;
            }
            if ($score > 7.0d && $score <= 8.0d) {
                return 4.0d;
            }
            if ($score > 8.0d && $score <= 9.0d) {
                return 4.5d;
            }
            if ($score <= 9.0d || $score > 10.0d) {
                return 0.0d;
            }
        }
        return d10;
    }

    public static String l(String target, String o10, String n10) {
        return h(target) ? target : target.replaceAll(o10, n10);
    }

    public static void m(TextView textView, String text) {
        try {
            textView.setText(text);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String n(double cent) {
        return new DecimalFormat("0.00").format((Math.floor(cent) * 1.0d) / 100.0d);
    }

    public static String o(String str) {
        return i(str) ? str.trim() : str;
    }
}
