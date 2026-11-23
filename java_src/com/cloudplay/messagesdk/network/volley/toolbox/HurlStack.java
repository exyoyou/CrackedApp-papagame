package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.AuthFailureError;
import com.cloudplay.messagesdk.network.volley.Request;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.client.methods.HttpDeleteHC4;
import org.apache.http.client.methods.HttpOptionsHC4;
import org.apache.http.client.methods.HttpPutHC4;
import org.apache.http.client.methods.HttpTraceHC4;

/* JADX INFO: loaded from: classes9.dex */
public class HurlStack extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UrlRewriter f24078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SSLSocketFactory f24079b;

    public interface UrlRewriter extends com.cloudplay.messagesdk.network.volley.toolbox.UrlRewriter {
    }

    static class a extends FilterInputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HttpURLConnection f24080a;

        a(HttpURLConnection httpURLConnection) {
            super(HurlStack.b(httpURLConnection));
            this.f24080a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f24080a.disconnect();
        }
    }

    public HurlStack() {
        this(null);
    }

    private static boolean a(int i10, int i11) {
        return (i10 == 4 || (100 <= i11 && i11 < 200) || i11 == 204 || i11 == 304) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.f24078a = urlRewriter;
        this.f24079b = sSLSocketFactory;
    }

    private void b(HttpURLConnection httpURLConnection, Request<?> request) throws AuthFailureError, IOException {
        byte[] bArrB = request.b();
        if (bArrB != null) {
            a(httpURLConnection, request, bArrB);
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.toolbox.b
    public g a(Request<?> request, Map<String, String> map) throws AuthFailureError, IOException {
        String strS = request.s();
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(request.f());
        UrlRewriter urlRewriter = this.f24078a;
        if (urlRewriter != null) {
            String strRewriteUrl = urlRewriter.rewriteUrl(strS);
            if (strRewriteUrl == null) {
                throw new IOException("URL blocked by rewriter: " + strS);
            }
            strS = strRewriteUrl;
        }
        HttpURLConnection httpURLConnectionA = a(new URL(strS), request);
        try {
            for (String str : map2.keySet()) {
                httpURLConnectionA.setRequestProperty(str, (String) map2.get(str));
            }
            a(httpURLConnectionA, request);
            int responseCode = httpURLConnectionA.getResponseCode();
            if (responseCode != -1) {
                if (!a(request.g(), responseCode)) {
                    g gVar = new g(responseCode, a(httpURLConnectionA.getHeaderFields()));
                    httpURLConnectionA.disconnect();
                    return gVar;
                }
                return new g(responseCode, a(httpURLConnectionA.getHeaderFields()), httpURLConnectionA.getContentLength(), a(request, httpURLConnectionA));
            }
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        } catch (Throwable th) {
            if (0 == 0) {
                httpURLConnectionA.disconnect();
            }
            throw th;
        }
    }

    static List<com.cloudplay.messagesdk.network.volley.d> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    arrayList.add(new com.cloudplay.messagesdk.network.volley.d(entry.getKey(), it2.next()));
                }
            }
        }
        return arrayList;
    }

    protected InputStream a(Request<?> request, HttpURLConnection httpURLConnection) {
        return new a(httpURLConnection);
    }

    protected HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    private HttpURLConnection a(URL url, Request<?> request) throws IOException {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection httpURLConnectionA = a(url);
        int iQ = request.q();
        httpURLConnectionA.setConnectTimeout(iQ);
        httpURLConnectionA.setReadTimeout(iQ);
        httpURLConnectionA.setUseCaches(false);
        httpURLConnectionA.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.f24079b) != null) {
            ((HttpsURLConnection) httpURLConnectionA).setSSLSocketFactory(sSLSocketFactory);
        }
        return httpURLConnectionA;
    }

    void a(HttpURLConnection httpURLConnection, Request<?> request) throws AuthFailureError, IOException {
        switch (request.g()) {
            case -1:
                byte[] bArrJ = request.j();
                if (bArrJ != null) {
                    httpURLConnection.setRequestMethod("POST");
                    a(httpURLConnection, request, bArrJ);
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                b(httpURLConnection, request);
                return;
            case 2:
                httpURLConnection.setRequestMethod(HttpPutHC4.METHOD_NAME);
                b(httpURLConnection, request);
                return;
            case 3:
                httpURLConnection.setRequestMethod(HttpDeleteHC4.METHOD_NAME);
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod(HttpOptionsHC4.METHOD_NAME);
                return;
            case 6:
                httpURLConnection.setRequestMethod(HttpTraceHC4.METHOD_NAME);
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                b(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private void a(HttpURLConnection httpURLConnection, Request<?> request, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", request.c());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(a(request, httpURLConnection, bArr.length));
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    protected OutputStream a(Request<?> request, HttpURLConnection httpURLConnection, int i10) throws IOException {
        return httpURLConnection.getOutputStream();
    }
}
