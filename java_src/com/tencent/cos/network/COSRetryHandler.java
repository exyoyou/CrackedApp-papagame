package com.tencent.cos.network;

import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class COSRetryHandler {
    public static synchronized boolean retryRequest(int i10, int i11, Exception exc) {
        if (i10 >= i11) {
            return false;
        }
        if (exc instanceof SocketTimeoutException) {
            return true;
        }
        return exc instanceof InterruptedException;
    }
}
