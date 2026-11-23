package com.join.kotlin.ui.cloudarchive.data;

/* JADX INFO: loaded from: classes4.dex */
public class ArchiveDownEvent {
    ArchiveData archiveData;
    int status;

    public ArchiveDownEvent(int status, ArchiveData archiveData) {
        this.status = status;
        this.archiveData = archiveData;
    }

    public ArchiveData getArchiveData() {
        return this.archiveData;
    }

    public int getStatus() {
        return this.status;
    }

    public void setArchiveData(ArchiveData archiveData) {
        this.archiveData = archiveData;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
