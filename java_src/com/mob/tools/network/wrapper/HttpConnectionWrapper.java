package com.mob.tools.network.wrapper;

import com.mob.tools.network.HttpConnection;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpConnectionWrapper implements HttpConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tools.network.HttpConnection f75522a;

    private HttpConnectionWrapper(cn.fly.tools.network.HttpConnection httpConnection) {
        this.f75522a = httpConnection;
    }

    public static HttpConnectionWrapper adapt(cn.fly.tools.network.HttpConnection httpConnection) {
        if (httpConnection == null) {
            return null;
        }
        return new HttpConnectionWrapper(httpConnection);
    }

    @Override // com.mob.tools.network.HttpConnection
    public InputStream getErrorStream() throws IOException {
        return this.f75522a.getErrorStream();
    }

    @Override // com.mob.tools.network.HttpConnection
    public Map<String, List<String>> getHeaderFields() throws IOException {
        return this.f75522a.getHeaderFields();
    }

    @Override // com.mob.tools.network.HttpConnection
    public InputStream getInputStream() throws IOException {
        return this.f75522a.getInputStream();
    }

    @Override // com.mob.tools.network.HttpConnection
    public int getResponseCode() throws IOException {
        return this.f75522a.getResponseCode();
    }
}
