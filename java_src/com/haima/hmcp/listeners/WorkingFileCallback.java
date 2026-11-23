package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface WorkingFileCallback {
    void onWorking(List<CloudFile> list);

    void onWorkingFail(int i10, String str);
}
