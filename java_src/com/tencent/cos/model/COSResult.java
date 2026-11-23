package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;

/* JADX INFO: loaded from: classes2.dex */
public abstract class COSResult {
    public int code = -1;
    public String msg = null;

    public abstract void getResponse(HttpResponse httpResponse);
}
