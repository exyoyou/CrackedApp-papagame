package com.join.android.app.common.http;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes5.dex */
public class e<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final OkHttpClient f34603a = new OkHttpClient.Builder().connectTimeout(5, TimeUnit.SECONDS).retryOnConnectionFailure(true).build();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f34604b = "UTF-8";

    class a implements Callback {
        a() {
        }

        public void a(Request arg0, IOException arg1) {
        }

        public void b(Response arg0) throws IOException {
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e10) {
            a(call.request(), e10);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            b(response);
        }
    }

    static {
        System.setProperty("http.maxConnections", "2");
    }

    public static String a(String url, String name, String value) {
        return url + "?" + name + SimpleComparison.EQUAL_TO_OPERATION + value;
    }

    public static String b(String url, List<BasicNameValuePair> params) {
        return url + "?" + e(params);
    }

    public static void c(Request request) {
        f34603a.newCall(request).enqueue(new a());
    }

    public static Response d(Request request) throws IOException {
        return f34603a.newCall(request).execute();
    }

    public static String e(List<BasicNameValuePair> params) {
        return URLEncodedUtils.format(params, "UTF-8");
    }

    public static void f(String url, Callback responseCallback) {
        f34603a.newCall(new Request.Builder().url(url).build()).enqueue(responseCallback);
    }

    public static OkHttpClient g() {
        return f34603a;
    }

    public static String h(String url) throws IOException {
        Response responseD = d(new Request.Builder().url(url).build());
        if (responseD.isSuccessful()) {
            return responseD.body().string();
        }
        throw new IOException("Unexpected code " + responseD);
    }
}
