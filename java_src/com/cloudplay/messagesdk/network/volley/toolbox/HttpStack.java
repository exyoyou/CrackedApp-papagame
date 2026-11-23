package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.AuthFailureError;
import com.cloudplay.messagesdk.network.volley.Request;
import java.io.IOException;
import java.util.Map;
import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public interface HttpStack {
    HttpResponse performRequest(Request<?> request, Map<String, String> map) throws AuthFailureError, IOException;
}
