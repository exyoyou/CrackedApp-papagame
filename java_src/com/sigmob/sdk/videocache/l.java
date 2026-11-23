package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes3.dex */
public class l implements t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f81950c = 5;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static OkHttpClient f81951d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile long f81952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile String f81953b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputStream f81954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private u f81955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.sourcestorage.c f81956g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.headers.b f81957h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Response f81958i;

    public l(t source) {
        this.f81952a = -2147483648L;
        this.f81953b = "video/mp4";
        this.f81955f = source.d();
        this.f81956g = source.e();
        this.f81957h = source.f();
    }

    private void h() throws p {
        try {
            SigmobLog.d("Read content info from " + this.f81955f.f81989a);
            Response responseA = a(0L, 10000);
            if (responseA == null || !responseA.isSuccessful()) {
                throw new p("Fail to fetchContentInfo: " + this.f81955f.f81989a);
            }
            ResponseBody responseBodyBody = responseA.body();
            if (responseBodyBody != null) {
                this.f81952a = (int) responseBodyBody.getContentLength();
                if (responseBodyBody.get$contentType() != null) {
                    this.f81953b = responseBodyBody.get$contentType().getMediaType();
                }
            }
            u uVar = new u(this.f81955f.f81989a, this.f81952a, this.f81953b);
            this.f81955f = uVar;
            this.f81956g.a(uVar.f81989a, uVar);
        } catch (IOException e10) {
            SigmobLog.e("Error fetching info from " + this.f81955f.f81989a, e10);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public int a(byte[] buffer) throws p {
        InputStream inputStream = this.f81954e;
        if (inputStream == null) {
            throw new p("Error reading data from " + this.f81955f.f81989a + ": connection is absent!");
        }
        try {
            return inputStream.read(buffer, 0, buffer.length);
        } catch (InterruptedIOException e10) {
            throw new k("Reading source " + this.f81955f.f81989a + " is interrupted", e10);
        } catch (IOException e11) {
            throw new p("Error reading data from " + this.f81955f.f81989a, e11);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public void b() throws p {
        try {
            q.a(this.f81954e);
        } catch (ArrayIndexOutOfBoundsException e10) {
            SigmobLog.e("Error closing connection correctly. Should happen only on SigmobAndroid L. Until good solution is not know, just ignore this issue :(", e10);
        } catch (IllegalArgumentException e11) {
            e = e11;
            throw new RuntimeException("Wait... but why? WTF!? If you read it on your device log, please", e);
        } catch (NullPointerException e12) {
            e = e12;
            throw new RuntimeException("Wait... but why? WTF!? If you read it on your device log, please", e);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public synchronized String c() throws p {
        if (TextUtils.isEmpty(this.f81955f.f81991c)) {
            h();
        }
        return this.f81955f.f81991c;
    }

    @Override // com.sigmob.sdk.videocache.t
    public u d() {
        return this.f81955f;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.sourcestorage.c e() {
        return this.f81956g;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.headers.b f() {
        return this.f81957h;
    }

    @Override // com.sigmob.sdk.videocache.t
    public String g() {
        return this.f81955f.f81989a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f81955f + "}";
    }

    public l(String url) {
        this(url, com.sigmob.sdk.videocache.sourcestorage.d.a());
    }

    @Override // com.sigmob.sdk.videocache.t
    public long a() throws p {
        if (this.f81952a == -2147483648L) {
            h();
        }
        return this.f81952a;
    }

    public l(String url, com.sigmob.sdk.videocache.sourcestorage.c sourceInfoStorage) {
        this(url, sourceInfoStorage, new com.sigmob.sdk.videocache.headers.a());
    }

    private long a(Response response, long offset) throws IOException {
        int iCode = response.code();
        int iContentLength = (int) response.body().getContentLength();
        if (iCode == 200) {
            return iContentLength;
        }
        return iCode == 206 ? ((long) iContentLength) + offset : this.f81952a;
    }

    public l(String url, com.sigmob.sdk.videocache.sourcestorage.c sourceInfoStorage, com.sigmob.sdk.videocache.headers.b headerInjector) {
        this.f81952a = -2147483648L;
        this.f81953b = "video/mp4";
        this.f81956g = (com.sigmob.sdk.videocache.sourcestorage.c) n.a(sourceInfoStorage);
        this.f81957h = (com.sigmob.sdk.videocache.headers.b) n.a(headerInjector);
        u uVarA = sourceInfoStorage.a(url);
        this.f81955f = uVarA == null ? new u(url, -2147483648L, q.a(url)) : uVarA;
    }

    private Response a(long offset, int timeout) throws p, IOException {
        if (f81951d == null) {
            OkHttpClient.Builder builderConnectionPool = new OkHttpClient().newBuilder().connectionPool(new ConnectionPool());
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f81951d = builderConnectionPool.connectTimeout(10000L, timeUnit).readTimeout(10000L, timeUnit).writeTimeout(10000L, timeUnit).build();
        }
        String strHeader = this.f81955f.f81989a;
        Response response = this.f81958i;
        if (response != null && offset > 0) {
            try {
                response.close();
            } catch (Throwable unused) {
            }
            this.f81958i = null;
            q.a(this.f81954e);
        }
        if (this.f81958i == null) {
            int i10 = 0;
            boolean zIsRedirect = false;
            do {
                Request.Builder builder = new Request.Builder();
                builder.get();
                builder.url(strHeader);
                a(builder, strHeader);
                if (offset > 0) {
                    builder.addHeader("Range", "bytes=" + offset + "-");
                }
                Response responseExecute = f81951d.newCall(builder.build()).execute();
                this.f81958i = responseExecute;
                if (responseExecute.isRedirect()) {
                    strHeader = this.f81958i.header("Location");
                    zIsRedirect = this.f81958i.isRedirect();
                    i10++;
                }
                if (i10 > 5) {
                    throw new p("Too many redirects: " + i10);
                }
            } while (zIsRedirect);
        }
        return this.f81958i;
    }

    @Override // com.sigmob.sdk.videocache.t
    public void a(long offset) throws p {
        try {
            Response responseA = a(offset, -1);
            this.f81958i = responseA;
            ResponseBody responseBodyBody = responseA.body();
            if (responseBodyBody != null && responseBodyBody.get$contentType() != null) {
                this.f81953b = responseBodyBody.get$contentType().getMediaType();
            }
            this.f81952a = a(this.f81958i, offset);
            this.f81954e = new BufferedInputStream(responseBodyBody.byteStream(), 8192);
            u uVar = new u(this.f81955f.f81989a, this.f81952a, this.f81953b);
            this.f81955f = uVar;
            this.f81956g.a(uVar.f81989a, uVar);
        } catch (IOException e10) {
            throw new p("Error opening connection for " + this.f81955f.f81989a + " with offset " + offset, e10);
        }
    }

    private void a(Request.Builder requestBuilder, String url) {
        for (Map.Entry<String, String> entry : this.f81957h.a(url).entrySet()) {
            requestBuilder.addHeader(entry.getKey(), entry.getValue());
        }
    }
}
