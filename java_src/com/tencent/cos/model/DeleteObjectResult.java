package com.tencent.cos.model;

import com.tencent.cos.network.HttpResponse;

/* JADX INFO: loaded from: classes2.dex */
public class DeleteObjectResult extends COSResult {
    @Override // com.tencent.cos.model.COSResult
    public void getResponse(HttpResponse httpResponse) {
        this.code = httpResponse.getRet();
        this.msg = httpResponse.getMsg();
    }
}
