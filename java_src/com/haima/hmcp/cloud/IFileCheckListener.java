package com.haima.hmcp.cloud;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
interface IFileCheckListener extends IBaseCheckListener {
    void onCheckComplete(List<InternalCloudFile> list);
}
