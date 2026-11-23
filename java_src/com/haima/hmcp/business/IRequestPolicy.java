package com.haima.hmcp.business;

import com.haima.hmcp.volley.RequestQueue;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public interface IRequestPolicy {
    void onGetResponse(ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap, RequestQueue requestQueue, String str);

    void onPostRequest(ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap, RequestQueue requestQueue, CharsetJsonRequest charsetJsonRequest, String str);
}
