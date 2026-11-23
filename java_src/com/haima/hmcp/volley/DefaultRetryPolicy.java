package com.haima.hmcp.volley;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;
    private final float mBackoffMultiplier;
    private int mCurrentRetryCount;
    private int mCurrentTimeoutMs;
    private final int mMaxNumRetries;

    public DefaultRetryPolicy() {
        this(DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public float getBackoffMultiplier() {
        return this.mBackoffMultiplier;
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
        int i10 = this.mCurrentTimeoutMs;
        this.mCurrentTimeoutMs = i10 + ((int) (i10 * this.mBackoffMultiplier));
        if (!hasAttemptRemaining()) {
            throw volleyError;
        }
    }

    public DefaultRetryPolicy(int i10, int i11, float f10) {
        this.mCurrentTimeoutMs = i10;
        this.mMaxNumRetries = i11;
        this.mBackoffMultiplier = f10;
    }
}
