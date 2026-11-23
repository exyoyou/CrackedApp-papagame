package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.Request;
import com.cloudplay.messagesdk.network.volley.Response;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes9.dex */
public abstract class j<T> extends Request<T> {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f24095u = String.format("application/json; charset=%s", "utf-8");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Object f24096r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Response.Listener<T> f24097s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final String f24098t;

    public j(int i10, String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(i10, str, errorListener);
        this.f24096r = new Object();
        this.f24097s = listener;
        this.f24098t = str2;
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request
    public void a() {
        super.a();
        synchronized (this.f24096r) {
            this.f24097s = null;
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request
    public byte[] b() {
        try {
            String str = this.f24098t;
            if (str == null) {
                return null;
            }
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            com.cloudplay.messagesdk.network.volley.g.e("Unsupported Encoding while trying to get the bytes of %s using %s", this.f24098t, "utf-8");
            return null;
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request
    public String c() {
        return f24095u;
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request
    @Deprecated
    public byte[] j() {
        return b();
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request
    @Deprecated
    public String k() {
        return c();
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request
    protected void a(T t10) {
        Response.Listener<T> listener;
        synchronized (this.f24096r) {
            listener = this.f24097s;
        }
        if (listener != null) {
            listener.onResponse(t10);
        }
    }
}
