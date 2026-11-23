package com.haima.hmcp.business;

/* JADX INFO: loaded from: classes5.dex */
public interface IRetryPolicy {
    int getCurrentRetryCount();

    int getCurrentTimeout();
}
