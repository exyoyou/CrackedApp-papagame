package com.cloudplay.messagesdk.network.volley;

/* JADX INFO: loaded from: classes9.dex */
public class Response<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f24017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Cache.a f24018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VolleyError f24019c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f24020d;

    public interface ErrorListener {
        void onErrorResponse(VolleyError volleyError);
    }

    public interface Listener<T> {
        void onResponse(T t10);
    }

    private Response(T t10, Cache.a aVar) {
        this.f24020d = false;
        this.f24017a = t10;
        this.f24018b = aVar;
        this.f24019c = null;
    }

    public static <T> Response<T> a(T t10, Cache.a aVar) {
        return new Response<>(t10, aVar);
    }

    public static <T> Response<T> a(VolleyError volleyError) {
        return new Response<>(volleyError);
    }

    public boolean a() {
        return this.f24019c == null;
    }

    private Response(VolleyError volleyError) {
        this.f24020d = false;
        this.f24017a = null;
        this.f24018b = null;
        this.f24019c = volleyError;
    }
}
