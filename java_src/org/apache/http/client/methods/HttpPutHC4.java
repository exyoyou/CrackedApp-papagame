package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class HttpPutHC4 extends HttpEntityEnclosingRequestBaseHC4 {
    public static final String METHOD_NAME = "PUT";

    public HttpPutHC4() {
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpPutHC4(URI uri) {
        setURI(uri);
    }

    public HttpPutHC4(String str) {
        setURI(URI.create(str));
    }
}
