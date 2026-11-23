package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CancelCallback {
    void onCancelFail(CloudFile cloudFile, int i10, String str);

    void onCanceled(List<CloudFile> list);
}
