package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class i implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f81940a = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.sourcestorage.c f81941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.headers.b f81942c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private u f81943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HttpURLConnection f81944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private InputStream f81945f;

    public i(t source) {
        this.f81943d = source.d();
        this.f81941b = source.e();
        this.f81942c = source.f();
    }

    private void h() throws p {
        SigmobLog.d("Read content info from " + this.f81943d.f81989a);
        try {
            HttpURLConnection httpURLConnectionA = a(0L, 3000);
            u uVar = new u(this.f81943d.f81989a, a(httpURLConnectionA), httpURLConnectionA.getContentType());
            this.f81943d = uVar;
            this.f81941b.a(uVar.f81989a, uVar);
            SigmobLog.d("Source info fetched: " + this.f81943d);
        } catch (IOException e10) {
            SigmobLog.e("Error fetching info from " + this.f81943d.f81989a, e10);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public int a(byte[] buffer) throws p {
        InputStream inputStream = this.f81945f;
        if (inputStream == null) {
            throw new p("Error reading data from " + this.f81943d.f81989a + ": connection is absent!");
        }
        try {
            return inputStream.read(buffer, 0, buffer.length);
        } catch (InterruptedIOException e10) {
            throw new k("Reading source " + this.f81943d.f81989a + " is interrupted", e10);
        } catch (IOException e11) {
            throw new p("Error reading data from " + this.f81943d.f81989a, e11);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public void b() throws p {
        HttpURLConnection httpURLConnection = this.f81944e;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e10) {
                SigmobLog.e("Error closing connection correctly. Should happen only on SigmobAndroid L. Until good solution is not know, just ignore this issue :(", e10);
            } catch (IllegalArgumentException e11) {
                e = e11;
                throw new RuntimeException("Wait... but why? WTF!? ", e);
            } catch (NullPointerException e12) {
                e = e12;
                throw new RuntimeException("Wait... but why? WTF!? ", e);
            }
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public synchronized String c() throws p {
        if (TextUtils.isEmpty(this.f81943d.f81991c)) {
            h();
        }
        return this.f81943d.f81991c;
    }

    @Override // com.sigmob.sdk.videocache.t
    public u d() {
        return this.f81943d;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.sourcestorage.c e() {
        return this.f81941b;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.headers.b f() {
        return this.f81942c;
    }

    @Override // com.sigmob.sdk.videocache.t
    public String g() {
        return this.f81943d.f81989a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f81943d + "}";
    }

    public i(String url) {
        this(url, com.sigmob.sdk.videocache.sourcestorage.d.a());
    }

    @Override // com.sigmob.sdk.videocache.t
    public synchronized long a() throws p {
        if (this.f81943d.f81990b == -2147483648L) {
            h();
        }
        return this.f81943d.f81990b;
    }

    public i(String url, com.sigmob.sdk.videocache.sourcestorage.c sourceInfoStorage) {
        this(url, sourceInfoStorage, new com.sigmob.sdk.videocache.headers.a());
    }

    private long a(HttpURLConnection connection) {
        String headerField = connection.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    public i(String url, com.sigmob.sdk.videocache.sourcestorage.c sourceInfoStorage, com.sigmob.sdk.videocache.headers.b headerInjector) {
        this.f81941b = (com.sigmob.sdk.videocache.sourcestorage.c) n.a(sourceInfoStorage);
        this.f81942c = (com.sigmob.sdk.videocache.headers.b) n.a(headerInjector);
        u uVarA = sourceInfoStorage.a(url);
        this.f81943d = uVarA == null ? new u(url, -2147483648L, q.a(url)) : uVarA;
    }

    private long a(HttpURLConnection connection, long offset, int responseCode) throws IOException {
        long jA = a(connection);
        if (responseCode == 200) {
            return jA;
        }
        return responseCode == 206 ? jA + offset : this.f81943d.f81990b;
    }

    private HttpURLConnection a(long offset, int timeout) throws p, IOException {
        String str;
        boolean z10;
        String str2 = this.f81943d.f81989a;
        HttpURLConnection httpURLConnection = this.f81944e;
        if (httpURLConnection != null && offset > 0 && httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable unused) {
            }
            this.f81944e = null;
            q.a(this.f81945f);
        }
        if (this.f81944e == null) {
            int i10 = 0;
            do {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Open connection ");
                if (offset > 0) {
                    str = " with offset " + offset;
                } else {
                    str = "";
                }
                sb2.append(str);
                sb2.append(" to ");
                sb2.append(str2);
                SigmobLog.d(sb2.toString());
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str2).openConnection();
                this.f81944e = httpURLConnection2;
                a(httpURLConnection2, str2);
                if (offset > 0) {
                    this.f81944e.setRequestProperty("Range", "bytes=" + offset + "-");
                }
                if (timeout > 0) {
                    this.f81944e.setConnectTimeout(timeout);
                    this.f81944e.setReadTimeout(timeout);
                }
                int responseCode = this.f81944e.getResponseCode();
                z10 = responseCode == 301 || responseCode == 302 || responseCode == 303;
                if (z10) {
                    String headerField = this.f81944e.getHeaderField("Location");
                    URI uriCreate = URI.create(headerField);
                    if (uriCreate != null && !uriCreate.isAbsolute()) {
                        try {
                            URI uriCreate2 = URI.create(str2);
                            if (uriCreate2 != null) {
                                headerField = uriCreate2.resolve(uriCreate).toString();
                            }
                        } catch (Throwable unused2) {
                        }
                    }
                    i10++;
                    this.f81944e.disconnect();
                    str2 = headerField;
                }
                if (i10 > 5) {
                    throw new p("Too many redirects: " + i10);
                }
            } while (z10);
        }
        return this.f81944e;
    }

    @Override // com.sigmob.sdk.videocache.t
    public void a(long offset) throws p {
        try {
            HttpURLConnection httpURLConnectionA = a(offset, 3000);
            this.f81944e = httpURLConnectionA;
            String contentType = httpURLConnectionA.getContentType();
            this.f81945f = new BufferedInputStream(this.f81944e.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f81944e;
            u uVar = new u(this.f81943d.f81989a, a(httpURLConnection, offset, httpURLConnection.getResponseCode()), contentType);
            this.f81943d = uVar;
            this.f81941b.a(uVar.f81989a, uVar);
        } catch (IOException e10) {
            throw new p("Error opening connection for " + this.f81943d.f81989a + " with offset " + offset, e10);
        }
    }

    private void a(HttpURLConnection connection, String url) {
        for (Map.Entry<String, String> entry : this.f81942c.a(url).entrySet()) {
            connection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }
}
