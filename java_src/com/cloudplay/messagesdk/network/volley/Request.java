package com.cloudplay.messagesdk.network.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes9.dex */
public abstract class Request<T> implements Comparable<Request<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g.a f23980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f23981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f23982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f23983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f23984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Response.ErrorListener f23985f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Integer f23986g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RequestQueue f23987h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f23988i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f23989j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f23990k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f23991l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f23992m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RetryPolicy f23993n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Cache.a f23994o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object f23995p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private NetworkRequestCompleteListener f23996q;

    public interface Method {
        public static final int DELETE = 3;
        public static final int DEPRECATED_GET_OR_POST = -1;
        public static final int GET = 0;
        public static final int HEAD = 4;
        public static final int OPTIONS = 5;
        public static final int PATCH = 7;
        public static final int POST = 1;
        public static final int PUT = 2;
        public static final int TRACE = 6;
    }

    interface NetworkRequestCompleteListener {
        void onNoUsableResponseReceived(Request<?> request);

        void onResponseReceived(Request<?> request, Response<?> response);
    }

    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f24002a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f24003b;

        a(String str, long j10) {
            this.f24002a = str;
            this.f24003b = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            Request.this.f23980a.a(this.f24002a, this.f24003b);
            Request.this.f23980a.a(Request.this.toString());
        }
    }

    public Request(int i10, String str, Response.ErrorListener errorListener) {
        this.f23980a = g.a.f24053c ? new g.a() : null;
        this.f23984e = new Object();
        this.f23988i = true;
        this.f23989j = false;
        this.f23990k = false;
        this.f23991l = false;
        this.f23992m = false;
        this.f23994o = null;
        this.f23981b = i10;
        this.f23982c = str;
        this.f23985f = errorListener;
        a((RetryPolicy) new b());
        this.f23983d = c(str);
    }

    private static int c(String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> a(RetryPolicy retryPolicy) {
        this.f23993n = retryPolicy;
        return this;
    }

    protected abstract Response<T> a(f fVar);

    protected abstract void a(T t10);

    protected VolleyError b(VolleyError volleyError) {
        return volleyError;
    }

    public Cache.a d() {
        return this.f23994o;
    }

    public String e() {
        String strS = s();
        int iG = g();
        if (iG == 0 || iG == -1) {
            return strS;
        }
        return Integer.toString(iG) + '-' + strS;
    }

    public Map<String, String> f() throws AuthFailureError {
        return Collections.emptyMap();
    }

    public int g() {
        return this.f23981b;
    }

    protected Map<String, String> h() throws AuthFailureError {
        return null;
    }

    protected String i() {
        return "UTF-8";
    }

    @Deprecated
    public byte[] j() throws AuthFailureError {
        Map<String, String> mapL = l();
        if (mapL == null || mapL.size() <= 0) {
            return null;
        }
        return a(mapL, m());
    }

    @Deprecated
    public String k() {
        return c();
    }

    @Deprecated
    protected Map<String, String> l() throws AuthFailureError {
        return h();
    }

    @Deprecated
    protected String m() {
        return i();
    }

    public Priority n() {
        return Priority.NORMAL;
    }

    public RetryPolicy o() {
        return this.f23993n;
    }

    public Object p() {
        return this.f23995p;
    }

    public final int q() {
        return o().getCurrentTimeout();
    }

    public int r() {
        return this.f23983d;
    }

    public String s() {
        return this.f23982c;
    }

    public boolean t() {
        boolean z10;
        synchronized (this.f23984e) {
            z10 = this.f23990k;
        }
        return z10;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(r());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(u() ? "[X] " : "[ ] ");
        sb2.append(s());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(n());
        sb2.append(" ");
        sb2.append(this.f23986g);
        return sb2.toString();
    }

    public boolean u() {
        boolean z10;
        synchronized (this.f23984e) {
            z10 = this.f23989j;
        }
        return z10;
    }

    public void v() {
        synchronized (this.f23984e) {
            this.f23990k = true;
        }
    }

    void w() {
        NetworkRequestCompleteListener networkRequestCompleteListener;
        synchronized (this.f23984e) {
            networkRequestCompleteListener = this.f23996q;
        }
        if (networkRequestCompleteListener != null) {
            networkRequestCompleteListener.onNoUsableResponseReceived(this);
        }
    }

    public final boolean x() {
        return this.f23988i;
    }

    public final boolean y() {
        return this.f23992m;
    }

    public final boolean z() {
        return this.f23991l;
    }

    public void a(String str) {
        if (g.a.f24053c) {
            this.f23980a.a(str, Thread.currentThread().getId());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> b(Object obj) {
        this.f23995p = obj;
        return this;
    }

    void a(int i10) {
        RequestQueue requestQueue = this.f23987h;
        if (requestQueue != null) {
            requestQueue.a(this, i10);
        }
    }

    void b(String str) {
        RequestQueue requestQueue = this.f23987h;
        if (requestQueue != null) {
            requestQueue.c(this);
        }
        if (g.a.f24053c) {
            long id2 = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new a(str, id2));
            } else {
                this.f23980a.a(str, id2);
                this.f23980a.a(toString());
            }
        }
    }

    public String c() {
        return "application/x-www-form-urlencoded; charset=" + i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> a(RequestQueue requestQueue) {
        this.f23987h = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> a(Cache.a aVar) {
        this.f23994o = aVar;
        return this;
    }

    public void a() {
        synchronized (this.f23984e) {
            this.f23989j = true;
            this.f23985f = null;
        }
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    sb2.append(URLEncoder.encode(entry.getKey(), str));
                    sb2.append('=');
                    sb2.append(URLEncoder.encode(entry.getValue(), str));
                    sb2.append(Typography.amp);
                } else {
                    throw new IllegalArgumentException(String.format("Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null.", entry.getKey(), entry.getValue()));
                }
            }
            return sb2.toString().getBytes(str);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Encoding not supported: " + str, e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> b(int i10) {
        this.f23986g = Integer.valueOf(i10);
        return this;
    }

    public byte[] b() throws AuthFailureError {
        Map<String, String> mapH = h();
        if (mapH == null || mapH.size() <= 0) {
            return null;
        }
        return a(mapH, i());
    }

    public void a(VolleyError volleyError) {
        Response.ErrorListener errorListener;
        synchronized (this.f23984e) {
            errorListener = this.f23985f;
        }
        if (errorListener != null) {
            errorListener.onErrorResponse(volleyError);
        }
    }

    void a(NetworkRequestCompleteListener networkRequestCompleteListener) {
        synchronized (this.f23984e) {
            this.f23996q = networkRequestCompleteListener;
        }
    }

    void a(Response<?> response) {
        NetworkRequestCompleteListener networkRequestCompleteListener;
        synchronized (this.f23984e) {
            networkRequestCompleteListener = this.f23996q;
        }
        if (networkRequestCompleteListener != null) {
            networkRequestCompleteListener.onResponseReceived(this, response);
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(Request<T> request) {
        Priority priorityN = n();
        Priority priorityN2 = request.n();
        return priorityN == priorityN2 ? this.f23986g.intValue() - request.f23986g.intValue() : priorityN2.ordinal() - priorityN.ordinal();
    }
}
