package com.haima.hmcp.business;

import android.text.TextUtils;
import com.haima.hmcp.utils.LogUtil;
import com.haima.hmcp.volley.RetryPolicy;
import com.haima.hmcp.volley.VolleyError;

/* JADX INFO: loaded from: classes5.dex */
public class HmRetryPolicy implements RetryPolicy, IRetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public int DEFAULT_COMMON_MAX_RETRIES;
    public int DEFAULT_COMMON_TIMEOUT_MS;
    public int DEFAULT_CUSTOMT_MAX_RETRIES;
    public int DEFAULT_CUSTOM_TIMEOUT_MS;
    public final String TAG;
    private String[] configSplit;
    private float mBackoffMultiplier;
    private int mCurrentRetryCount;
    private int mCurrentTimeoutMs;
    private int mMaxNumRetries;
    private String retryConfig;

    public HmRetryPolicy(String str, boolean z10) {
        String simpleName = getClass().getSimpleName();
        this.TAG = simpleName;
        this.DEFAULT_COMMON_TIMEOUT_MS = 10000;
        this.DEFAULT_CUSTOM_TIMEOUT_MS = 10000;
        this.DEFAULT_COMMON_MAX_RETRIES = 6;
        this.DEFAULT_CUSTOMT_MAX_RETRIES = 6;
        if (!TextUtils.isEmpty(str)) {
            this.retryConfig = str;
            parseConfig(str);
            return;
        }
        if (z10) {
            this.mCurrentTimeoutMs = this.DEFAULT_CUSTOM_TIMEOUT_MS;
            this.mMaxNumRetries = this.DEFAULT_CUSTOMT_MAX_RETRIES;
            this.mBackoffMultiplier = 1.0f;
        } else {
            this.mCurrentTimeoutMs = this.DEFAULT_COMMON_TIMEOUT_MS;
            this.mMaxNumRetries = this.DEFAULT_COMMON_MAX_RETRIES;
            this.mBackoffMultiplier = 1.0f;
        }
        LogUtil.d(simpleName, "HmRetryPolicy mMaxNumRetries:" + this.mMaxNumRetries + " mCurrentTimeoutMs: " + this.mCurrentRetryCount + " mBackoffMultiplier: " + this.mBackoffMultiplier);
    }

    private void parseConfig(String str) {
        String[] strArrSplit = str.split(",");
        this.configSplit = strArrSplit;
        this.mMaxNumRetries = strArrSplit.length;
        try {
            this.mCurrentTimeoutMs = Integer.parseInt(strArrSplit[0]) * 1000;
            LogUtil.d(this.TAG, "parseConfig mMaxNumRetries:" + this.mMaxNumRetries + " mCurrentTimeoutMs: " + this.mCurrentTimeoutMs);
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.haima.hmcp.volley.RetryPolicy, com.haima.hmcp.business.IRetryPolicy
    public int getCurrentRetryCount() {
        return this.mCurrentRetryCount;
    }

    @Override // com.haima.hmcp.volley.RetryPolicy, com.haima.hmcp.business.IRetryPolicy
    public int getCurrentTimeout() {
        return this.mCurrentTimeoutMs;
    }

    protected boolean hasAttemptRemaining() {
        return this.mCurrentRetryCount <= this.mMaxNumRetries;
    }

    @Override // com.haima.hmcp.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        this.mCurrentRetryCount++;
        if (!TextUtils.isEmpty(this.retryConfig)) {
            String[] strArr = this.configSplit;
            int length = strArr.length;
            int i10 = this.mCurrentRetryCount;
            if (length >= i10 + 1) {
                try {
                    this.mCurrentTimeoutMs = Integer.parseInt(strArr[i10]) * 1000;
                    LogUtil.d(this.TAG, "retry mCurrentRetryCount:" + this.mCurrentRetryCount + " mCurrentTimeoutMs: " + this.mCurrentTimeoutMs);
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (hasAttemptRemaining()) {
            LogUtil.d(this.TAG, "retry  again");
        } else {
            LogUtil.d(this.TAG, "retry  max count");
            throw volleyError;
        }
    }

    public HmRetryPolicy(int i10, int i11, float f10) {
        this.TAG = getClass().getSimpleName();
        this.DEFAULT_COMMON_TIMEOUT_MS = 10000;
        this.DEFAULT_CUSTOM_TIMEOUT_MS = 10000;
        this.DEFAULT_COMMON_MAX_RETRIES = 6;
        this.DEFAULT_CUSTOMT_MAX_RETRIES = 6;
        this.mCurrentTimeoutMs = i10;
        this.mMaxNumRetries = i11;
        this.mBackoffMultiplier = f10;
    }
}
