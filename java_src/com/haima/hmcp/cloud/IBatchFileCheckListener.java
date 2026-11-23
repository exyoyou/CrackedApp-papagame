package com.haima.hmcp.cloud;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface IBatchFileCheckListener extends IBaseCheckListener {
    void onCheckComplete(List<InternalCloudFile> list, List<InternalCloudFile> list2);
}
