package com.tencent.cos.task.listener;

import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.COSResult;

/* JADX INFO: loaded from: classes2.dex */
public interface IDownloadTaskListener<T1 extends COSRequest, T2 extends COSResult> extends ITaskListener {
    void onCancel(T1 t10, T2 t11);

    void onProgress(T1 t10, long j10, long j11);
}
