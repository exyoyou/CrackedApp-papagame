package com.haima.hmcp.cloud.video;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import com.haima.hmcp.cloud.video.listener.TransferDataCallback;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudFileProtocol;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.DownloadMode;
import com.haima.hmcp.listeners.CancelCallback;
import com.haima.hmcp.listeners.QueryCallback;
import com.haima.hmcp.listeners.SearchCallback;
import com.haima.hmcp.listeners.UpdateCallback;
import com.haima.hmcp.listeners.WorkingFileCallback;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadTaskProxy implements IDownloadTask {
    public static final int ERROR_CODE_ILLEGAL_ARGUMENT = 1002;
    public static final int ERROR_CODE_ILLEGAL_SERVICE_STATA = 1001;
    public static final int ERROR_CODE_IO = 1003;
    public static final int ERROR_CODE_NETWORK = 1004;
    public static final int ERROR_CODE_NOT_ENOUGH_DISK = 1005;
    public static final int ERROR_CODE_OTHER = 1006;
    public static final String FILTER_TAG = "download-file: ";
    public static final int IDLE = 0;
    public static final String TAG = "DownloadTaskProxy";
    private String cid;
    private Context mContext;
    private IDownloadTask mDownloadTask;
    private HmcpRequest mHmcpRequest;

    public DownloadTaskProxy(Context context) {
        this.mContext = context.getApplicationContext();
        this.mDownloadTask = new DownloadTask(this.mContext);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void cancelDownload(CloudFile cloudFile, final CancelCallback cancelCallback) {
        String str;
        IDownloadTask iDownloadTask = this.mDownloadTask;
        if (iDownloadTask == null || !iDownloadTask.isRunning()) {
            LogUtils.d(TAG, "download-file: download task is not running, nothing to cancel");
            if (cancelCallback != null) {
                ArrayList arrayList = new ArrayList();
                if (cloudFile != null) {
                    arrayList.add(cloudFile);
                }
                cancelCallback.onCanceled(arrayList);
                return;
            }
            return;
        }
        if (cloudFile == null) {
            str = "cancel video download task";
        } else {
            str = " file=" + cloudFile;
        }
        String str2 = TAG;
        LogUtils.d(str2, "download-file: " + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_CANCEL, str);
        if (cloudFile != null) {
            if (cloudFile.getOperationMode() != CloudFileProtocol.HTTP) {
                String str3 = cloudFile.getOperationMode() + " is not support";
                LogUtils.d(str2, "download-file: cancel fail: " + str3);
                if (cancelCallback != null) {
                    cancelCallback.onCancelFail(cloudFile, 1002, str3);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(cloudFile.getName())) {
                LogUtils.d(str2, "download-file: cancel fail: name is null");
                if (cancelCallback != null) {
                    cancelCallback.onCancelFail(cloudFile, 1002, "name is null");
                    return;
                }
                return;
            }
        }
        this.mDownloadTask.cancelDownload(cloudFile, new CancelCallback() { // from class: com.haima.hmcp.cloud.video.DownloadTaskProxy.1
            @Override // com.haima.hmcp.listeners.CancelCallback
            public void onCancelFail(CloudFile cloudFile2, int i10, String str4) {
                String str5 = "cancel fail, file=" + cloudFile2 + "; message=" + str4;
                LogUtils.d(DownloadTaskProxy.TAG, "download-file: " + str5);
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_CANCEL_RESULT, str5);
                CancelCallback cancelCallback2 = cancelCallback;
                if (cancelCallback2 != null) {
                    cancelCallback2.onCancelFail(cloudFile2, i10, str4);
                }
            }

            @Override // com.haima.hmcp.listeners.CancelCallback
            public void onCanceled(List<CloudFile> list) {
                StringBuffer stringBuffer = new StringBuffer();
                Iterator<CloudFile> it2 = list.iterator();
                while (it2.hasNext()) {
                    stringBuffer.append(it2.next());
                    stringBuffer.append(", ");
                }
                LogUtils.d(DownloadTaskProxy.TAG, "download-file: cancel success: " + ((Object) stringBuffer));
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_CANCEL_RESULT, "cancel success");
                CancelCallback cancelCallback2 = cancelCallback;
                if (cancelCallback2 != null) {
                    cancelCallback2.onCanceled(list);
                }
            }
        });
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public boolean checkHangUpData() {
        return this.mDownloadTask.checkHangUpData();
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public boolean continueTask() {
        LogUtils.d(TAG, "download-file: continue task");
        return this.mDownloadTask.continueTask();
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void execute(List<CloudFile> list, DownloadMode downloadMode, DownloadLifeCycleCallback downloadLifeCycleCallback) {
        String str = TAG;
        LogUtils.d(str, "download-file: start to download");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD, "mode=" + downloadMode);
        if (TextUtils.isEmpty(this.cid)) {
            LogUtils.d(str, "download-file: cid is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "cid is null");
            if (downloadLifeCycleCallback != null) {
                downloadLifeCycleCallback.onFail(null, 1002, "Not in service");
                return;
            }
            return;
        }
        HmcpRequest hmcpRequest = this.mHmcpRequest;
        if (hmcpRequest == null || hmcpRequest.isStopPlay) {
            String str2 = hmcpRequest == null ? "mHmcpRequest is null" : "mHmcpRequest.isStopPlay is true";
            LogUtils.d(str, "download-file: " + str2);
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str2);
            if (downloadLifeCycleCallback != null) {
                downloadLifeCycleCallback.onFail(null, 1001, "Not in service");
                return;
            }
            return;
        }
        if (isRunning()) {
            LogUtils.d(str, "download-file:  Download task already running");
            if (downloadLifeCycleCallback != null) {
                downloadLifeCycleCallback.onDownloading();
                return;
            }
            return;
        }
        if (downloadMode == null) {
            downloadMode = DownloadMode.NORMAL;
        }
        if (list == null || list.isEmpty()) {
            LogUtils.d(str, "download-file:  Download file list is null or length is 0");
            if (downloadLifeCycleCallback != null) {
                downloadLifeCycleCallback.onFail(null, 1002, "File list is null");
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CloudFile cloudFile : list) {
            if (cloudFile.getOperationMode() == CloudFileProtocol.HTTP) {
                arrayList.add(cloudFile);
            } else {
                String str3 = "The file operation mode: " + cloudFile.getOperationMode() + " is not support";
                LogUtils.d(TAG, "download-file:  " + str3);
                if (downloadLifeCycleCallback != null) {
                    downloadLifeCycleCallback.onDownloadFail(cloudFile, 1002, str3);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            this.mDownloadTask.execute(arrayList, downloadMode, downloadLifeCycleCallback);
            return;
        }
        LogUtils.d(TAG, "download-file:  Download task is finish");
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onFinish(null);
        }
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public DownloadMode getMode() {
        return this.mDownloadTask.getMode();
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void getTransferData(TransferDataCallback transferDataCallback) {
        if (transferDataCallback == null) {
            return;
        }
        this.mDownloadTask.getTransferData(transferDataCallback);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void getWorkingFiles(CloudOperation cloudOperation, final WorkingFileCallback workingFileCallback) {
        String str = TAG;
        LogUtils.d(str, "download-file: get files in video download");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_WORKING_FILES);
        if (cloudOperation != CloudOperation.DOWNLOAD) {
            String str2 = cloudOperation + " is not support";
            LogUtils.d(str, "download-file: " + str2);
            if (workingFileCallback != null) {
                workingFileCallback.onWorkingFail(1002, str2);
            }
        }
        if (TextUtils.isEmpty(this.cid) && workingFileCallback != null) {
            workingFileCallback.onWorkingFail(1001, "Cid is null");
        }
        this.mDownloadTask.getWorkingFiles(cloudOperation, new WorkingFileCallback() { // from class: com.haima.hmcp.cloud.video.DownloadTaskProxy.4
            @Override // com.haima.hmcp.listeners.WorkingFileCallback
            public void onWorking(List<CloudFile> list) {
                String string;
                if (list.isEmpty()) {
                    string = "on file is working";
                } else {
                    StringBuffer stringBuffer = new StringBuffer();
                    for (CloudFile cloudFile : list) {
                        stringBuffer.append(" {");
                        stringBuffer.append(cloudFile);
                        stringBuffer.append("} ");
                    }
                    string = stringBuffer.toString();
                }
                LogUtils.d(DownloadTaskProxy.TAG, "download-file: working files: " + string);
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_WORKING_FILES_RESULT, "success; " + string);
                WorkingFileCallback workingFileCallback2 = workingFileCallback;
                if (workingFileCallback2 != null) {
                    workingFileCallback2.onWorking(list);
                }
            }

            @Override // com.haima.hmcp.listeners.WorkingFileCallback
            public void onWorkingFail(int i10, String str3) {
                String str4 = "get files in video download fail: message=" + str3;
                LogUtils.d(DownloadTaskProxy.TAG, "download-file: " + str4);
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_WORKING_FILES_RESULT, "fail; " + str4);
                WorkingFileCallback workingFileCallback2 = workingFileCallback;
                if (workingFileCallback2 != null) {
                    workingFileCallback2.onWorkingFail(i10, str3);
                }
            }
        });
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public boolean isRunning() {
        return this.mDownloadTask.isRunning();
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void keepAliveTimeUp() {
        this.mDownloadTask.keepAliveTimeUp();
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void pauseTask() {
        LogUtils.d(TAG, "download-file: pause task");
        this.mDownloadTask.pauseTask();
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void queryFiles(final QueryCallback queryCallback) {
        LogUtils.d(TAG, "download-file: query video files");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_QUERY);
        this.mDownloadTask.queryFiles(new QueryCallback() { // from class: com.haima.hmcp.cloud.video.DownloadTaskProxy.3
            @Override // com.haima.hmcp.listeners.QueryCallback
            public void onQuery(List<CloudFile> list) {
                StringBuffer stringBuffer = new StringBuffer();
                for (CloudFile cloudFile : list) {
                    stringBuffer.append(" {");
                    stringBuffer.append(cloudFile);
                    stringBuffer.append("} ");
                }
                LogUtils.d(DownloadTaskProxy.TAG, "download-file: query video files result: " + ((Object) stringBuffer));
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_QUERY_RESULT, "success; " + stringBuffer.toString());
                QueryCallback queryCallback2 = queryCallback;
                if (queryCallback2 != null) {
                    queryCallback2.onQuery(list);
                }
            }

            @Override // com.haima.hmcp.listeners.QueryCallback
            public void onQueryFail(int i10, String str) {
                String str2 = i10 + "-" + str;
                LogUtils.d(DownloadTaskProxy.TAG, "download-file: query video files result: " + str2);
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_QUERY_RESULT, "false; " + str2);
                QueryCallback queryCallback2 = queryCallback;
                if (queryCallback2 != null) {
                    queryCallback2.onQueryFail(i10, str);
                }
            }
        });
    }

    public void release() {
        cancelDownload(null, null);
        this.mContext = null;
        this.mHmcpRequest = null;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void scanFile(String str, final SearchCallback searchCallback) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "download-file:  Scan file fail cause: cid is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "Scan file fail cause: cid is null");
            if (searchCallback != null) {
                searchCallback.onSearchFail(1001, "Cid is null");
            }
        }
        this.mDownloadTask.scanFile(str, new SearchCallback() { // from class: com.haima.hmcp.cloud.video.DownloadTaskProxy.5
            @Override // com.haima.hmcp.listeners.SearchCallback
            public void onSearchFail(int i10, String str2) {
                String str3 = "Scan file fail cause: " + i10 + "-" + str2;
                LogUtils.d(DownloadTaskProxy.TAG, "download-file:  " + str3);
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_SEARCH_RESULT, "fail; " + str3);
                SearchCallback searchCallback2 = searchCallback;
                if (searchCallback2 != null) {
                    searchCallback2.onSearchFail(i10, str2);
                }
            }

            @Override // com.haima.hmcp.listeners.SearchCallback
            public void onSearched(List<CloudFile> list) {
                SearchCallback searchCallback2 = searchCallback;
                if (searchCallback2 != null) {
                    searchCallback2.onSearched(list);
                    StringBuffer stringBuffer = new StringBuffer();
                    Iterator<CloudFile> it2 = list.iterator();
                    while (it2.hasNext()) {
                        stringBuffer.append(it2.next());
                        stringBuffer.append("; ");
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("search result: ");
                    sb2.append(TextUtils.isEmpty(stringBuffer.toString()) ? "no file" : stringBuffer.toString());
                    String string = sb2.toString();
                    LogUtils.d(DownloadTaskProxy.TAG, "download-file:  " + string);
                    CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_SEARCH_RESULT, "success; " + string);
                }
            }
        });
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setCid(String str) {
        this.cid = str;
        this.mDownloadTask.setCid(str);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setConfig(DownloadConfig downloadConfig) {
        this.mDownloadTask.setConfig(downloadConfig);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setHmcpRequest(HmcpRequest hmcpRequest) {
        this.mHmcpRequest = hmcpRequest;
        this.mDownloadTask.setHmcpRequest(hmcpRequest);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setUrl(String str) {
        this.mDownloadTask.setUrl(str);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setWebSocketManager(IWebSocket iWebSocket) {
        this.mDownloadTask.setWebSocketManager(iWebSocket);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void updateFiles(CloudOperation cloudOperation, List<CloudFile> list, final UpdateCallback updateCallback) {
        LogUtils.d(TAG, "download-file: update video download files");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_UPDATE);
        if (cloudOperation != CloudOperation.DOWNLOAD) {
            if (updateCallback != null) {
                updateCallback.onUpdateFail(1002, cloudOperation + " is not support");
                return;
            }
            return;
        }
        if (list != null && !list.isEmpty()) {
            this.mDownloadTask.updateFiles(cloudOperation, list, new UpdateCallback() { // from class: com.haima.hmcp.cloud.video.DownloadTaskProxy.2
                @Override // com.haima.hmcp.listeners.UpdateCallback
                public void onUpdateFail(int i10, String str) {
                    String str2 = DownloadTaskProxy.TAG;
                    LogUtils.d(str2, "download-file: " + ("list updated fail: " + i10 + "-" + str));
                    CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_UPDATE_RESULT, "fail; message=" + str);
                    UpdateCallback updateCallback2 = updateCallback;
                    if (updateCallback2 != null) {
                        updateCallback2.onUpdateFail(i10, str);
                    }
                }

                @Override // com.haima.hmcp.listeners.UpdateCallback
                public void onUpdated(List<CloudFile> list2) {
                    StringBuffer stringBuffer = new StringBuffer();
                    for (CloudFile cloudFile : list2) {
                        stringBuffer.append(" {");
                        stringBuffer.append(cloudFile);
                        stringBuffer.append("} ");
                    }
                    String str = DownloadTaskProxy.TAG;
                    LogUtils.d(str, "download-file: " + ("list updated: " + ((Object) stringBuffer)));
                    CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_UPDATE_RESULT, "success; " + ((Object) stringBuffer));
                    UpdateCallback updateCallback2 = updateCallback;
                    if (updateCallback2 != null) {
                        updateCallback2.onUpdated(list2);
                    }
                }
            });
        } else if (updateCallback != null) {
            updateCallback.onUpdateFail(1002, "Update file list is null or length is 0");
        }
    }
}
