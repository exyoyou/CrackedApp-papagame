package com.czhj.volley;

/* JADX INFO: loaded from: classes9.dex */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 0.0f;
    public static final int DEFAULT_CONNECT_TIMEOUT_MS = 5000;
    public static final int DEFAULT_MAX_RETRIES = 2;
    public static final int DEFAULT_TIMEOUT_MS = 5000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f25728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f25729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25732e;

    public DefaultRetryPolicy() {
        this(5000, 2, 0.0f);
    }

    public float getBackoffMultiplier() {
        return this.f25729b;
    }

    @Override // com.czhj.volley.RetryPolicy
    public int getCurrentConnectTimeoutMs() {
        return this.f25730c;
    }

    @Override // com.czhj.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f25732e;
    }

    @Override // com.czhj.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f25731d;
    }

    protected boolean hasAttemptRemaining() {
        return this.f25732e <= this.f25728a;
    }

    @Override // com.czhj.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        this.f25732e++;
        int i10 = this.f25731d;
        this.f25731d = i10 + ((int) (i10 * this.f25729b));
        if (!hasAttemptRemaining()) {
            throw volleyError;
        }
    }

    public DefaultRetryPolicy(int i10, int i11, float f10) {
        this.f25730c = i10;
        this.f25731d = i10;
        this.f25728a = i11;
        this.f25729b = f10;
    }

    public DefaultRetryPolicy(int i10, int i11, int i12, float f10) {
        this.f25730c = i10;
        this.f25731d = i11;
        this.f25728a = i12;
        this.f25729b = f10;
    }
}
