package com.sigmob.sdk.downloader.core.connection;

import com.sigmob.sdk.downloader.i;
import com.sigmob.sdk.downloader.j;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class c implements com.sigmob.sdk.downloader.core.connection.a, com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f80476f = "DownloadUrlConnection";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected URLConnection f80477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f80478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private URL f80479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f80480e;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Proxy f80481a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f80482b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f80483c;

        public a a(int readTimeout) {
            this.f80482b = Integer.valueOf(readTimeout);
            return this;
        }

        public a b(int connectTimeout) {
            this.f80483c = Integer.valueOf(connectTimeout);
            return this;
        }

        public a a(Proxy proxy) {
            this.f80481a = proxy;
            return this;
        }
    }

    public static class b implements com.sigmob.sdk.downloader.core.connection.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a f80484a;

        public b() {
            this(null);
        }

        @Override // com.sigmob.sdk.downloader.core.connection.a.b
        public com.sigmob.sdk.downloader.core.connection.a a(String originUrl) throws IOException {
            return new c(originUrl, this.f80484a);
        }

        public b(a configuration) {
            this.f80484a = configuration;
        }

        com.sigmob.sdk.downloader.core.connection.a a(URL url) throws IOException {
            return new c(url, this.f80484a);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.downloader.core.connection.c$c, reason: collision with other inner class name */
    static final class C1026c implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f80485a;

        C1026c() {
        }

        @Override // com.sigmob.sdk.downloader.i
        public String a() {
            return this.f80485a;
        }

        @Override // com.sigmob.sdk.downloader.i
        public void a(com.sigmob.sdk.downloader.core.connection.a originalConnection, com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a originalConnected, Map<String, List<String>> headerProperties) throws IOException {
            c cVar = (c) originalConnection;
            int i10 = 0;
            for (int iD = originalConnected.d(); j.a(iD); iD = cVar.d()) {
                cVar.b();
                i10++;
                if (i10 > 10) {
                    throw new ProtocolException("Too many redirect requests: " + i10);
                }
                String strA = j.a(originalConnected, iD);
                this.f80485a = strA;
                URI uriCreate = URI.create(strA);
                if (uriCreate != null && !uriCreate.isAbsolute()) {
                    try {
                        this.f80485a = ((c) originalConnection).f80479d.toURI().resolve(uriCreate).toString();
                    } catch (Throwable unused) {
                    }
                }
                cVar.f80479d = new URL(this.f80485a);
                cVar.h();
                com.sigmob.sdk.downloader.core.c.b(headerProperties, cVar);
                cVar.f80477b.connect();
            }
        }
    }

    public c(String originUrl) throws IOException {
        this(originUrl, (a) null);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a a() throws IOException {
        Map<String, List<String>> mapC = c();
        this.f80477b.connect();
        this.f80480e.a(this, this, mapC);
        return this;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public String b(String key) {
        return this.f80477b.getRequestProperty(key);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public String c(String name) {
        return this.f80477b.getHeaderField(name);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public int d() throws IOException {
        URLConnection uRLConnection = this.f80477b;
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public InputStream e() throws IOException {
        return this.f80477b.getInputStream();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public Map<String, List<String>> f() {
        return this.f80477b.getHeaderFields();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public String g() {
        return this.f80480e.a();
    }

    void h() throws IOException {
        com.sigmob.sdk.downloader.core.c.b(f80476f, "config connection for " + this.f80479d);
        a aVar = this.f80478c;
        this.f80477b = (aVar == null || aVar.f80481a == null) ? this.f80479d.openConnection() : this.f80479d.openConnection(this.f80478c.f80481a);
        URLConnection uRLConnection = this.f80477b;
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).setInstanceFollowRedirects(false);
        }
        a aVar2 = this.f80478c;
        if (aVar2 != null) {
            if (aVar2.f80482b != null) {
                this.f80477b.setReadTimeout(this.f80478c.f80482b.intValue());
            }
            if (this.f80478c.f80483c != null) {
                this.f80477b.setConnectTimeout(this.f80478c.f80483c.intValue());
            }
        }
    }

    public c(String originUrl, a configuration) throws IOException {
        this(new URL(originUrl), configuration);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void b() {
        try {
            InputStream inputStream = this.f80477b.getInputStream();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException | Exception unused) {
        }
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public Map<String, List<String>> c() {
        return this.f80477b.getRequestProperties();
    }

    public c(URL url, a configuration) throws IOException {
        this(url, configuration, new C1026c());
    }

    public c(URL url, a configuration, i redirectHandler) throws IOException {
        this.f80478c = configuration;
        this.f80479d = url;
        this.f80480e = redirectHandler;
        h();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void a(String name, String value) {
        this.f80477b.addRequestProperty(name, value);
    }

    c(URLConnection connection) {
        this(connection, new C1026c());
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public boolean a(String method) throws ProtocolException {
        URLConnection uRLConnection = this.f80477b;
        if (!(uRLConnection instanceof HttpURLConnection)) {
            return false;
        }
        ((HttpURLConnection) uRLConnection).setRequestMethod(method);
        return true;
    }

    c(URLConnection connection, i redirectHandler) {
        this.f80477b = connection;
        this.f80479d = connection.getURL();
        this.f80480e = redirectHandler;
    }
}
