package com.join.mgps.customview.wheel.picker.util;

import androidx.annotation.NonNull;
import com.kuaishou.weapon.p0.bg;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class DateUtils extends android.text.format.DateUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f67131a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f67132b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f67133c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f67134d = 3;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DifferenceMode {
    }

    public static int a(int month) {
        return b(0, month);
    }

    public static int b(int year, int month) {
        List listAsList = Arrays.asList("1", "3", "5", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "10", "12");
        List listAsList2 = Arrays.asList("4", "6", "9", "11");
        if (listAsList.contains(String.valueOf(month))) {
            return 31;
        }
        if (listAsList2.contains(String.valueOf(month))) {
            return 30;
        }
        if (year <= 0) {
            return 29;
        }
        return ((year % 4 != 0 || year % 100 == 0) && year % 400 != 0) ? 28 : 29;
    }

    public static long c(long startTimeMillis, long endTimeMillis, int mode) {
        return d(new Date(startTimeMillis), new Date(endTimeMillis), mode);
    }

    public static long d(Date startDate, Date endDate, int mode) {
        long[] jArrF = f(startDate, endDate);
        if (mode == 1) {
            return jArrF[2];
        }
        if (mode == 2) {
            return jArrF[1];
        }
        return mode == 3 ? jArrF[0] : jArrF[3];
    }

    private static long[] e(long differentMilliSeconds) {
        long j10 = differentMilliSeconds / 86400000;
        long j11 = differentMilliSeconds % 86400000;
        long j12 = j11 / bg.f74510s;
        long j13 = j11 % bg.f74510s;
        return new long[]{j10, j12, j13 / 60000, (j13 % 60000) / 1000};
    }

    private static long[] f(Date startDate, Date endDate) {
        return e(endDate.getTime() - startDate.getTime());
    }

    public static long g(long startTimeMillis, long endTimeMillis) {
        return c(startTimeMillis, endTimeMillis, 3);
    }

    public static long h(Date startDate, Date endDate) {
        return d(startDate, endDate, 3);
    }

    public static long i(long startTimeMillis, long endTimeMillis) {
        return c(startTimeMillis, endTimeMillis, 2);
    }

    public static long j(Date startDate, Date endDate) {
        return d(startDate, endDate, 2);
    }

    public static long k(long startTimeMillis, long endTimeMillis) {
        return c(startTimeMillis, endTimeMillis, 1);
    }

    public static long l(Date startDate, Date endDate) {
        return d(startDate, endDate, 1);
    }

    public static long m(long startTimeMillis, long endTimeMillis) {
        return c(startTimeMillis, endTimeMillis, 0);
    }

    public static long n(Date startDate, Date endDate) {
        return d(startDate, endDate, 0);
    }

    @NonNull
    public static String o(int number) {
        StringBuilder sb2;
        String str;
        if (number < 10) {
            sb2 = new StringBuilder();
            str = "0";
        } else {
            sb2 = new StringBuilder();
            str = "";
        }
        sb2.append(str);
        sb2.append(number);
        return sb2.toString();
    }

    public static String p(String format) {
        return q(Calendar.getInstance(Locale.CHINA).getTime(), format);
    }

    public static String q(Date date, String format) {
        return new SimpleDateFormat(format, Locale.PRC).format(date);
    }

    public static boolean r(Date date) {
        if (date == null) {
            throw new IllegalArgumentException("date is null");
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date);
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public static Date s(String dateStr) {
        return t(dateStr, "yyyy-MM-dd HH:mm:ss");
    }

    public static Date t(String dateStr, String dataFormat) {
        try {
            return new Date(new SimpleDateFormat(dataFormat, Locale.PRC).parse(dateStr).getTime());
        } catch (ParseException unused) {
            return null;
        }
    }

    public static int u(@NonNull String text) {
        try {
            if (text.startsWith("0")) {
                text = text.substring(1);
            }
            return Integer.parseInt(text);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }
}
