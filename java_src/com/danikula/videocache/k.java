package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
public class k implements q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f26069f = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.danikula.videocache.sourcestorage.c f26070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y2.b f26071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private r f26072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HttpURLConnection f26073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputStream f26074e;

    class a implements HostnameVerifier {
        a() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    class b implements X509TrustManager {
        b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    class c implements HostnameVerifier {
        c() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public k(String str) {
        this(str, com.danikula.videocache.sourcestorage.d.a());
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    private void b() throws Throwable {
        HttpURLConnection httpURLConnectionG;
        ?? r10 = 0;
        InputStream inputStream = null;
        try {
            try {
                httpURLConnectionG = g(0L, 10000);
                try {
                    long jC = c(httpURLConnectionG);
                    String contentType = httpURLConnectionG.getContentType();
                    inputStream = httpURLConnectionG.getInputStream();
                    r rVar = new r(this.f26072c.f26100a, jC, contentType);
                    this.f26072c = rVar;
                    this.f26070a.a(rVar.f26100a, rVar);
                    p.c(inputStream);
                    r10 = httpURLConnectionG;
                } catch (IOException e10) {
                    e = e10;
                    h.f("Error fetching info from " + this.f26072c.f26100a, e);
                    p.c(inputStream);
                    r10 = httpURLConnectionG;
                    if (httpURLConnectionG == null) {
                        return;
                    }
                }
            } catch (Throwable th) {
                th = th;
                p.c(inputStream);
                if (r10 != 0) {
                    r10.disconnect();
                }
                throw th;
            }
        } catch (IOException e11) {
            e = e11;
            httpURLConnectionG = null;
        } catch (Throwable th2) {
            th = th2;
            r10 = 0;
            p.c(inputStream);
            if (r10 != 0) {
                r10.disconnect();
            }
            throw th;
        }
        r10.disconnect();
    }

    private long c(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    private void f(HttpURLConnection httpURLConnection, String str) {
        Map<String, String> mapA = this.f26071b.a(str);
        if (mapA == null) {
            return;
        }
        h.e("****** injectCustomHeaders ****** :" + mapA.size());
        for (Map.Entry<String, String> entry : mapA.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    private HttpURLConnection g(long j10, int i10) throws IOException, ProxyCacheException {
        boolean z10;
        HttpURLConnection httpURLConnection;
        String headerField = this.f26072c.f26100a;
        int i11 = 0;
        do {
            z10 = true;
            if (headerField.startsWith("https")) {
                httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new a());
                TrustManager[] trustManagerArr = {new b()};
                try {
                    SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.SSL);
                    sSLContext.init(null, trustManagerArr, new SecureRandom());
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLContext.getSocketFactory());
                    ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new c());
                } catch (KeyManagementException e10) {
                    e10.printStackTrace();
                } catch (NoSuchAlgorithmException e11) {
                    e11.printStackTrace();
                }
            } else {
                httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
            }
            f(httpURLConnection, headerField);
            if (j10 > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + j10 + "-");
            }
            if (i10 > 0) {
                httpURLConnection.setConnectTimeout(i10);
                httpURLConnection.setReadTimeout(i10);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 301 && responseCode != 302 && responseCode != 303) {
                z10 = false;
            }
            if (z10) {
                headerField = httpURLConnection.getHeaderField("Location");
                i11++;
                httpURLConnection.disconnect();
            }
            if (i11 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i11);
            }
        } while (z10);
        return httpURLConnection;
    }

    private long h(HttpURLConnection httpURLConnection, long j10, int i10) throws IOException {
        long jC = c(httpURLConnection);
        if (i10 == 200) {
            return jC;
        }
        return i10 == 206 ? jC + j10 : this.f26072c.f26101b;
    }

    @Override // com.danikula.videocache.q
    public void a(long j10) throws ProxyCacheException {
        try {
            HttpURLConnection httpURLConnectionG = g(j10, -1);
            this.f26073d = httpURLConnectionG;
            String contentType = httpURLConnectionG.getContentType();
            this.f26074e = new BufferedInputStream(this.f26073d.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f26073d;
            r rVar = new r(this.f26072c.f26100a, h(httpURLConnection, j10, httpURLConnection.getResponseCode()), contentType);
            this.f26072c = rVar;
            this.f26070a.a(rVar.f26100a, rVar);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error opening connection for " + this.f26072c.f26100a + " with offset " + j10, e10);
        }
    }

    @Override // com.danikula.videocache.q
    public void close() throws ProxyCacheException {
        HttpURLConnection httpURLConnection = this.f26073d;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e10) {
                h.f("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(", e10);
            } catch (IllegalArgumentException e11) {
                e = e11;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e12) {
                e = e12;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    public synchronized String d() throws ProxyCacheException {
        if (TextUtils.isEmpty(this.f26072c.f26102c)) {
            b();
        }
        return this.f26072c.f26102c;
    }

    public String e() {
        return this.f26072c.f26100a;
    }

    @Override // com.danikula.videocache.q
    public synchronized long length() throws ProxyCacheException {
        if (this.f26072c.f26101b == -2147483648L) {
            b();
        }
        return this.f26072c.f26101b;
    }

    @Override // com.danikula.videocache.q
    public int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.f26074e;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.f26072c.f26100a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e10) {
            throw new InterruptedProxyCacheException("Reading source " + this.f26072c.f26100a + " is interrupted", e10);
        } catch (IOException e11) {
            throw new ProxyCacheException("Error reading data from " + this.f26072c.f26100a, e11);
        }
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f26072c + "}";
    }

    public k(String str, com.danikula.videocache.sourcestorage.c cVar) {
        this(str, cVar, new y2.a());
    }

    public k(String str, com.danikula.videocache.sourcestorage.c cVar, y2.b bVar) {
        this.f26070a = (com.danikula.videocache.sourcestorage.c) n.d(cVar);
        this.f26071b = (y2.b) n.d(bVar);
        r rVar = cVar.get(str);
        this.f26072c = rVar == null ? new r(str, -2147483648L, p.g(str)) : rVar;
    }

    public k(k kVar) {
        this.f26072c = kVar.f26072c;
        this.f26070a = kVar.f26070a;
        this.f26071b = kVar.f26071b;
    }
}
