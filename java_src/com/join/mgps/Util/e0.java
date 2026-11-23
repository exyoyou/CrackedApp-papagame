package com.join.mgps.Util;

import java.sql.Timestamp;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimpleDateFormat f49549a = new SimpleDateFormat("yyyyMMddHHmmssSSS");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SimpleDateFormat f49550b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SimpleDateFormat f49551c = new SimpleDateFormat("HH:mm:ss");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f49552d = Pattern.compile("^[0-9]{4}[/-][0-9]{1,2}[/-][0-9]{1,2}( +[0-9]{2}(:[0-9]{2}(:[0-9]{2}\\.?[0-9]{0,3})?)?)?$");

    public static String A(long dateDate) {
        return new SimpleDateFormat("yyyy.MM.dd HH:mm").format(Long.valueOf(dateDate * 1000));
    }

    public static String B(long dateDate) {
        return new SimpleDateFormat("HH:mm:ss").format(Long.valueOf(dateDate - 28800000));
    }

    public static String C(long shortTime) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(shortTime * 1000));
    }

    public static String D(long dateDate, String formater) {
        return new SimpleDateFormat(formater).format(Long.valueOf(dateDate));
    }

    public static String E(long dateDate) {
        return new SimpleDateFormat("dd").format(Long.valueOf(dateDate));
    }

    public static String F(long dateDate) {
        return new SimpleDateFormat("HH:mm").format(Long.valueOf(dateDate));
    }

    public static String G(long dateLong) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Long.valueOf(dateLong));
    }

    public static String H(long dateDate) {
        return new SimpleDateFormat("EEEE").format(Long.valueOf(dateDate));
    }

    public static String I(long dateDate) {
        return new SimpleDateFormat("yyyy.MM.dd").format(Long.valueOf(dateDate));
    }

    public static Date J(String strDate) {
        return new SimpleDateFormat("yyyy-MM-dd").parse(strDate, new ParsePosition(0));
    }

    public static Date K(String strDate) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strDate, new ParsePosition(0));
    }

    public static synchronized Date L(String date) {
        Date date2;
        try {
            if (!f49552d.matcher(date).matches()) {
                throw new Exception(date + " is not a date format.");
            }
            String strReplaceAll = date.replaceAll("[/ :.-]", "");
            if (strReplaceAll.length() < 8) {
                throw new Exception();
            }
            while (strReplaceAll.length() < 17) {
                strReplaceAll = strReplaceAll + "0";
            }
            date2 = f49549a.parse(strReplaceAll);
        } catch (Exception e10) {
            e10.printStackTrace();
            date2 = null;
        }
        return date2;
    }

    public static int a(long start, long end) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
            String str = simpleDateFormat.format(Long.valueOf(start));
            String str2 = simpleDateFormat.format(Long.valueOf(end));
            if (str.equals("0")) {
                str = "19000101";
            }
            calendar.setTime(simpleDateFormat.parse(str));
            calendar2.setTime(simpleDateFormat.parse(str2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return (int) (((((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / 1000) / 60) / 60) / 24);
    }

    public static synchronized String b(Object date) {
        return date instanceof Date ? f49550b.format((Date) date) : null;
    }

    public static synchronized String c(Timestamp date) {
        return f49550b.format((Date) date);
    }

    public static synchronized String d(Date date) {
        return f49550b.format(date);
    }

    public static String e(Date date, String format) {
        return new SimpleDateFormat(format).format(date);
    }

    public static String f(int playSeconds) {
        String str;
        String str2;
        if (playSeconds >= 0 && playSeconds < 60) {
            if (playSeconds < 10) {
                return "00:0" + playSeconds;
            }
            return "00:" + playSeconds;
        }
        if (playSeconds < 60 || playSeconds >= 3600) {
            return (playSeconds / 3600) + "小时";
        }
        int i10 = playSeconds / 60;
        int i11 = playSeconds % 60;
        if (i10 < 10) {
            str = "0" + i10;
        } else {
            str = "" + i10;
        }
        if (i11 < 10) {
            str2 = "0" + i11;
        } else {
            str2 = "" + i11;
        }
        return str + ":" + str2;
    }

    public static String g(int mills) {
        int i10 = mills / 1000;
        int i11 = i10 / 60;
        int i12 = i10 % 60;
        String str = "";
        if (i11 > 0) {
            str = "" + i11 + com.kuaishou.weapon.p0.t.f74888m;
        }
        if (i12 <= 0) {
            return str;
        }
        return str + i12 + "s";
    }

    public static String h(int playSeconds) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        if (playSeconds >= 0 && playSeconds < 60) {
            if (playSeconds < 10) {
                return "00:0" + playSeconds;
            }
            return "00:" + playSeconds;
        }
        if (playSeconds >= 60 && playSeconds < 3600) {
            int i10 = playSeconds / 60;
            int i11 = playSeconds % 60;
            if (i10 < 10) {
                str4 = "0" + i10;
            } else {
                str4 = "" + i10;
            }
            if (i11 < 10) {
                str5 = "0" + i11;
            } else {
                str5 = "" + i11;
            }
            return str4 + ":" + str5;
        }
        int i12 = playSeconds / 3600;
        int i13 = (playSeconds - (i12 * 3600)) / 60;
        int i14 = playSeconds % 60;
        if (i12 < 10) {
            str = "0" + i12;
        } else {
            str = "" + i12;
        }
        if (i13 < 10) {
            str2 = "0" + i13;
        } else {
            str2 = "" + i13;
        }
        if (i14 < 10) {
            str3 = "0" + i14;
        } else {
            str3 = "" + i14;
        }
        return str + ":" + str2 + ":" + str3;
    }

    public static String i(long timestampMillis) {
        return j(timestampMillis, TimeZone.getDefault());
    }

    public static String j(long timestampMillis, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        long j10 = timeInMillis - 86400000;
        long j11 = 86400000 + timeInMillis;
        if (timestampMillis < timeInMillis || timestampMillis >= j11) {
            return (timestampMillis < j10 || timestampMillis >= timeInMillis) ? "" : "昨天";
        }
        return "今天";
    }

    public static String k() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    public static String l(long date) {
        return new SimpleDateFormat("HH").format(new Date(date));
    }

    public static Date m() {
        return new Date();
    }

    public static String n(long timestampMillis) {
        return o(timestampMillis, TimeZone.getDefault());
    }

    public static String o(long timestampMillis, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        long j10 = timeInMillis - 86400000;
        long j11 = timeInMillis + 86400000;
        long j12 = 86400000 + j11;
        if (timestampMillis >= timeInMillis && timestampMillis < j11) {
            return "今天";
        }
        if (timestampMillis < j11 || timestampMillis >= j12) {
            return (timestampMillis < j10 || timestampMillis >= timeInMillis) ? "" : "昨天";
        }
        return "明天";
    }

    public static String p(long date) {
        return new SimpleDateFormat("yyyy.MM.dd").format(new Date(date));
    }

    public static String q(long date) {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(date));
    }

    public static String r() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    public static String s(long date) {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(date));
    }

    public static String t() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()).substring(14, 16);
    }

    public static String u(long dateDate) {
        return new SimpleDateFormat("MM月dd日").format(Long.valueOf(dateDate));
    }

    public static String v(long dateDate) {
        return new SimpleDateFormat("MM月dd日 HH:mm").format(Long.valueOf(dateDate));
    }

    public static String w(long dateDate) {
        return new SimpleDateFormat("yyyy").format(Long.valueOf(dateDate));
    }

    public static String x(String sformat) {
        return new SimpleDateFormat(sformat).format(new Date());
    }

    public static boolean y(String ddate) {
        Date dateJ = J(ddate);
        GregorianCalendar gregorianCalendar = (GregorianCalendar) Calendar.getInstance();
        gregorianCalendar.setTime(dateJ);
        int i10 = gregorianCalendar.get(1);
        if (i10 % 400 == 0) {
            return true;
        }
        return i10 % 4 == 0 && i10 % 100 != 0;
    }

    public static boolean z(long time) {
        Date date = new Date(time);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date).equals(simpleDateFormat.format(new Date()));
    }
}
