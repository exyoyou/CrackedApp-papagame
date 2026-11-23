package com.tencent.cos.task.listener;

import com.tencent.cos.model.COSResult;

/* JADX INFO: loaded from: classes2.dex */
public interface ITaskStateListener {
    void onCancel();

    void onError(int i10, String str);

    void onFail();

    void onPause();

    void onResponse(COSResult cOSResult);

    void onRetry();

    void onSendBegin();

    void onSendFinish();

    void onTimeout();
}
