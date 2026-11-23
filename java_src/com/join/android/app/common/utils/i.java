package com.join.android.app.common.utils;

import com.kuaishou.weapon.p0.bg;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public class i {
    public static String a(long begin) {
        long jCurrentTimeMillis = System.currentTimeMillis() - begin;
        if (jCurrentTimeMillis < 60000) {
            return "刚刚";
        }
        if (jCurrentTimeMillis < bg.f74510s) {
            return (jCurrentTimeMillis / 60000) + "分钟前";
        }
        if (jCurrentTimeMillis < 86400000) {
            return (jCurrentTimeMillis / bg.f74510s) + "小时前";
        }
        if (jCurrentTimeMillis < 2592000000L) {
            return (jCurrentTimeMillis / 86400000) + "天前";
        }
        if (jCurrentTimeMillis < 31104000000L) {
            return (jCurrentTimeMillis / 2592000000L) + "月前";
        }
        return (jCurrentTimeMillis / 31104000000L) + "年前";
    }

    public static String b(long begin) {
        long jCurrentTimeMillis = System.currentTimeMillis() - begin;
        if (jCurrentTimeMillis < 60000) {
            return "刚刚";
        }
        if (jCurrentTimeMillis < bg.f74510s) {
            return (jCurrentTimeMillis / 60000) + "分钟前";
        }
        if (jCurrentTimeMillis < 86400000) {
            return (jCurrentTimeMillis / bg.f74510s) + "小时前";
        }
        if (jCurrentTimeMillis < 2592000000L) {
            return (jCurrentTimeMillis / 86400000) + "天前";
        }
        if (jCurrentTimeMillis < 31104000000L) {
            return (jCurrentTimeMillis / 2592000000L) + "月前";
        }
        return (jCurrentTimeMillis / 31104000000L) + "年前";
    }

    public static String c(long begin) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = begin - jCurrentTimeMillis;
        if (h(begin)) {
            return "今天";
        }
        if (j10 >= 0) {
            if (j10 < bg.f74510s) {
                return "今天";
            }
            if (j10 < 86400000) {
                return "明天";
            }
            if (j10 < 2592000000L) {
                return (j10 / 86400000) + "天后";
            }
            if (j10 < 31104000000L) {
                return (j10 / 2592000000L) + "月后";
            }
            return (j10 / 31104000000L) + "年后";
        }
        long j11 = jCurrentTimeMillis - begin;
        if (j11 < 60000 || j11 < bg.f74510s) {
            return "今天";
        }
        if (j11 < 86400000) {
            return "昨天";
        }
        if (j11 < 2592000000L) {
            return (j11 / 86400000) + "天前";
        }
        if (j11 < 31104000000L) {
            return (j11 / 2592000000L) + "月前";
        }
        return (j11 / 31104000000L) + "年前";
    }

    public static String d(long begin) {
        long jCurrentTimeMillis = begin - System.currentTimeMillis();
        if (jCurrentTimeMillis < 0) {
            return "已开服";
        }
        if (jCurrentTimeMillis < bg.f74510s) {
            return (jCurrentTimeMillis / 60000) + "天";
        }
        if (jCurrentTimeMillis < 86400000) {
            return (jCurrentTimeMillis / bg.f74510s) + "天";
        }
        if (jCurrentTimeMillis < 2592000000L) {
            return (jCurrentTimeMillis / 86400000) + "天";
        }
        if (jCurrentTimeMillis < 31104000000L) {
            return (jCurrentTimeMillis / 2592000000L) + "月";
        }
        return (jCurrentTimeMillis / 31104000000L) + "年";
    }

    public static String e(long seconds) {
        String str;
        String str2;
        String str3;
        if (seconds <= 0) {
            return "0秒";
        }
        long j10 = seconds / 86400;
        long j11 = (seconds % 86400) / 3600;
        long j12 = (seconds % 3600) / 60;
        long j13 = seconds % 60;
        Object[] objArr = new Object[4];
        String str4 = "";
        if (j10 > 0) {
            str = j10 + "天";
        } else {
            str = "";
        }
        objArr[0] = str;
        if (j11 > 0) {
            str2 = j11 + "时";
        } else {
            str2 = "";
        }
        objArr[1] = str2;
        if (j12 > 0) {
            str3 = j12 + "分";
        } else {
            str3 = "";
        }
        objArr[2] = str3;
        if (j13 > 0) {
            str4 = j13 + "秒";
        }
        objArr[3] = str4;
        return String.format("%s%s%s%s", objArr).trim();
    }

    public static String f(long time) {
        int i10 = (int) (time / 1000);
        int i11 = i10 % 60;
        int i12 = (i10 / 60) % 60;
        int i13 = i10 / 3600;
        return i13 > 0 ? String.format("%02d:%02d:%02d", Integer.valueOf(i13), Integer.valueOf(i12), Integer.valueOf(i11)) : String.format("%02d:%02d", Integer.valueOf(i12), Integer.valueOf(i11));
    }

    public static String g(long time) {
        Date date = new Date(time);
        String[] strArr = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i10 = calendar.get(7) - 1;
        if (i10 < 0) {
            i10 = 0;
        }
        return strArr[i10];
    }

    public static boolean h(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        int i10 = calendar.get(1);
        int i11 = calendar.get(2);
        int i12 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        return i10 == calendar.get(1) && i11 == calendar.get(2) && i12 == calendar.get(5);
    }

    public static String i(String dateFormat, Long millSec) {
        return new SimpleDateFormat(dateFormat).format(new Date(millSec.longValue()));
    }
}
