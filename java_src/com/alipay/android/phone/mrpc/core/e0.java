package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes7.dex */
public final class e0 implements Callable<e> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final HttpRequestRetryHandler f6912r = new o();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected z f6913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Context f6914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected c0 f6915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HttpUriRequest f6916e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CookieManager f6919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AbstractHttpEntity f6920i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HttpHost f6921j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private URL f6922k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f6923l;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f6928q;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HttpContext f6917f = new BasicHttpContext();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CookieStore f6918g = new BasicCookieStore();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f6924m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f6925n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f6926o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f6927p = null;

    public e0(z zVar, c0 c0Var) {
        this.f6913b = zVar;
        this.f6914c = zVar.f6974a;
        this.f6915d = c0Var;
    }

    private static long a(String[] strArr) {
        String str;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if ("max-age".equalsIgnoreCase(strArr[i10]) && (str = strArr[i10 + 1]) != null) {
                try {
                    return Long.parseLong(str);
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return 0L;
    }

    private e b(HttpResponse httpResponse, int i10, String str) throws Throwable {
        String str2;
        Thread.currentThread().getId();
        HttpEntity entity = httpResponse.getEntity();
        ByteArrayOutputStream byteArrayOutputStream = null;
        String str3 = null;
        if (entity == null || httpResponse.getStatusLine().getStatusCode() != 200) {
            if (entity != null) {
                return null;
            }
            httpResponse.getStatusLine().getStatusCode();
            return null;
        }
        Thread.currentThread().getId();
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                f(entity, byteArrayOutputStream2);
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                this.f6926o = false;
                this.f6913b.g(System.currentTimeMillis() - jCurrentTimeMillis);
                this.f6913b.d(byteArray.length);
                d0 d0Var = new d0(c(httpResponse), i10, str, byteArray);
                long jG = g(httpResponse);
                Header contentType = httpResponse.getEntity().getContentType();
                if (contentType != null) {
                    HashMap<String, String> mapE = e(contentType.getValue());
                    String str4 = mapE.get("charset");
                    str3 = mapE.get("Content-Type");
                    str2 = str4;
                } else {
                    str2 = null;
                }
                d0Var.a(str3);
                d0Var.f6908g = str2;
                d0Var.f6906e = System.currentTimeMillis();
                d0Var.f6907f = jG;
                try {
                    byteArrayOutputStream2.close();
                    return d0Var;
                } catch (IOException e10) {
                    throw new RuntimeException("ArrayOutputStream close error!", e10.getCause());
                }
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e11) {
                        throw new RuntimeException("ArrayOutputStream close error!", e11.getCause());
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static b c(HttpResponse httpResponse) {
        b bVar = new b();
        for (Header header : httpResponse.getAllHeaders()) {
            bVar.a(header.getName(), header.getValue());
        }
        return bVar;
    }

    private static HashMap<String, String> e(String str) {
        HashMap<String, String> map = new HashMap<>();
        for (String str2 : str.split(";")) {
            String[] strArrSplit = str2.indexOf(61) == -1 ? new String[]{"Content-Type", str2} : str2.split(SimpleComparison.EQUAL_TO_OPERATION);
            map.put(strArrSplit[0], strArrSplit[1]);
        }
        return map;
    }

    private void f(HttpEntity httpEntity, OutputStream outputStream) throws IOException {
        InputStream inputStreamC = p.c(httpEntity);
        long contentLength = httpEntity.getContentLength();
        try {
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int i10 = inputStreamC.read(bArr);
                    if (i10 == -1 || this.f6915d.f6902a) {
                        break;
                    }
                    outputStream.write(bArr, 0, i10);
                    if (this.f6915d.a() != null && contentLength > 0) {
                        this.f6915d.a();
                    }
                }
                outputStream.flush();
                f0.a(inputStreamC);
            } catch (Exception e10) {
                e10.getCause();
                throw new IOException("HttpWorker Request Error!" + e10.getLocalizedMessage());
            }
        } catch (Throwable th) {
            f0.a(inputStreamC);
            throw th;
        }
    }

    private static long g(HttpResponse httpResponse) {
        Header firstHeader = httpResponse.getFirstHeader("Cache-Control");
        if (firstHeader != null) {
            String[] strArrSplit = firstHeader.getValue().split(SimpleComparison.EQUAL_TO_OPERATION);
            if (strArrSplit.length >= 2) {
                try {
                    return a(strArrSplit);
                } catch (NumberFormatException unused) {
                }
            }
        }
        Header firstHeader2 = httpResponse.getFirstHeader("Expires");
        if (firstHeader2 != null) {
            return p.i(firstHeader2.getValue()) - System.currentTimeMillis();
        }
        return 0L;
    }

    private URI h() {
        String str = this.f6915d.f6896c;
        String str2 = this.f6923l;
        if (str2 != null) {
            str = str2;
        }
        if (str != null) {
            return new URI(str);
        }
        throw new RuntimeException("url should not be null");
    }

    private HttpUriRequest i() {
        HttpUriRequest httpUriRequest = this.f6916e;
        if (httpUriRequest != null) {
            return httpUriRequest;
        }
        if (this.f6920i == null) {
            c0 c0Var = this.f6915d;
            byte[] bArr = c0Var.f6897d;
            String strD = c0Var.d("gzip");
            if (bArr != null) {
                this.f6920i = TextUtils.equals(strD, "true") ? p.f(bArr) : new ByteArrayEntity(bArr);
                this.f6920i.setContentType(this.f6915d.f6898e);
            }
        }
        AbstractHttpEntity abstractHttpEntity = this.f6920i;
        if (abstractHttpEntity != null) {
            HttpPost httpPost = new HttpPost(h());
            httpPost.setEntity(abstractHttpEntity);
            this.f6916e = httpPost;
        } else {
            this.f6916e = new HttpGet(h());
        }
        return this.f6916e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x00db  */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public e call() throws Throwable {
        boolean z10;
        HttpHost httpHost;
        while (true) {
            try {
                NetworkInfo[] allNetworkInfo = ((ConnectivityManager) this.f6914c.getSystemService("connectivity")).getAllNetworkInfo();
                boolean z11 = true;
                if (allNetworkInfo == null) {
                    z10 = false;
                    break;
                }
                int length = allNetworkInfo.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        z10 = false;
                        break;
                    }
                    NetworkInfo networkInfo = allNetworkInfo[i10];
                    if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnectedOrConnecting()) {
                        z10 = true;
                        break;
                    }
                    i10++;
                }
                if (!z10) {
                    throw new a(1, "The network is not available");
                }
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                }
                ArrayList<Header> arrayList = this.f6915d.f6899f;
                if (arrayList != null && !arrayList.isEmpty()) {
                    Iterator<Header> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        i().addHeader(it2.next());
                    }
                }
                p.g(i());
                p.j(i());
                i().addHeader("cookie", o().getCookie(this.f6915d.f6896c));
                this.f6917f.setAttribute(HttpClientContext.COOKIE_STORE, this.f6918g);
                this.f6913b.b().h(f6912r);
                long jCurrentTimeMillis = System.currentTimeMillis();
                l();
                this.f6916e.getURI().toString();
                HttpParams params = this.f6913b.b().getParams();
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f6914c.getSystemService("connectivity")).getActiveNetworkInfo();
                HttpHost httpHost2 = null;
                if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                    httpHost = null;
                } else {
                    String defaultHost = Proxy.getDefaultHost();
                    int defaultPort = Proxy.getDefaultPort();
                    if (defaultHost != null) {
                        httpHost = new HttpHost(defaultHost, defaultPort);
                    } else {
                        httpHost = null;
                    }
                }
                if (httpHost == null || !TextUtils.equals(httpHost.getHostName(), "127.0.0.1") || httpHost.getPort() != 8087) {
                    httpHost2 = httpHost;
                }
                params.setParameter("http.route.default-proxy", httpHost2);
                HttpHost httpHost3 = this.f6921j;
                if (httpHost3 == null) {
                    URL urlN = n();
                    HttpHost httpHost4 = new HttpHost(urlN.getHost(), m(), urlN.getProtocol());
                    this.f6921j = httpHost4;
                    httpHost3 = httpHost4;
                }
                if (m() == 80) {
                    httpHost3 = new HttpHost(n().getHost());
                }
                HttpResponse httpResponseExecute = this.f6913b.b().execute(httpHost3, this.f6916e, this.f6917f);
                this.f6913b.f(System.currentTimeMillis() - jCurrentTimeMillis);
                List<Cookie> cookies = this.f6918g.getCookies();
                if (this.f6915d.f6901h) {
                    o().removeAllCookie();
                }
                if (!cookies.isEmpty()) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getDomain() != null) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(cookie.getName());
                            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                            sb2.append(cookie.getValue());
                            sb2.append("; domain=");
                            sb2.append(cookie.getDomain());
                            sb2.append(cookie.isSecure() ? "; Secure" : "");
                            o().setCookie(this.f6915d.f6896c, sb2.toString());
                            CookieSyncManager.getInstance().sync();
                        }
                    }
                }
                int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
                String reasonPhrase = httpResponseExecute.getStatusLine().getReasonPhrase();
                if (statusCode != 200) {
                    if (statusCode != 304) {
                        z11 = false;
                    }
                    if (!z11) {
                        throw new a(Integer.valueOf(httpResponseExecute.getStatusLine().getStatusCode()), httpResponseExecute.getStatusLine().getReasonPhrase());
                    }
                }
                e eVarB = b(httpResponseExecute, statusCode, reasonPhrase);
                if (((eVarB == null || eVarB.b() == null) ? -1L : eVarB.b().length) == -1 && (eVarB instanceof d0)) {
                    try {
                        Long.parseLong(((d0) eVarB).f6909h.a("Content-Length"));
                    } catch (Exception unused) {
                    }
                }
                if (this.f6915d.f6896c != null && !TextUtils.isEmpty(l())) {
                    l();
                }
                return eVarB;
            } catch (a e10) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e10.a();
                    e10.b();
                }
                e10.toString();
                throw e10;
            } catch (NullPointerException e11) {
                k();
                int i11 = this.f6924m;
                if (i11 > 0) {
                    e11.toString();
                    throw new a(0, String.valueOf(e11));
                }
                this.f6924m = i11 + 1;
            } catch (SocketTimeoutException e12) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e12.toString();
                }
                e12.toString();
                throw new a(4, String.valueOf(e12));
            } catch (URISyntaxException e13) {
                throw new RuntimeException("Url parser error!", e13.getCause());
            } catch (UnknownHostException e14) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e14.toString();
                }
                e14.toString();
                throw new a(9, String.valueOf(e14));
            } catch (SSLHandshakeException e15) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e15.toString();
                }
                e15.toString();
                throw new a(2, String.valueOf(e15));
            } catch (SSLPeerUnverifiedException e16) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e16.toString();
                }
                e16.toString();
                throw new a(2, String.valueOf(e16));
            } catch (SSLException e17) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e17.toString();
                }
                e17.toString();
                throw new a(6, String.valueOf(e17));
            } catch (NoHttpResponseException e18) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e18.toString();
                }
                e18.toString();
                throw new a(5, String.valueOf(e18));
            } catch (ConnectionPoolTimeoutException e19) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e19.toString();
                }
                e19.toString();
                throw new a(3, String.valueOf(e19));
            } catch (ConnectTimeoutException e20) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e20.toString();
                }
                e20.toString();
                throw new a(3, String.valueOf(e20));
            } catch (HttpHostConnectException e21) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e21.toString();
                }
                throw new a(8, String.valueOf(e21));
            } catch (IOException e22) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e22.toString();
                }
                e22.toString();
                throw new a(6, String.valueOf(e22));
            } catch (Exception e23) {
                k();
                if (this.f6915d.a() != null) {
                    this.f6915d.a();
                    e23.toString();
                }
                throw new a(0, String.valueOf(e23));
            }
        }
    }

    private void k() {
        HttpUriRequest httpUriRequest = this.f6916e;
        if (httpUriRequest != null) {
            httpUriRequest.abort();
        }
    }

    private String l() {
        if (!TextUtils.isEmpty(this.f6928q)) {
            return this.f6928q;
        }
        String strD = this.f6915d.d("operationType");
        this.f6928q = strD;
        return strD;
    }

    private int m() {
        URL urlN = n();
        return urlN.getPort() == -1 ? urlN.getDefaultPort() : urlN.getPort();
    }

    private URL n() {
        URL url = this.f6922k;
        if (url != null) {
            return url;
        }
        URL url2 = new URL(this.f6915d.f6896c);
        this.f6922k = url2;
        return url2;
    }

    private CookieManager o() {
        CookieManager cookieManager = this.f6919h;
        if (cookieManager != null) {
            return cookieManager;
        }
        CookieManager cookieManager2 = CookieManager.getInstance();
        this.f6919h = cookieManager2;
        return cookieManager2;
    }

    public final c0 d() {
        return this.f6915d;
    }
}
