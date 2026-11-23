package com.haima.hmcp.business;

import com.haima.hmcp.utils.LogUtil;
import com.haima.hmcp.volley.RequestQueue;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class RequestWaitPolicy implements IRequestPolicy {
    private static final String TAG = "RequestWaitPolicy";
    private static ConcurrentHashMap<String, CharsetJsonRequest> tempMap;

    @Override // com.haima.hmcp.business.IRequestPolicy
    public void onGetResponse(ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap, RequestQueue requestQueue, String str) {
        if (concurrentHashMap != null && concurrentHashMap.containsKey(str)) {
            LogUtil.i(TAG, "requestTag==mRequestTagMap remove requestTag==" + str);
            concurrentHashMap.remove(str);
        }
        ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap2 = tempMap;
        if (concurrentHashMap2 == null || concurrentHashMap2.isEmpty() || concurrentHashMap == null) {
            return;
        }
        for (String str2 : tempMap.keySet()) {
            if (!concurrentHashMap.containsKey(str2)) {
                LogUtil.i(TAG, "requestTag==add reqeust to mRequestQueue from tempMap==key is" + str2);
                requestQueue.add(tempMap.get(str2));
                concurrentHashMap.put(str2, tempMap.get(str2));
                tempMap.remove(str2);
            }
        }
    }

    @Override // com.haima.hmcp.business.IRequestPolicy
    public void onPostRequest(ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap, RequestQueue requestQueue, CharsetJsonRequest charsetJsonRequest, String str) {
        if (requestQueue == null || concurrentHashMap == null || charsetJsonRequest == null) {
            LogUtil.i(TAG, "requestTag==mRequestTagMap=" + concurrentHashMap + "=mRequestQueue=" + requestQueue + "==request=" + charsetJsonRequest);
            return;
        }
        if (tempMap == null) {
            tempMap = new ConcurrentHashMap<>();
        }
        if (tempMap.containsKey(str)) {
            LogUtil.i(TAG, "requestTag==tempMap already has requestTag then replace it=" + str);
            tempMap.replace(str, charsetJsonRequest);
            return;
        }
        if (concurrentHashMap.containsKey(str)) {
            LogUtil.i(TAG, "requestTag==mRequestTagMap already has requestTag then put it in tempMap=" + str);
            tempMap.put(str, charsetJsonRequest);
            return;
        }
        LogUtil.i(TAG, "requestTag==mRequestTagMap and mRequestQueue add requestTag==" + str);
        concurrentHashMap.put(str, charsetJsonRequest);
        requestQueue.add(charsetJsonRequest);
    }
}
