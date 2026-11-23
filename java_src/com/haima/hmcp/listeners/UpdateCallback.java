package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface UpdateCallback {
    void onUpdateFail(int i10, String str);

    void onUpdated(List<CloudFile> list);
}
