package com.haima.hmcp.cloud.job;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.listeners.CloudOperationListener;

/* JADX INFO: loaded from: classes5.dex */
public class CloudFileJob {
    private CloudFile mCloudFile;
    private CloudOperationListener mListener;

    public CloudFileJob(CloudFile cloudFile, CloudOperationListener cloudOperationListener) {
        this.mCloudFile = cloudFile;
        this.mListener = cloudOperationListener;
    }

    public CloudFile getmCloudFile() {
        return this.mCloudFile;
    }

    public CloudOperationListener getmListener() {
        return this.mListener;
    }

    public void setmCloudFile(CloudFile cloudFile) {
        this.mCloudFile = cloudFile;
    }

    public void setmListener(CloudOperationListener cloudOperationListener) {
        this.mListener = cloudOperationListener;
    }
}
