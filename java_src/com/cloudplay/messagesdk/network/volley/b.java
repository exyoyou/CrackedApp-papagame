package com.cloudplay.messagesdk.network.volley;

import com.haima.hmcp.volley.DefaultRetryPolicy;

/* JADX INFO: loaded from: classes9.dex */
public class b implements RetryPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f24030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f24032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f24033d;

    public b() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    protected boolean a() {
        return this.f24031b <= this.f24032c;
    }

    @Override // com.cloudplay.messagesdk.network.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f24031b;
    }

    @Override // com.cloudplay.messagesdk.network.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f24030a;
    }

    @Override // com.cloudplay.messagesdk.network.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        this.f24031b++;
        int i10 = this.f24030a;
        this.f24030a = i10 + ((int) (i10 * this.f24033d));
        if (!a()) {
            throw volleyError;
        }
    }

    public b(int i10, int i11, float f10) {
        this.f24030a = i10;
        this.f24032c = i11;
        this.f24033d = f10;
    }
}
