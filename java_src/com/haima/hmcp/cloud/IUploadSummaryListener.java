package com.haima.hmcp.cloud;

import com.haima.hmcp.listeners.BatchCloudOperationListener;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface IUploadSummaryListener {
    boolean onHangUp();

    void onUploadComplete(List<BatchCloudOperationListener.FileStatus> list, List<BatchCloudOperationListener.FileStatus> list2);

    void onUploadError(int i10, String str);
}
