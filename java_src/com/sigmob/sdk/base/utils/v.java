package com.sigmob.sdk.base.utils;

import android.os.SystemClock;
import android.view.MotionEvent;
import com.czhj.sdk.logger.SigmobLogger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class v {
    public static Long[] a(String tag, MotionEvent event) {
        if (event == null) {
            return null;
        }
        long downTime = event.getDownTime();
        long eventTime = event.getEventTime();
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.uptimeMillis();
        long j10 = downTime + jCurrentTimeMillis;
        long j11 = eventTime + jCurrentTimeMillis;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        SigmobLogger.d(tag, "convertAndLogMotionEventTimes: downTimeAbsolute = " + j10 + ", downTimeFormatted = " + simpleDateFormat.format(new Date(j10)) + ", eventTimeAbsolute = " + j11 + ", eventTimeFormatted = " + simpleDateFormat.format(new Date(j11)), new Object[0]);
        return new Long[]{Long.valueOf(j10), Long.valueOf(j11)};
    }
}
