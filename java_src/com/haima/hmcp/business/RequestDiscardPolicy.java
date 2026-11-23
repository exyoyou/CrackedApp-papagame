package com.haima.hmcp.business;

import com.haima.hmcp.utils.LogUtil;
import com.haima.hmcp.volley.RequestQueue;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class RequestDiscardPolicy implements IRequestPolicy {
    private static final String TAG = "RequestDiscardPolicy";

    @Override // com.haima.hmcp.business.IRequestPolicy
    public void onGetResponse(ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap, RequestQueue requestQueue, String str) {
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return;
        }
        LogUtil.i(TAG, "requestTag==mRequestTagMap remove requestTag==" + str);
        concurrentHashMap.remove(str);
    }

    @Override // com.haima.hmcp.business.IRequestPolicy
    public void onPostRequest(ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap, RequestQueue requestQueue, CharsetJsonRequest charsetJsonRequest, String str) {
        if (requestQueue == null || concurrentHashMap == null || charsetJsonRequest == null) {
            LogUtil.i(TAG, "requestTag==mRequestTagMap=" + concurrentHashMap + "=mRequestQueue=" + requestQueue + "==request=" + charsetJsonRequest);
            return;
        }
        if (concurrentHashMap.containsKey(str)) {
            LogUtil.i(TAG, "requestTag==mRequestTagMap already has requestTag==" + str);
            return;
        }
        LogUtil.i(TAG, "requestTag==mRequestTagMap and mRequestQueue add requestTag==" + str);
        concurrentHashMap.put(str, charsetJsonRequest);
        requestQueue.add(charsetJsonRequest);
    }
}
