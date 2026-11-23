package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class HttpDeleteHC4 extends HttpRequestBaseHC4 {
    public static final String METHOD_NAME = "DELETE";

    public HttpDeleteHC4() {
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpDeleteHC4(URI uri) {
        setURI(uri);
    }

    public HttpDeleteHC4(String str) {
        setURI(URI.create(str));
    }
}
