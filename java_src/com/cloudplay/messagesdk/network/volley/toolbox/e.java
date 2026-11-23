package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.AuthFailureError;
import com.cloudplay.messagesdk.network.volley.Request;
import java.io.IOException;
import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public class e implements HttpStack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final HttpClient f24089a;

    public static final class a extends HttpEntityEnclosingRequestBase {
        public a(String str) {
            setURI(URI.create(str));
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return "PATCH";
        }
    }

    public e(HttpClient httpClient) {
        this.f24089a = httpClient;
    }

    protected void a(HttpUriRequest httpUriRequest) throws IOException {
    }

    @Override // com.cloudplay.messagesdk.network.volley.toolbox.HttpStack
    public HttpResponse performRequest(Request<?> request, Map<String, String> map) throws AuthFailureError, IOException {
        HttpUriRequest httpUriRequestA = a(request, map);
        a(httpUriRequestA, map);
        a(httpUriRequestA, request.f());
        a(httpUriRequestA);
        HttpParams params = httpUriRequestA.getParams();
        int iQ = request.q();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, iQ);
        return this.f24089a.execute(httpUriRequestA);
    }

    private static void a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    static HttpUriRequest a(Request<?> request, Map<String, String> map) throws AuthFailureError {
        switch (request.g()) {
            case -1:
                byte[] bArrJ = request.j();
                if (bArrJ != null) {
                    HttpPost httpPost = new HttpPost(request.s());
                    httpPost.addHeader("Content-Type", request.k());
                    httpPost.setEntity(new ByteArrayEntity(bArrJ));
                    return httpPost;
                }
                return new HttpGet(request.s());
            case 0:
                return new HttpGet(request.s());
            case 1:
                HttpPost httpPost2 = new HttpPost(request.s());
                httpPost2.addHeader("Content-Type", request.c());
                a(httpPost2, request);
                return httpPost2;
            case 2:
                HttpPut httpPut = new HttpPut(request.s());
                httpPut.addHeader("Content-Type", request.c());
                a(httpPut, request);
                return httpPut;
            case 3:
                return new HttpDelete(request.s());
            case 4:
                return new HttpHead(request.s());
            case 5:
                return new HttpOptions(request.s());
            case 6:
                return new HttpTrace(request.s());
            case 7:
                a aVar = new a(request.s());
                aVar.addHeader("Content-Type", request.c());
                a(aVar, request);
                return aVar;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Request<?> request) throws AuthFailureError {
        byte[] bArrB = request.b();
        if (bArrB != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(bArrB));
        }
    }
}
