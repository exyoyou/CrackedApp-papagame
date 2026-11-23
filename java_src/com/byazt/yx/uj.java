package com.byazt.yx;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.http.client.utils.DateUtils;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 15})
public final class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadLocal<DateFormat> f22479c = new ThreadLocal<DateFormat>() { // from class: com.byazt.yx.uj.1
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(com.byazt.kh.ve.sp);
            return simpleDateFormat;
        }
    };
    public static final String[] tt = {DateUtils.PATTERN_RFC1123, "EEEE, dd-MMM-yy HH:mm:ss zzz", DateUtils.PATTERN_ASCTIME, "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
    public static final DateFormat[] ve = new DateFormat[15];

    public static Date c(String str) {
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date date = f22479c.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return date;
        }
        String[] strArr = tt;
        synchronized (strArr) {
            int length = strArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                DateFormat[] dateFormatArr = ve;
                DateFormat simpleDateFormat = dateFormatArr[i10];
                if (simpleDateFormat == null) {
                    simpleDateFormat = new SimpleDateFormat(tt[i10], Locale.US);
                    simpleDateFormat.setTimeZone(com.byazt.kh.ve.sp);
                    dateFormatArr[i10] = simpleDateFormat;
                }
                parsePosition.setIndex(0);
                Date date2 = simpleDateFormat.parse(str, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return date2;
                }
            }
            return null;
        }
    }

    public static String c(Date date) {
        return f22479c.get().format(date);
    }
}
