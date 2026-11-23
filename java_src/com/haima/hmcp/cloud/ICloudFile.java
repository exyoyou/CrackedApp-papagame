package com.haima.hmcp.cloud;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.business.IWebSocket;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ICloudFile {
    void check(List<CloudFile> list, IBaseCheckListener iBaseCheckListener);

    void execute(IWebSocket iWebSocket, List<InternalCloudFile> list, CloudFileConfig cloudFileConfig, IWorkListener iWorkListener);

    WorkStatus getStatus();

    void interrupt();
}
