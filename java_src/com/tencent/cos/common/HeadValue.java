package com.tencent.cos.common;

import io.netty.handler.codec.http.HttpHeaders;

/* JADX INFO: loaded from: classes2.dex */
public final class HeadValue {
    private static HeadValue value;
    public final String JSON = "application/json";
    public final String FORM_DATA = HttpHeaders.Values.MULTIPART_FORM_DATA;
    public final String ACCPET_ALL = "*/*";
    public final String KEEP_ALIVE = "Keep-Alive";

    private HeadValue() {
    }

    public static synchronized HeadValue getInstance() {
        if (value == null) {
            value = new HeadValue();
        }
        return value;
    }
}
