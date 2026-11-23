package com.haima.hmcp.cloud.job;

import android.content.Context;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.business.DownloadFileInfo;
import com.haima.hmcp.business.DownloadResponseListener;
import com.haima.hmcp.business.HttpVolleyImpl;
import com.haima.hmcp.business.IHttp;
import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import com.haima.hmcp.cloud.video.strategy.DownloadRetryStrategy;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.listeners.CloudOperationListener;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadHelper {
    private static final String TAG = "DownloadHelper";
    private static DownloadConfig mConfig;
    private static Context mContext;
    private static DownloadRetryStrategy mDownloadRetryStrategy;
    private static IHttp mHttpImpl;
    public static final String[] CONTENT_LIST_DEFAULT = {"all"};
    private static boolean isInited = false;

    private static class InstanceHolder {
        public static DownloadHelper instance = new DownloadHelper();

        private InstanceHolder() {
        }
    }

    public interface onDownloadListener {
        void onError();

        void onSuccess();
    }

    public static DownloadHelper getInstance() {
        return InstanceHolder.instance;
    }

    public void cancel() {
        IHttp iHttp = mHttpImpl;
        if (iHttp != null) {
            iHttp.clear();
        }
    }

    public void download(final CloudFile cloudFile, final CloudOperationListener cloudOperationListener, final onDownloadListener ondownloadlistener) {
        DownloadFileInfo downloadFileInfo = new DownloadFileInfo(cloudFile.getSize(), 0L, cloudFile.getPath(), cloudFile.getUrl(), mDownloadRetryStrategy.getInterval());
        mConfig.contentTypeList = new ArrayList(Arrays.asList(CONTENT_LIST_DEFAULT));
        downloadFileInfo.setContentTypeList(mConfig.contentTypeList);
        mHttpImpl.download(downloadFileInfo, new DownloadResponseListener() { // from class: com.haima.hmcp.cloud.job.DownloadHelper.1
            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onError(int i10, String str, String str2) {
                LogUtils.d(DownloadHelper.TAG, "download-file: file download error: " + str);
                CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_ERROR, str2);
                CloudOperationListener cloudOperationListener2 = cloudOperationListener;
                if (cloudOperationListener2 != null) {
                    cloudOperationListener2.onError(CloudOperation.DOWNLOAD, "detailInfo=" + str2);
                }
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onFinish() {
                LogUtils.d(DownloadHelper.TAG, "download-file: file download is complete");
                CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_FINISH);
                CloudOperationListener cloudOperationListener2 = cloudOperationListener;
                if (cloudOperationListener2 != null) {
                    cloudOperationListener2.onFinish(CloudOperation.DOWNLOAD);
                }
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onHeaders(HashMap<String, String> map) {
                LogUtils.d(DownloadHelper.TAG, "download-file: " + JsonUtil.toJsonString(map));
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onProgress(long j10, long j11) {
                LogUtils.d(DownloadHelper.TAG, "download-file: file download progress: fileSize=" + j10 + ", downloadedSize=" + j11);
                if (j10 == j11) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_FILE_SCUCCESS);
                    CloudOperationListener cloudOperationListener2 = cloudOperationListener;
                    if (cloudOperationListener2 != null) {
                        cloudOperationListener2.onSuccess(CloudOperation.DOWNLOAD, cloudFile);
                    }
                    onDownloadListener ondownloadlistener2 = ondownloadlistener;
                    if (ondownloadlistener2 != null) {
                        ondownloadlistener2.onSuccess();
                    }
                }
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onRetry(long j10) {
            }

            @Override // com.haima.hmcp.business.DownloadResponseListener
            public void onSuccess() {
                LogUtils.d(DownloadHelper.TAG, "download-file: request download file success");
            }
        });
    }

    public void init(Context context) {
        if (isInited) {
            return;
        }
        mContext = context;
        mHttpImpl = new HttpVolleyImpl(context, 0);
        DownloadConfig downloadConfig = new DownloadConfig();
        mConfig = downloadConfig;
        mDownloadRetryStrategy = new DownloadRetryStrategy(downloadConfig);
    }

    private DownloadHelper() {
    }
}
