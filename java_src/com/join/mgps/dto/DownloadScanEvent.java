package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadScanEvent implements Serializable {
    private String pkg;
    private int status;
    private DownloadTask task;

    public String getPkg() {
        return this.pkg;
    }

    public int getStatus() {
        return this.status;
    }

    public DownloadTask getTask() {
        return this.task;
    }

    public void setPkg(String pkg) {
        this.pkg = pkg;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setTask(DownloadTask task) {
        this.task = task;
    }
}
