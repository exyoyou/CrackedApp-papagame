package com.haima.hmcp.cloud.video;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import com.haima.hmcp.cloud.video.listener.TransferDataCallback;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.DownloadMode;
import com.haima.hmcp.listeners.CancelCallback;
import com.haima.hmcp.listeners.QueryCallback;
import com.haima.hmcp.listeners.SearchCallback;
import com.haima.hmcp.listeners.UpdateCallback;
import com.haima.hmcp.listeners.WorkingFileCallback;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface IDownloadTask {
    void cancelDownload(CloudFile cloudFile, CancelCallback cancelCallback);

    boolean checkHangUpData();

    boolean continueTask();

    void execute(List<CloudFile> list, DownloadMode downloadMode, DownloadLifeCycleCallback downloadLifeCycleCallback);

    DownloadMode getMode();

    void getTransferData(TransferDataCallback transferDataCallback);

    void getWorkingFiles(CloudOperation cloudOperation, WorkingFileCallback workingFileCallback);

    boolean isRunning();

    void keepAliveTimeUp();

    void pauseTask();

    void queryFiles(QueryCallback queryCallback);

    void scanFile(String str, SearchCallback searchCallback);

    void setCid(String str);

    void setConfig(DownloadConfig downloadConfig);

    void setHmcpRequest(HmcpRequest hmcpRequest);

    void setUrl(String str);

    void setWebSocketManager(IWebSocket iWebSocket);

    void updateFiles(CloudOperation cloudOperation, List<CloudFile> list, UpdateCallback updateCallback);
}
