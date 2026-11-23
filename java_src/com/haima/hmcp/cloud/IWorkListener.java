package com.haima.hmcp.cloud;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
interface IWorkListener {
    void onError(InternalCloudFile internalCloudFile, String str);

    void onFinish(ArrayList<InternalCloudFile> arrayList);

    boolean onHangUp();

    void onStop(int i10, String str, List<InternalCloudFile> list);

    void onSuccess(InternalCloudFile internalCloudFile);
}
