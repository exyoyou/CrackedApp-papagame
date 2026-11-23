package com.papa91.arc.util;

import android.widget.TextView;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtils {
    public static String formatNumberLiveCharm(long j10) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (j10 <= 999999) {
            return decimalFormat.format(j10) + "魅力";
        }
        if (j10 <= 99999999) {
            return new DecimalFormat("##0.0").format(j10 / 10000.0d) + "万魅力";
        }
        if (j10 > 99999999999L) {
            return "1000+亿魅力";
        }
        return new DecimalFormat("##0.00").format(j10 / 10000.0d) + "亿魅力";
    }

    public static String formatNumberShort(int i10) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (i10 < 10000) {
            return decimalFormat.format(i10) + "";
        }
        if (i10 >= 1000000) {
            return "100万+";
        }
        return new DecimalFormat("##0.0").format(((double) i10) / 10000.0d) + "万";
    }

    public static String formatNumberShort999(int i10) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (i10 < 10000) {
            return decimalFormat.format(i10) + "热度";
        }
        if (i10 < 1000000) {
            return new DecimalFormat("##0.0").format(((double) i10) / 10000.0d) + "万热度";
        }
        if (i10 >= 10000000) {
            return "999万+热度";
        }
        return decimalFormat.format(((double) i10) / 10000.0d) + "万热度";
    }

    public static String formatNumberShort999NoUnit(int i10) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (i10 < 10000) {
            return decimalFormat.format(i10) + "";
        }
        if (i10 < 1000000) {
            return new DecimalFormat("##0.0").format(((double) i10) / 10000.0d) + "万";
        }
        if (i10 >= 10000000) {
            return "999万+";
        }
        return decimalFormat.format(((double) i10) / 10000.0d) + "万";
    }

    public static String formatNumberShortEn(int i10) {
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (i10 < 1000) {
            return decimalFormat.format(i10) + "";
        }
        if (i10 < 10000) {
            DecimalFormat decimalFormat2 = new DecimalFormat("##0.0");
            decimalFormat2.setRoundingMode(RoundingMode.DOWN);
            return decimalFormat2.format(i10 / 1000.0f) + "K";
        }
        if (i10 >= 100000) {
            return "10W+";
        }
        DecimalFormat decimalFormat3 = new DecimalFormat("##0.0");
        decimalFormat3.setRoundingMode(RoundingMode.DOWN);
        return decimalFormat3.format(((double) i10) / 10000.0d) + "W";
    }

    public static String getNameNoExt(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        int iLastIndexOf2 = str.lastIndexOf(46);
        if (iLastIndexOf2 == -1) {
            iLastIndexOf2 = str.length();
        }
        return iLastIndexOf == -1 ? str.substring(0, iLastIndexOf2) : str.substring(iLastIndexOf + 1, iLastIndexOf2);
    }

    public static String getSafeString(String str) {
        return str == null ? "" : str;
    }

    public static boolean isEmpty(String str) {
        return str == null || str.equals("");
    }

    public static boolean isNotEmpty(String str) {
        return (str == null || str.equals("")) ? false : true;
    }

    public static boolean isNumeric(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public static int length(String str) {
        if (isNotEmpty(str)) {
            return str.length();
        }
        return 0;
    }

    public static double parseStar(double d10) {
        if (d10 > 0.0d && d10 <= 1.0d) {
            return 0.5d;
        }
        double d11 = 2.0d;
        if (d10 > 1.0d && d10 <= 2.0d) {
            return 1.0d;
        }
        if (d10 > 2.0d && d10 <= 3.0d) {
            return 1.5d;
        }
        if (d10 <= 3.0d || d10 > 4.0d) {
            d11 = 5.0d;
            if (d10 > 4.0d && d10 <= 5.0d) {
                return 2.5d;
            }
            if (d10 > 5.0d && d10 <= 6.0d) {
                return 3.0d;
            }
            if (d10 > 6.0d && d10 <= 7.0d) {
                return 3.5d;
            }
            if (d10 > 7.0d && d10 <= 8.0d) {
                return 4.0d;
            }
            if (d10 > 8.0d && d10 <= 9.0d) {
                return 4.5d;
            }
            if (d10 <= 9.0d || d10 > 10.0d) {
                return 0.0d;
            }
        }
        return d11;
    }

    public static void setText(TextView textView, String str) {
        try {
            textView.setText(str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String transfer(double d10) {
        return new DecimalFormat("0.00").format((Math.floor(d10) * 1.0d) / 100.0d);
    }
}
