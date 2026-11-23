package com.haima.hmcp.cloud.video.bean;

import com.haima.hmcp.beans.CloudFile;

/* JADX INFO: loaded from: classes5.dex */
public class KeepAliveResponseValidation {
    private CloudFile cloudFile;
    private long timeStamp;

    public boolean checkResponseValidity(long j10, CloudFile cloudFile) {
        CloudFile cloudFile2 = this.cloudFile;
        if (cloudFile2 == null || cloudFile == null) {
            return false;
        }
        return this.timeStamp == j10 && cloudFile2.getName().equals(cloudFile.getName()) && this.cloudFile.getCloudPath().equals(cloudFile.getCloudPath());
    }

    public void setCloudFile(CloudFile cloudFile) {
        this.cloudFile = cloudFile;
    }

    public void setRequestTime(long j10) {
        this.timeStamp = j10;
    }
}
