package com.alipay.sdk.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7169c = "application/octet-stream;binary/octet-stream";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7171b;

    private a(Context context) {
        this(context, null);
    }

    private String a() {
        return this.f7171b;
    }

    private void c(String str) {
        this.f7171b = str;
    }

    private URL d() {
        try {
            return new URL(this.f7171b);
        } catch (Exception unused) {
            return null;
        }
    }

    private HttpHost e() {
        URL urlD;
        String strI = i();
        if ((strI != null && !strI.contains("wap")) || (urlD = d()) == null) {
            return null;
        }
        "https".equalsIgnoreCase(urlD.getProtocol());
        String property = System.getProperty("https.proxyHost");
        String property2 = System.getProperty("https.proxyPort");
        if (TextUtils.isEmpty(property)) {
            return null;
        }
        return new HttpHost(property, Integer.parseInt(property2));
    }

    private HttpHost f() {
        NetworkInfo networkInfoH = h();
        if (networkInfoH != null && networkInfoH.isAvailable() && networkInfoH.getType() == 0) {
            String defaultHost = Proxy.getDefaultHost();
            int defaultPort = Proxy.getDefaultPort();
            if (defaultHost != null) {
                return new HttpHost(defaultHost, defaultPort);
            }
        }
        return null;
    }

    private HttpHost g() {
        URL urlD;
        String strI = i();
        if ((strI != null && !strI.contains("wap")) || (urlD = d()) == null) {
            return null;
        }
        "https".equalsIgnoreCase(urlD.getProtocol());
        String property = System.getProperty("https.proxyHost");
        String property2 = System.getProperty("https.proxyPort");
        if (TextUtils.isEmpty(property)) {
            return null;
        }
        return new HttpHost(property, Integer.parseInt(property2));
    }

    private NetworkInfo h() {
        try {
            return ((ConnectivityManager) this.f7170a.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    private String i() {
        try {
            NetworkInfo networkInfoH = h();
            if (networkInfoH == null || !networkInfoH.isAvailable()) {
                return "none";
            }
            return networkInfoH.getType() == 1 ? NetworkUtil.NETWORK_TYPE_WIFI : networkInfoH.getExtraInfo().toLowerCase();
        } catch (Exception unused) {
            return "none";
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    public final HttpResponse b(byte[] bArr, List<Header> list) throws Throwable {
        URL urlD;
        HttpHost httpHost;
        HttpUriRequest httpGet;
        HttpPost httpPost;
        b bVarA = b.a();
        if (bVarA == null) {
            return null;
        }
        try {
            HttpParams params = bVarA.f7174a.getParams();
            String strI = i();
            if ((strI == null || strI.contains("wap")) && (urlD = d()) != null) {
                "https".equalsIgnoreCase(urlD.getProtocol());
                String property = System.getProperty("https.proxyHost");
                String property2 = System.getProperty("https.proxyPort");
                if (TextUtils.isEmpty(property)) {
                    httpHost = null;
                } else {
                    httpHost = new HttpHost(property, Integer.parseInt(property2));
                }
            } else {
                httpHost = null;
            }
            if (httpHost != null) {
                params.setParameter("http.route.default-proxy", httpHost);
            }
            if (bArr == null || bArr.length == 0) {
                httpGet = new HttpGet(this.f7171b);
            } else {
                httpPost = new HttpPost(this.f7171b);
                ByteArrayEntity byteArrayEntity = new ByteArrayEntity(bArr);
                byteArrayEntity.setContentType(f7169c);
                httpPost.setEntity(byteArrayEntity);
                httpPost.addHeader("Accept-Charset", "UTF-8");
                httpPost.addHeader("Connection", "Keep-Alive");
                httpPost.addHeader("Keep-Alive", "timeout=180, max=100");
            }
            if (list != null) {
                httpGet = httpPost;
                Iterator<Header> it2 = list.iterator();
                while (it2.hasNext()) {
                    httpGet.addHeader(it2.next());
                }
            }
            httpGet = httpPost;
            HttpResponse httpResponseH = bVarA.h(httpGet);
            Header[] headers = httpResponseH.getHeaders("X-Hostname");
            if (headers != null && headers.length > 0 && headers[0] != null) {
                httpResponseH.getHeaders("X-Hostname")[0].toString();
            }
            Header[] headers2 = httpResponseH.getHeaders("X-ExecuteTime");
            if (headers2 != null && headers2.length > 0 && headers2[0] != null) {
                httpResponseH.getHeaders("X-ExecuteTime")[0].toString();
            }
            return httpResponseH;
        } catch (Throwable th) {
            try {
                ClientConnectionManager connectionManager = bVarA.f7174a.getConnectionManager();
                if (connectionManager != null) {
                    connectionManager.shutdown();
                    b.f7173c = null;
                }
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public a(Context context, String str) {
        this.f7170a = context;
        this.f7171b = str;
    }
}
