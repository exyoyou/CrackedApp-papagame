package com.haima.hmcp.volley.toolbox;

import com.haima.hmcp.volley.AuthFailureError;
import com.haima.hmcp.volley.Request;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public interface HttpStack {
    org.apache.http.HttpResponse performRequest(Request<?> request, Map<String, String> map) throws AuthFailureError, IOException;
}
