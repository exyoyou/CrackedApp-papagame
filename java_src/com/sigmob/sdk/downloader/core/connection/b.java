package com.sigmob.sdk.downloader.core.connection;

import com.sigmob.sdk.downloader.j;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.List;
import java.util.Map;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes3.dex */
public class b implements com.sigmob.sdk.downloader.core.connection.a, com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final OkHttpClient f80470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Response f80471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Request.Builder f80472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Request f80473e;

    public static class a implements com.sigmob.sdk.downloader.core.connection.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private OkHttpClient.Builder f80474a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile OkHttpClient f80475b;

        @Override // com.sigmob.sdk.downloader.core.connection.a.b
        public com.sigmob.sdk.downloader.core.connection.a a(String url) throws IOException {
            if (this.f80475b == null) {
                synchronized (a.class) {
                    if (this.f80475b == null) {
                        OkHttpClient.Builder builder = this.f80474a;
                        this.f80475b = builder != null ? builder.build() : new OkHttpClient();
                        this.f80474a = null;
                    }
                }
            }
            return new b(this.f80475b, url);
        }

        public a a(OkHttpClient.Builder builder) {
            this.f80474a = builder;
            return this;
        }

        public OkHttpClient.Builder a() {
            if (this.f80474a == null) {
                this.f80474a = new OkHttpClient.Builder();
            }
            return this.f80474a;
        }
    }

    b(OkHttpClient client, String url) {
        this(client, new Request.Builder().url(url));
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a a() throws IOException {
        Request requestBuild = this.f80472d.build();
        this.f80473e = requestBuild;
        this.f80471c = this.f80470b.newCall(requestBuild).execute();
        return this;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public String b(String key) {
        Request request = this.f80473e;
        return request != null ? request.header(key) : this.f80472d.build().header(key);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public String c(String name) {
        Response response = this.f80471c;
        if (response == null) {
            return null;
        }
        return response.header(name);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public int d() throws IOException {
        Response response = this.f80471c;
        if (response != null) {
            return response.code();
        }
        throw new IOException("Please invoke execute first!");
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public InputStream e() throws IOException {
        Response response = this.f80471c;
        if (response == null) {
            throw new IOException("Please invoke execute first!");
        }
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody != null) {
            return responseBodyBody.byteStream();
        }
        throw new IOException("no body found on response!");
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public Map<String, List<String>> f() {
        Response response = this.f80471c;
        if (response == null) {
            return null;
        }
        return response.headers().toMultimap();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a
    public String g() {
        Response responsePriorResponse = this.f80471c.priorResponse();
        if (responsePriorResponse != null && this.f80471c.isSuccessful() && j.a(responsePriorResponse.code())) {
            return this.f80471c.request().url().getUrl();
        }
        return null;
    }

    b(OkHttpClient client, Request.Builder requestBuilder) {
        this.f80470b = client;
        this.f80472d = requestBuilder;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void a(String name, String value) {
        this.f80472d.addHeader(name, value);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void b() {
        this.f80473e = null;
        Response response = this.f80471c;
        if (response != null) {
            response.close();
        }
        this.f80471c = null;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public Map<String, List<String>> c() {
        Request requestBuild = this.f80473e;
        if (requestBuild == null) {
            requestBuild = this.f80472d.build();
        }
        return requestBuild.headers().toMultimap();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public boolean a(String method) throws ProtocolException {
        this.f80472d.method(method, null);
        return true;
    }
}
