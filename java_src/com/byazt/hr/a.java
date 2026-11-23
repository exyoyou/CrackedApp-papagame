package com.byazt.hr;

import com.kuaishou.weapon.p0.bg;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 34})
public class a {
    public static long c(long j10) {
        Date date = new Date();
        Date date2 = (j10 >= bg.f74510s || date.getMinutes() <= 30) ? new Date(date.getYear(), date.getMonth(), date.getDate(), date.getHours(), 0, 0) : new Date(date.getYear(), date.getMonth(), date.getDate(), date.getHours(), 30, 0);
        return c(date2.getTime(), j10);
    }

    public static String tt(long j10) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j10));
    }

    private static long c(long j10, long j11) {
        Date date = new Date(j11 + j10);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long time = date.getTime();
        com.byazt.eu.tt.c("TTMediationSDK_IntervalEffectiveTime", "old time " + j10 + " new time = " + simpleDateFormat.format(date) + " 毫秒 = " + time);
        return time;
    }
}
