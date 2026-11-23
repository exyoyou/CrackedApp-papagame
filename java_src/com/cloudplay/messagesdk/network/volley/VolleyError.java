package com.cloudplay.messagesdk.network.volley;

/* JADX INFO: loaded from: classes9.dex */
public class VolleyError extends Exception {
    public final f networkResponse;
    private long networkTimeMs;

    public VolleyError() {
        this.networkResponse = null;
    }

    void a(long j10) {
        this.networkTimeMs = j10;
    }

    public VolleyError(f fVar) {
        this.networkResponse = fVar;
    }

    public VolleyError(Throwable th) {
        super(th);
        this.networkResponse = null;
    }
}
