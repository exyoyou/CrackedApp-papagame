package com.tencent.cos.task.listener;

import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.COSResult;

/* JADX INFO: loaded from: classes2.dex */
public interface ITaskListener<T1 extends COSRequest, T2 extends COSResult> {
    void onFailed(T1 t10, T2 t11);

    void onSuccess(T1 t10, T2 t11);
}
