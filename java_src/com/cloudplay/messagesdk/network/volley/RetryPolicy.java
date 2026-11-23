package com.cloudplay.messagesdk.network.volley;

/* JADX INFO: loaded from: classes9.dex */
public interface RetryPolicy {
    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry(VolleyError volleyError) throws VolleyError;
}
