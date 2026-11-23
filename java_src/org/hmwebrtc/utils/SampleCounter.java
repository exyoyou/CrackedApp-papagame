package org.hmwebrtc.utils;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes10.dex */
public class SampleCounter {
    private static final long LOG_MAX_INTERVAL_MS = 10000;
    private static final String TAG = "TimeDiff";
    private int mCount;
    private long mLastLogoutTimeMs;
    private int mSampleCount;
    private String mStringList = "";
    private String mTagName;

    public SampleCounter(String str) {
        if (TextUtils.isEmpty(str)) {
            str = TAG + hashCode();
        }
        this.mTagName = str;
        this.mSampleCount = 0;
        this.mCount = 0;
    }

    private String ToString() {
        String str = this.mTagName + " startTime:" + this.mLastLogoutTimeMs + ",count:" + this.mSampleCount + ",values:[" + this.mStringList + "]";
        this.mStringList = "";
        this.mSampleCount = 0;
        this.mCount = 0;
        this.mLastLogoutTimeMs = System.currentTimeMillis();
        return str;
    }

    private void log(long j10) {
        ToString();
        this.mLastLogoutTimeMs = j10;
    }

    public void add(int i10) {
        set(this.mSampleCount + i10);
    }

    public void set(int i10) {
        this.mSampleCount = i10;
        this.mCount++;
        if (this.mStringList.isEmpty()) {
            this.mStringList += this.mSampleCount;
        } else {
            this.mStringList += "," + this.mSampleCount;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mLastLogoutTimeMs == 0) {
            this.mLastLogoutTimeMs = jCurrentTimeMillis;
        }
        if (jCurrentTimeMillis - this.mLastLogoutTimeMs > 10000) {
            log(jCurrentTimeMillis);
        }
    }
}
