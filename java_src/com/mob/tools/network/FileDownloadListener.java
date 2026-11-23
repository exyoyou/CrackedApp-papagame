package com.mob.tools.network;

import com.mob.tools.proguard.EverythingKeeper;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class FileDownloadListener implements EverythingKeeper {
    private boolean isCanceled = false;

    public void cancel() {
        this.isCanceled = true;
    }

    public boolean isCanceled() {
        return this.isCanceled;
    }

    protected abstract void onProgress(int i10, long j10, long j11);
}
