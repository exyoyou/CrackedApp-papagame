package org.hmwebrtc.utils;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes10.dex */
public class TimeDiff {
    private static final long LOG_MAX_INTERVAL_MS = 20000;
    private static final String TAG = "TimeDiff";
    private String mDiffStringList = "";
    private long mLastLogoutTimeMs;
    private long mPushTimeMs;
    private long mSampleCount;
    private final String mTagName;

    public TimeDiff(String str) {
        if (TextUtils.isEmpty(str)) {
            str = TAG + hashCode();
        }
        this.mTagName = str;
        this.mPushTimeMs = 0L;
        this.mSampleCount = 0L;
    }

    private void log(long j10) {
        ToString();
        this.mLastLogoutTimeMs = j10;
    }

    public String ToString() {
        String str = this.mTagName + " startTime:" + this.mLastLogoutTimeMs + ",count:" + this.mSampleCount + ",values:[" + this.mDiffStringList + "]";
        this.mDiffStringList = "";
        this.mSampleCount = 0L;
        this.mLastLogoutTimeMs = System.currentTimeMillis();
        return str;
    }

    public void add() {
        pop();
        push();
    }

    public void pop() {
        if (this.mPushTimeMs == 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mLastLogoutTimeMs == 0) {
            this.mLastLogoutTimeMs = jCurrentTimeMillis;
        }
        if (this.mDiffStringList.isEmpty()) {
            this.mDiffStringList += (jCurrentTimeMillis - this.mPushTimeMs);
        } else {
            this.mDiffStringList += "," + (jCurrentTimeMillis - this.mPushTimeMs);
        }
        this.mSampleCount++;
        if (jCurrentTimeMillis - this.mLastLogoutTimeMs > LOG_MAX_INTERVAL_MS) {
            log(jCurrentTimeMillis);
            this.mPushTimeMs = jCurrentTimeMillis;
        }
    }

    public void push() {
        this.mPushTimeMs = System.currentTimeMillis();
    }
}
