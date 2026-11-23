package com.haima.hmcp.cloud.video.job;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.DownloadFileInfo;
import com.haima.hmcp.business.DownloadResponseListener;
import com.haima.hmcp.business.HttpVolleyImpl;
import com.haima.hmcp.business.IHttp;
import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import com.haima.hmcp.cloud.video.bean.InnerCloudFile;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.InnerDownloadCallback;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadJob implements Runnable {
    public static final int STATUS_CANCEL = 4;
    public static final int STATUS_DOWNLOADING = 1;
    public static final int STATUS_ERROR = 3;
    public static final int STATUS_FINISH = 2;
    public static final int STATUS_IDLE = 0;
    private static final String TAG = "DownloadJob";
    private InnerDownloadCallback mCallback;
    private String mCid;
    private DownloadConfig mDownloadConfig;
    private long mDownloadSize;
    private final InnerCloudFile mFile;
    private IHttp mHttpImpl;
    private String mUrl;
    private int status = 0;

    public DownloadJob(Context context, InnerCloudFile innerCloudFile, InnerDownloadCallback innerDownloadCallback) {
        this.mFile = innerCloudFile;
        this.mCallback = innerDownloadCallback;
        this.mHttpImpl = new HttpVolleyImpl(context, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatus(int i10) {
        this.status = i10;
    }

    public void cancel() {
        if (this.status == 4) {
            return;
        }
        setStatus(4);
        if (this.mHttpImpl != null) {
            LogUtils.d(TAG, "download-file: file download request cancel");
            this.mHttpImpl.clear();
        }
        this.mHttpImpl = null;
        this.mCallback = null;
        LogUtils.d(TAG, "download-file: file download executor cancel");
    }

    public InnerCloudFile getFile() {
        return this.mFile;
    }

    public long getProgress() {
        return this.mDownloadSize;
    }

    public boolean isDownloading() {
        return this.status == 1;
    }

    @Override // java.lang.Runnable
    public void run() {
        LogUtils.d(TAG, "download-file: file download executor start");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, "request download url");
            jSONObject.put("file", this.mFile);
            jSONObject.put("url", StringUtils.encodeToBase64String(this.mUrl));
        } catch (JSONException unused) {
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, jSONObject.toString());
        long size = this.mFile.cloudFile.getSize();
        InnerCloudFile innerCloudFile = this.mFile;
        DownloadFileInfo downloadFileInfo = new DownloadFileInfo(size, innerCloudFile.downloadedSize, innerCloudFile.getTempFileNameWithPath(), this.mUrl, this.mFile.downloadRetryStrategy.getInterval());
        downloadFileInfo.setContentTypeList(this.mDownloadConfig.contentTypeList);
        this.mHttpImpl.download(downloadFileInfo, new DownloadResponseListener() { // from class: com.haima.hmcp.cloud.video.job.DownloadJob.1
            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onError(int i10, String str, String str2) {
                LogUtils.d(DownloadJob.TAG, "download-file: file download error: " + str);
                DownloadJob.this.setStatus(3);
                if (DownloadJob.this.mCallback != null) {
                    DownloadJob.this.mCallback.onDownloadFail(DownloadJob.this.mFile, i10, str);
                }
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str2);
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onFinish() {
                LogUtils.d(DownloadJob.TAG, "download-file: file download is complete");
                DownloadJob.this.setStatus(2);
                if (DownloadJob.this.mCallback != null) {
                    DownloadJob.this.mCallback.onDownloaded(DownloadJob.this.mFile);
                }
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onHeaders(HashMap<String, String> map) {
                LogUtils.d(DownloadJob.TAG, "download-file: " + JsonUtil.toJsonString(map));
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, JsonUtil.toJsonString(map));
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onProgress(long j10, long j11) {
                DownloadJob.this.mDownloadSize = j11;
                if (DownloadJob.this.mCallback != null) {
                    DownloadJob.this.mCallback.onProgress(DownloadJob.this.mFile, j10, j11);
                }
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onRetry(long j10) {
                if (DownloadJob.this.mCallback != null) {
                    DownloadJob.this.mCallback.onRetry(DownloadJob.this.mFile, j10);
                }
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onSuccess() {
                LogUtils.d(DownloadJob.TAG, "download-file: request download file success");
                if (DownloadJob.this.mCallback != null) {
                    DownloadJob.this.mCallback.onDownload(DownloadJob.this.mFile);
                }
            }
        });
        setStatus(1);
        LogUtils.d(TAG, "download-file: to request download file");
    }

    public void setCid(String str) {
        this.mCid = str;
    }

    public void setConfig(DownloadConfig downloadConfig) {
        this.mDownloadConfig = downloadConfig;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }
}
