package com.haima.hmcp.utils;

import android.content.Context;
import com.haima.hmcp.Constants;
import com.haima.hmcp.widgets.CountDownTimer;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class CountDownUtil {
    public static final String CID_CACHE_TIMER = "cidCacheTimer";
    private static final long CID_COUNT_DOWN_INTERVAL = 10000;
    private static final String TAG = "CountDownUtil";
    private static Map<String, CidCacheTimer> mCountdownMap = new HashMap();

    private static class CidCacheTimer extends CountDownTimer {
        CountDownListener listener;
        String tag;

        CidCacheTimer(long j10, long j11, String str, CountDownListener countDownListener) {
            super(j10, j11);
            this.listener = countDownListener;
            this.tag = str;
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onFinish() {
            CountDownListener countDownListener = this.listener;
            if (countDownListener != null) {
                countDownListener.onFinish();
            }
            CountDownUtil.cancel(this.tag);
        }

        @Override // com.haima.hmcp.widgets.CountDownTimer
        public void onTick(long j10) {
            CountDownListener countDownListener = this.listener;
            if (countDownListener != null) {
                countDownListener.onTick(j10);
            }
        }
    }

    public interface CountDownListener {
        void onFinish();

        void onTick(long j10);
    }

    public static void cancel(String str) {
        if (!mCountdownMap.containsKey(str) || mCountdownMap.get(str) == null) {
            return;
        }
        LogUtils.d(TAG, str + " cancel");
        mCountdownMap.get(str).cancel();
        mCountdownMap.get(str).listener = null;
        mCountdownMap.get(str).tag = null;
        mCountdownMap.remove(str);
    }

    public static void cancelAll() {
        Iterator<Map.Entry<String, CidCacheTimer>> it2 = mCountdownMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().cancel();
        }
        mCountdownMap.clear();
    }

    public static void createCidCacheTimer(final Context context, final long j10) {
        if (j10 <= 0) {
            LogUtils.e(TAG, "cidCacheInterval wrong value: " + j10);
            return;
        }
        LogUtils.d(TAG, "createCidCacheTimer(): --- " + j10 + "s");
        newTimer(Long.MAX_VALUE, 10000L, CID_CACHE_TIMER, new CountDownListener() { // from class: com.haima.hmcp.utils.CountDownUtil.1
            @Override // com.haima.hmcp.utils.CountDownUtil.CountDownListener
            public void onFinish() {
            }

            @Override // com.haima.hmcp.utils.CountDownUtil.CountDownListener
            public void onTick(long j11) {
                long jCurrentTimeMillis = System.currentTimeMillis() + (j10 * 1000);
                DataUtils.getSharedInstance(context.getApplicationContext()).putPreferences(DataUtils.CID_CACHE_EXPIRE_TIME, jCurrentTimeMillis);
                LogUtils.d(CountDownUtil.TAG, "cidCacheTimer onTick:  --- " + CountDownUtil.toDateStr(jCurrentTimeMillis));
            }
        });
    }

    public static void newTimer(long j10, long j11, String str, CountDownListener countDownListener) {
        cancel(str);
        mCountdownMap.put(str, new CidCacheTimer(j10, j11, str, countDownListener));
        start(str);
    }

    private static void prepareCancle(String str, Context context) {
        if (mCountdownMap.containsKey(str) && mCountdownMap.get(str) != null && str.equals(CID_CACHE_TIMER)) {
            long preferences = DataUtils.getSharedInstance(context.getApplicationContext()).getPreferences(DataUtils.CID_CACHE_INTERVAL, Constants.DEFAULT_CID_CACHE_INTERVAL);
            if (preferences > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() + (preferences * 1000);
                DataUtils.getSharedInstance(context.getApplicationContext()).putPreferences(DataUtils.CID_CACHE_EXPIRE_TIME, jCurrentTimeMillis);
                LogUtils.d(TAG, str + "update expireTime:  --- " + toDateStr(jCurrentTimeMillis));
            }
        }
    }

    private static void start(String str) {
        CidCacheTimer cidCacheTimer = mCountdownMap.get(str);
        if (cidCacheTimer != null) {
            cidCacheTimer.start();
        }
    }

    public static String toDateStr(long j10) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(Long.valueOf(j10));
    }

    public static void cancel(String str, Context context) {
        prepareCancle(str, context);
        cancel(str);
    }
}
