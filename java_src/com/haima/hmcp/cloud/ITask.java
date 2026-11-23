package com.haima.hmcp.cloud;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ITask {
    int getStatus();

    boolean isRunning();

    void start(List<InternalCloudFile> list, IWorkListener iWorkListener);

    void stop();
}
