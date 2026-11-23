package com.switfpass.pay.thread;

import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.switfpass.pay.MainApplication;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.KeyStore;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f82683a = "com.switfpass.pay.thread.d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f82684b = 6000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static d f82685c;

    public static boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) MainApplication.getContext().getSystemService("connectivity");
        return connectivityManager.getNetworkInfo(1).isAvailable() || connectivityManager.getNetworkInfo(0).isAvailable();
    }

    public static d c() {
        if (f82685c == null) {
            f82685c = new d();
        }
        return f82685c;
    }

    private static DefaultHttpClient e() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            c cVar = new c(keyStore);
            cVar.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", cVar, 443));
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception e10) {
            e10.printStackTrace();
            return new DefaultHttpClient();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c9, code lost:
    
        if (r2 != null) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r7, java.lang.String r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.switfpass.pay.thread.d.a(java.lang.String, java.lang.String):java.lang.String");
    }

    public f d(String str, JSONObject jSONObject, String str2, String str3, String str4) {
        f fVar = new f();
        if (str4 != null) {
            str = String.valueOf(str) + "?" + str4;
        }
        HttpPost httpPost = new HttpPost(str);
        if (jSONObject != null) {
            try {
                httpPost.setEntity(new StringEntity(jSONObject.toString(), "utf-8"));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        DefaultHttpClient defaultHttpClientE = e();
        try {
            defaultHttpClientE.getParams().setParameter("http.connection.timeout", Integer.valueOf(com.join.mgps.socket.entity.b.f73001c));
            defaultHttpClientE.getParams().setParameter("http.socket.timeout", Integer.valueOf(com.join.mgps.socket.entity.b.f73001c));
            try {
                try {
                    HttpResponse httpResponseExecute = defaultHttpClientE.execute(httpPost);
                    if (httpResponseExecute == null) {
                        fVar.f82700c = -3;
                        return fVar;
                    }
                    int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
                    String string = EntityUtils.toString(httpResponseExecute.getEntity());
                    if (statusCode >= 400 && statusCode <= 499) {
                        fVar.f82700c = statusCode;
                        return fVar;
                    }
                    if (statusCode >= 500 && statusCode <= 599) {
                        fVar.f82700c = statusCode;
                        return fVar;
                    }
                    if (TextUtils.isEmpty(string)) {
                        return fVar;
                    }
                    try {
                        JSONObject jSONObject2 = new JSONObject(string);
                        fVar.f82698a = jSONObject2;
                        if (jSONObject2.optInt("Ret") != 1) {
                            fVar.f(fVar.f82698a.optString("ErrInfo"));
                        }
                    } catch (JSONException e11) {
                        new StringBuilder("httpsPost failed ").append(e11.getMessage());
                        fVar.f82700c = -2;
                    }
                    return fVar;
                } catch (ConnectTimeoutException unused) {
                    fVar.f82700c = -4;
                    return fVar;
                }
            } catch (SocketTimeoutException unused2) {
                fVar.f82700c = -4;
                return fVar;
            } catch (UnknownHostException unused3) {
                fVar.f82700c = -3;
                return fVar;
            }
        } catch (IOException e12) {
            new StringBuilder("httpsPost failed ").append(e12.getMessage());
            fVar.f82700c = -3;
            return fVar;
        }
    }
}
