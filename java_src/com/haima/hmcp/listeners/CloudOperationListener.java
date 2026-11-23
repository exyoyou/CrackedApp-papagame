package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.enums.CloudOperation;

/* JADX INFO: loaded from: classes5.dex */
public interface CloudOperationListener {
    void onCancel(CloudOperation cloudOperation);

    void onError(CloudOperation cloudOperation, String str);

    void onFinish(CloudOperation cloudOperation);

    void onStop(CloudOperation cloudOperation, String str);

    void onSuccess(CloudOperation cloudOperation, CloudFile cloudFile);
}
