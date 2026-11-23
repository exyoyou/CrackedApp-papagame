package com.haima.hmcp.cloud.video;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.business.HmcpRequest;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.cloud.video.bean.DownloadConfig;
import com.haima.hmcp.cloud.video.bean.DownloadTransferData;
import com.haima.hmcp.cloud.video.bean.HangUpData;
import com.haima.hmcp.cloud.video.bean.InnerCloudFile;
import com.haima.hmcp.cloud.video.bean.KeepAliveResponseValidation;
import com.haima.hmcp.cloud.video.job.CheckDownloadProgressJob;
import com.haima.hmcp.cloud.video.job.DownloadJob;
import com.haima.hmcp.cloud.video.job.DownloadRetryJob;
import com.haima.hmcp.cloud.video.job.KeepAliveTimerJob;
import com.haima.hmcp.cloud.video.job.MoveFileJob;
import com.haima.hmcp.cloud.video.job.QueryTimerJob;
import com.haima.hmcp.cloud.video.job.ScanFileJob;
import com.haima.hmcp.cloud.video.job.WebSocketOpenTimerJob;
import com.haima.hmcp.cloud.video.listener.TransferDataCallback;
import com.haima.hmcp.cloud.video.observer.KeepAliveObserver;
import com.haima.hmcp.cloud.video.observer.QueryObserver;
import com.haima.hmcp.cloud.video.observer.WebSocketOpenObserver;
import com.haima.hmcp.cloud.video.strategy.DownloadRetryStrategy;
import com.haima.hmcp.cloud.video.strategy.KeepAliveRetryStrategy;
import com.haima.hmcp.cloud.video.strategy.KeepAliveWaitStrategy;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.enums.DownloadMode;
import com.haima.hmcp.listeners.CancelCallback;
import com.haima.hmcp.listeners.InnerDownloadCallback;
import com.haima.hmcp.listeners.OnForceKeepAliveListener;
import com.haima.hmcp.listeners.QueryCallback;
import com.haima.hmcp.listeners.SearchCallback;
import com.haima.hmcp.listeners.UpdateCallback;
import com.haima.hmcp.listeners.WebSocketObserver;
import com.haima.hmcp.listeners.WorkingFileCallback;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MediaUtil;
import com.haima.hmcp.utils.NetworkUtil;
import com.sigmob.sdk.base.mta.PointCategory;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class DownloadTask implements IDownloadTask, InnerDownloadCallback {
    private static final int FILE_WRITE_BUFFER = 6144;
    public static final String FILTER_TAG = "download-file: ";
    public static final String TAG = "DownloadTask";
    private static final String TOKEN_START_KEEP_ALIVE_RETRY = "token_start_keep_alive_retry";
    private File defaultDownloadFolder;
    private KeepAliveResponseValidation keepAliveResponseValidation;
    private WebSocketOpenObserver mAccessOpenObserver;
    private WebSocketOpenTimerJob mAccessOpenTimerJob;
    private DownloadLifeCycleCallback mCallbackToApp;
    private CheckDownloadProgressJob mCheckDownloadProgressJob;
    private String mCid;
    private final Context mContext;
    private InnerCloudFile mCurrentInnerCloudFile;
    private DownloadHandler mDownloadHandler;
    private DownloadJob mDownloadJob;
    private DownloadMode mDownloadMode;
    private DownloadRetryJob mDownloadRetryJob;
    private HandlerThread mHandlerThread;
    private HangUpData mHangUpData;
    private HmcpRequest mHmcpRequest;
    private KeepAliveObserver mKeepAliveObserver;
    private KeepAliveTimerJob mKeepAliveTimerJob;
    private MoveFileJob mMoveFileJob;
    private QueryCallback mQueryCallback;
    private QueryObserver mQueryObserver;
    private QueryTimerJob mQueryTimerJob;
    private ScanFileJob mScanFileJob;
    private DownloadState mState;
    private String mTempDownloadPath;
    private String mTempMapFileName;
    private IWebSocket mWebSocketManager;
    private WebSocketOpenObserver mWsServerOpenObserver;
    private WebSocketOpenTimerJob mWsServerOpenTimerJob;
    private String url;
    private final ArrayList<InnerCloudFile> mFiles = new ArrayList<>();
    private DownloadConfig mConfig = new DownloadConfig();
    private Handler mainHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.haima.hmcp.cloud.video.DownloadTask$2, reason: invalid class name */
    class AnonymousClass2 implements OnForceKeepAliveListener {
        final /* synthetic */ InnerCloudFile val$innerCloudFile;
        final /* synthetic */ KeepAliveRetryStrategy val$retryStrategy;
        final /* synthetic */ long val$timeStamp;
        final /* synthetic */ KeepAliveWaitStrategy val$waitStrategy;

        AnonymousClass2(long j10, InnerCloudFile innerCloudFile, KeepAliveRetryStrategy keepAliveRetryStrategy, KeepAliveWaitStrategy keepAliveWaitStrategy) {
            this.val$timeStamp = j10;
            this.val$innerCloudFile = innerCloudFile;
            this.val$retryStrategy = keepAliveRetryStrategy;
            this.val$waitStrategy = keepAliveWaitStrategy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onKeepAlive$0(long j10, boolean z10, String str, InnerCloudFile innerCloudFile, KeepAliveRetryStrategy keepAliveRetryStrategy, KeepAliveWaitStrategy keepAliveWaitStrategy) {
            DownloadTask.this.handleKeepAliveResponse(j10, z10, str, innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy);
        }

        @Override // com.haima.hmcp.listeners.OnForceKeepAliveListener
        public void onKeepAlive(final boolean z10, final String str) {
            LogUtils.d(DownloadTask.TAG, "download-file: success:" + z10 + "; message:" + str);
            DownloadTask downloadTask = DownloadTask.this;
            final long j10 = this.val$timeStamp;
            final InnerCloudFile innerCloudFile = this.val$innerCloudFile;
            final KeepAliveRetryStrategy keepAliveRetryStrategy = this.val$retryStrategy;
            final KeepAliveWaitStrategy keepAliveWaitStrategy = this.val$waitStrategy;
            downloadTask.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.u2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33994b.lambda$onKeepAlive$0(j10, z10, str, innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.cloud.video.DownloadTask$4, reason: invalid class name */
    class AnonymousClass4 implements KeepAliveTimerJob.KeepAliveTimerCallback {
        final /* synthetic */ KeepAliveRetryStrategy val$retryStrategy;

        AnonymousClass4(KeepAliveRetryStrategy keepAliveRetryStrategy) {
            this.val$retryStrategy = keepAliveRetryStrategy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTimeOut$0(InnerCloudFile innerCloudFile, KeepAliveRetryStrategy keepAliveRetryStrategy, KeepAliveWaitStrategy keepAliveWaitStrategy) {
            DownloadTask.this.cancelKeepAliveTimerJob();
            DownloadTask.this.startKeepAlive(innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy);
        }

        @Override // com.haima.hmcp.cloud.video.job.KeepAliveTimerJob.KeepAliveTimerCallback
        public void onTimeOut(final InnerCloudFile innerCloudFile, final KeepAliveWaitStrategy keepAliveWaitStrategy) {
            String str = "start keep alive time out, strategy: " + keepAliveWaitStrategy;
            LogUtils.d(DownloadTask.TAG, "download-file: " + str);
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE_TIME_OUT, str);
            DownloadTask downloadTask = DownloadTask.this;
            final KeepAliveRetryStrategy keepAliveRetryStrategy = this.val$retryStrategy;
            downloadTask.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.v2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34009b.lambda$onTimeOut$0(innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.cloud.video.DownloadTask$5, reason: invalid class name */
    class AnonymousClass5 implements ScanFileJob.ScanFileJobCallback {
        final /* synthetic */ SearchCallback val$callback;

        AnonymousClass5(SearchCallback searchCallback) {
            this.val$callback = searchCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onDone$0(SearchCallback searchCallback, List list) {
            if (searchCallback != null) {
                searchCallback.onSearched(list);
            }
        }

        @Override // com.haima.hmcp.cloud.video.job.ScanFileJob.ScanFileJobCallback
        public void onDone(final List<CloudFile> list) {
            DownloadTask.this.cancelScanFileJob();
            DownloadTask downloadTask = DownloadTask.this;
            final SearchCallback searchCallback = this.val$callback;
            downloadTask.dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.w2
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.AnonymousClass5.lambda$onDone$0(searchCallback, list);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.cloud.video.DownloadTask$6, reason: invalid class name */
    class AnonymousClass6 implements WebSocketOpenObserver.WebSocketStateCallback {
        final /* synthetic */ Runnable val$runnable;

        AnonymousClass6(Runnable runnable) {
            this.val$runnable = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onOpen$0() {
            DownloadTask.this.cancelAccessOpenTimerJob();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onOpen$1() {
            DownloadTask.this.releaseAccessOpenObserver();
        }

        @Override // com.haima.hmcp.cloud.video.observer.WebSocketOpenObserver.WebSocketStateCallback
        public void onClose() {
        }

        @Override // com.haima.hmcp.cloud.video.observer.WebSocketOpenObserver.WebSocketStateCallback
        public void onOpen() {
            LogUtils.d(DownloadTask.TAG, "download-file: access is open and task continue");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "access is open and task continue");
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.x2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34027b.lambda$onOpen$0();
                }
            });
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.y2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34034b.lambda$onOpen$1();
                }
            });
            DownloadTask.this.nextStepPost(this.val$runnable);
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.cloud.video.DownloadTask$7, reason: invalid class name */
    class AnonymousClass7 implements WebSocketOpenTimerJob.WebSocketOpenTimerCallback {
        final /* synthetic */ Runnable val$runnable;

        AnonymousClass7(Runnable runnable) {
            this.val$runnable = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$null$2() {
            DownloadTask.this.onDownloadFail(1001, "web-socket is not ready");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTimeOut$0() {
            DownloadTask.this.releaseAccessOpenObserver();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTimeOut$1() {
            DownloadTask.this.cancelAccessOpenTimerJob();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTimeOut$3() {
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.c3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33862b.lambda$null$2();
                }
            });
        }

        @Override // com.haima.hmcp.cloud.video.job.WebSocketOpenTimerJob.WebSocketOpenTimerCallback
        public void onTimeOut() {
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.z2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34039b.lambda$onTimeOut$0();
                }
            });
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.a3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33844b.lambda$onTimeOut$1();
                }
            });
            if (DownloadTask.this.mWebSocketManager != null && DownloadTask.this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_ACCESS)) {
                LogUtils.d(DownloadTask.TAG, "download-file: wait access` open time out, but access is connected and task continue");
                DownloadTask.this.nextStepPost(this.val$runnable);
                return;
            }
            LogUtils.d(DownloadTask.TAG, "download-file: wait access open time out");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "wait access open time out");
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.b3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33852b.lambda$onTimeOut$3();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.cloud.video.DownloadTask$8, reason: invalid class name */
    class AnonymousClass8 implements WebSocketOpenObserver.WebSocketStateCallback {
        final /* synthetic */ Runnable val$runnable;

        AnonymousClass8(Runnable runnable) {
            this.val$runnable = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onOpen$0() {
            DownloadTask.this.cancelWsServerOpenTimerJob();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onOpen$1() {
            DownloadTask.this.releaseWsServerOpenObserver();
        }

        @Override // com.haima.hmcp.cloud.video.observer.WebSocketOpenObserver.WebSocketStateCallback
        public void onClose() {
        }

        @Override // com.haima.hmcp.cloud.video.observer.WebSocketOpenObserver.WebSocketStateCallback
        public void onOpen() {
            LogUtils.d(DownloadTask.TAG, "download-file: ws-server is open and continue");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "ws-server is open and continue");
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.d3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33870b.lambda$onOpen$0();
                }
            });
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.e3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33878b.lambda$onOpen$1();
                }
            });
            DownloadTask.this.nextStepPost(this.val$runnable);
        }
    }

    /* JADX INFO: renamed from: com.haima.hmcp.cloud.video.DownloadTask$9, reason: invalid class name */
    class AnonymousClass9 implements WebSocketOpenTimerJob.WebSocketOpenTimerCallback {
        final /* synthetic */ Runnable val$runnable;

        AnonymousClass9(Runnable runnable) {
            this.val$runnable = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTimeOut$0() {
            DownloadTask.this.releaseWsServerOpenObserver();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTimeOut$1() {
            DownloadTask.this.cancelWsServerOpenTimerJob();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTimeOut$2() {
            if (DownloadTask.this.mQueryCallback != null) {
                DownloadTask.this.mQueryCallback.onQueryFail(1004, "web-socket is not active");
            }
        }

        @Override // com.haima.hmcp.cloud.video.job.WebSocketOpenTimerJob.WebSocketOpenTimerCallback
        public void onTimeOut() {
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.f3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33885b.lambda$onTimeOut$0();
                }
            });
            DownloadTask.this.nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.g3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33895b.lambda$onTimeOut$1();
                }
            });
            if (DownloadTask.this.mWebSocketManager != null && DownloadTask.this.mWebSocketManager.isConnect(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER)) {
                LogUtils.d(DownloadTask.TAG, "download-file: wait ws-server` open time out, but ws-server is connected and task continue");
                DownloadTask.this.nextStepPost(this.val$runnable);
                return;
            }
            LogUtils.d(DownloadTask.TAG, "download-file: query cloud file error: wait ws-server open time out");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_QUERY_RESULT, "fail; query cloud file error: wait ws-server open time out");
            DownloadTask.this.dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.h3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33902b.lambda$onTimeOut$2();
                }
            });
        }
    }

    class DownloadHandler extends Handler {
        public DownloadHandler(Looper looper) {
            super(looper);
        }
    }

    enum DownloadState {
        IDLE,
        WORKING
    }

    public DownloadTask(Context context) {
        this.mContext = context;
        HandlerThread handlerThread = new HandlerThread("download-task-thread");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mDownloadHandler = new DownloadHandler(this.mHandlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAccessOpenTimerJob() {
        if (this.mAccessOpenTimerJob != null) {
            LogUtils.d(TAG, "download-file: cancel access open timer job");
            this.mAccessOpenTimerJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mAccessOpenTimerJob);
            }
            this.mAccessOpenTimerJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelDownloadJob() {
        if (this.mDownloadJob != null) {
            LogUtils.d(TAG, "download-file: cancel download job");
            this.mDownloadJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mDownloadJob);
            }
            this.mDownloadJob = null;
        }
    }

    private void cancelDownloadRetryJob() {
        if (this.mDownloadRetryJob == null) {
            return;
        }
        LogUtils.d(TAG, "download-file: cancel download retry job");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "cancel download retry job");
        this.mDownloadRetryJob.cancel();
        DownloadHandler downloadHandler = this.mDownloadHandler;
        if (downloadHandler != null) {
            downloadHandler.removeCallbacks(this.mDownloadRetryJob);
        }
        this.mDownloadRetryJob = null;
    }

    private boolean cancelDownloadingFile(CloudFile cloudFile) {
        DownloadJob downloadJob = this.mDownloadJob;
        boolean z10 = true;
        if (downloadJob != null && downloadJob.isDownloading()) {
            String str = TAG;
            LogUtils.d(str, "download-file: prepare to cancel downloading file");
            CloudFile cloudFile2 = this.mDownloadJob.getFile().cloudFile;
            LogUtils.d(str, "download-file: downloading file=" + cloudFile2 + "; cancel file=" + cloudFile);
            if (cloudFile2.getName().equals(cloudFile.getName())) {
                this.mDownloadJob.cancel();
                this.mDownloadJob = null;
            } else {
                z10 = false;
            }
        } else if (this.mDownloadRetryJob != null) {
            LogUtils.d(TAG, "download-file: cancel retry download file");
            cancelDownloadRetryJob();
        } else {
            LogUtils.d(TAG, "download-file: no downloading file to cancel");
            z10 = false;
        }
        if (z10) {
            stopKeepAlive();
            cancelKeepAliveTimerJob();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelKeepAliveTimerJob() {
        if (this.mKeepAliveTimerJob != null) {
            LogUtils.d(TAG, "download-file: cancel keep alive timer job");
            this.mKeepAliveTimerJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mKeepAliveTimerJob);
            }
            this.mKeepAliveTimerJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelMoveFileJob() {
        if (this.mMoveFileJob != null) {
            LogUtils.d(TAG, "download-file: cancel move file job");
            this.mMoveFileJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mMoveFileJob);
            }
            this.mMoveFileJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelProgressChecker() {
        if (this.mCheckDownloadProgressJob != null) {
            LogUtils.d(TAG, "download-file: cancel progress check job");
            this.mCheckDownloadProgressJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mCheckDownloadProgressJob);
            }
            this.mCheckDownloadProgressJob = null;
        }
    }

    private void cancelQueryTimerJob() {
        if (this.mQueryTimerJob != null) {
            LogUtils.d(TAG, "download-file: cancel query timer");
            this.mQueryTimerJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mQueryTimerJob);
            }
            this.mQueryTimerJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelScanFileJob() {
        ScanFileJob scanFileJob = this.mScanFileJob;
        if (scanFileJob != null) {
            scanFileJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mScanFileJob);
            }
            this.mScanFileJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: cancelTask, reason: merged with bridge method [inline-methods] */
    public void lambda$cancelDownload$4(final CancelCallback cancelCallback) {
        final ArrayList arrayList = new ArrayList();
        stopKeepAlive();
        cancelKeepAliveTimerJob();
        releaseAccessOpenObserver();
        cancelAccessOpenTimerJob();
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob != null && downloadJob.isDownloading()) {
            CloudFile cloudFile = this.mDownloadJob.getFile().cloudFile;
            if (cancelDownloadingFile(cloudFile)) {
                arrayList.add(cloudFile);
            }
        }
        synchronized (this.mFiles) {
            Iterator<InnerCloudFile> it2 = this.mFiles.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().cloudFile);
            }
            this.mFiles.clear();
        }
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.l0
            @Override // java.lang.Runnable
            public final void run() {
                DownloadTask.lambda$cancelTask$14(cancelCallback, arrayList);
            }
        });
        if (arrayList.isEmpty()) {
            return;
        }
        nextStepPost(new p(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelWsServerOpenTimerJob() {
        if (this.mWsServerOpenTimerJob != null) {
            LogUtils.d(TAG, "download-file: cancel ws-server open timer job");
            this.mWsServerOpenTimerJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mWsServerOpenTimerJob);
            }
            this.mWsServerOpenTimerJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: checkBreakPoint, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$prepareDownloadFile$29(final InnerCloudFile innerCloudFile) {
        String str = TAG;
        LogUtils.d(str, "download-file: check file break-point, file name: " + innerCloudFile.cloudFile.getName());
        long j10 = 0;
        innerCloudFile.downloadedSize = 0L;
        try {
            CloudFile cloudFile = innerCloudFile.cloudFile;
            InnerCloudFile innerCloudFile2 = getDownloadMaps(1).get(cloudFile.getName());
            if (innerCloudFile2 != null) {
                LogUtils.d(str, "download-file: check file break-point, the " + cloudFile.getName() + " find in file-map, tmp name: " + innerCloudFile2.tempFileName);
                final String str2 = innerCloudFile2.tempFileName;
                innerCloudFile.tempFileName = str2;
                if (!TextUtils.isEmpty(str2)) {
                    File[] fileArrListFiles = this.defaultDownloadFolder.listFiles(new FilenameFilter() { // from class: com.haima.hmcp.cloud.video.DownloadTask.1
                        @Override // java.io.FilenameFilter
                        public boolean accept(File file, String str3) {
                            return str3.equals(str2);
                        }
                    });
                    if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                        LogUtils.d(str, "download-file: not find tmp file from sdcard");
                    } else {
                        LogUtils.d(str, "download-file: find tmp file from sdcard");
                        long length = fileArrListFiles[0].length();
                        if (length > 6144) {
                            j10 = length - (length % 6144);
                        }
                        innerCloudFile.downloadedSize = j10;
                        LogUtils.d(str, "download-file: the tmp file break point: " + innerCloudFile.downloadedSize);
                    }
                }
            } else {
                LogUtils.d(str, "download-file: check file break-point, the " + cloudFile.getName() + " not find in file-map");
            }
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.a1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33841b.lambda$checkBreakPoint$31(innerCloudFile);
                }
            });
        } catch (Exception e10) {
            String stackTraceString = Log.getStackTraceString(e10);
            LogUtils.d(TAG, "download-file: check file break-point exception： " + stackTraceString);
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, stackTraceString);
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.z0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34036b.lambda$checkBreakPoint$30(innerCloudFile);
                }
            });
        }
    }

    private boolean checkContinueTask() {
        HangUpData hangUpData = this.mHangUpData;
        if (hangUpData == null) {
            LogUtils.d(TAG, "download-file: no paused task");
            return false;
        }
        if (hangUpData.mHangUpFiles.isEmpty()) {
            this.mHangUpData = null;
            LogUtils.d(TAG, "download-file: no file to continue task");
            return false;
        }
        if (TextUtils.equals(this.mHangUpData.mHangUpCid, this.mCid)) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.b0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33846b.internalContinueTask();
                }
            });
            return true;
        }
        LogUtils.d(TAG, "download-file: not match cid to continue task");
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33840b.lambda$checkContinueTask$11();
            }
        });
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: checkDiskStorage, reason: merged with bridge method [inline-methods] */
    public void lambda$checkBreakPoint$31(final InnerCloudFile innerCloudFile) {
        long size = innerCloudFile.cloudFile.getSize();
        long j10 = innerCloudFile.downloadedSize;
        long j11 = (j10 > 0 ? (size - j10) + size : 2 * size) + 20971520;
        long diskAvailableStorage = getDiskAvailableStorage();
        if (diskAvailableStorage == -1) {
            final String str = "external storage state error, state: " + Environment.getExternalStorageState();
            LogUtils.d(TAG, "download-file: " + str);
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str);
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.r0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33965b.lambda$checkDiskStorage$32(innerCloudFile, str);
                }
            });
            return;
        }
        String str2 = "check external storage: block available total=" + diskAvailableStorage + "; file size=" + size + "; download need storage=" + j11;
        String str3 = TAG;
        LogUtils.d(str3, "download-file: " + str2);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str2);
        if (j11 < diskAvailableStorage) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.u0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33989b.lambda$checkDiskStorage$34(innerCloudFile);
                }
            });
            return;
        }
        LogUtils.d(str3, "download-file: " + ("is not enough storage to download file: " + innerCloudFile));
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.t0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33982b.lambda$checkDiskStorage$33();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: checkStatus, reason: merged with bridge method [inline-methods] */
    public void lambda$internalContinueTask$46(List<CloudFile> list) {
        DownloadState downloadState = this.mState;
        DownloadState downloadState2 = DownloadState.WORKING;
        if (downloadState == downloadState2) {
            LogUtils.d(TAG, "download-file: download task is running...");
            onRunning(list);
            return;
        }
        String str = TAG;
        LogUtils.d(str, "download-file: download task init");
        this.mState = downloadState2;
        if (initTask(list)) {
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.d0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33864b.lambda$checkStatus$13();
                }
            });
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.e0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33872b.createMapFile();
                }
            });
            return;
        }
        LogUtils.d(str, "download-file: task init fail");
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onFail(this.mDownloadMode, 1003, "IO exception");
        }
    }

    private void checkWebSocketState(final Runnable runnable) {
        String str = TAG;
        LogUtils.d(str, "download-file: check web-socket state");
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket == null) {
            LogUtils.d(str, "download-file: WebSocketManager is null or is not connect");
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.w1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34017b.lambda$checkWebSocketState$47();
                }
            });
            return;
        }
        if (iWebSocket.isConnect(WebSocketManager.WebSocketType.TYPE_ACCESS)) {
            nextStepPost(runnable);
            return;
        }
        LogUtils.d(str, "download-file: access is not connect and wait access`s open");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "access is not connect and wait access`s open");
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.x1
            @Override // java.lang.Runnable
            public final void run() {
                this.f34025b.lambda$checkWebSocketState$48(runnable);
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.y1
            @Override // java.lang.Runnable
            public final void run() {
                this.f34032b.lambda$checkWebSocketState$49(runnable);
            }
        });
    }

    private void checkWsServerSocketState(final Runnable runnable) {
        String str = TAG;
        LogUtils.d(str, "download-file: check ws-server socket state");
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket == null) {
            LogUtils.d(str, "download-file: WebSocketManager is null");
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.q1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33958b.lambda$checkWsServerSocketState$50();
                }
            });
            return;
        }
        if (iWebSocket.isConnect(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER)) {
            nextStepPost(runnable);
            return;
        }
        LogUtils.d(str, "download-file: ws-server is not connect and wait ws-server`s open");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "ws-server is not connect and wait ws-server`s open");
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.r1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33968b.lambda$checkWsServerSocketState$51(runnable);
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.s1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33977b.lambda$checkWsServerSocketState$52(runnable);
            }
        });
    }

    private WebSocketObserver createAccessOpenObserver(Runnable runnable) {
        LogUtils.d(TAG, "download-file: create access link open observer");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "create access link open observer");
        WebSocketOpenObserver webSocketOpenObserver = new WebSocketOpenObserver(new AnonymousClass6(runnable));
        this.mAccessOpenObserver = webSocketOpenObserver;
        return webSocketOpenObserver;
    }

    private WebSocketObserver createKeepAliveObserver() {
        KeepAliveObserver keepAliveObserver = new KeepAliveObserver(this);
        this.mKeepAliveObserver = keepAliveObserver;
        return keepAliveObserver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMapFile() {
        File file;
        String downloadMapFile = InnerCloudFile.getDownloadMapFile(this.mTempDownloadPath);
        this.mTempMapFileName = downloadMapFile;
        if (TextUtils.isEmpty(downloadMapFile)) {
            LogUtils.d(TAG, "download-file: download map file name is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "download map file name is null");
            DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
            if (downloadLifeCycleCallback != null) {
                downloadLifeCycleCallback.onFail(this.mDownloadMode, 1003, "IO exception");
                return;
            }
            return;
        }
        try {
            file = new File(this.mTempMapFileName);
            if (!file.exists()) {
                file.createNewFile();
            }
        } catch (IOException unused) {
            file = null;
        }
        if (file != null) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.m2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33934b.lambda$createMapFile$21();
                }
            });
            return;
        }
        LogUtils.d(TAG, "download-file: download map file create fail");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "download map file create fail");
        DownloadLifeCycleCallback downloadLifeCycleCallback2 = this.mCallbackToApp;
        if (downloadLifeCycleCallback2 != null) {
            downloadLifeCycleCallback2.onFail(this.mDownloadMode, 1003, "IO exception");
        }
    }

    private WebSocketObserver createQueryObserver() {
        QueryObserver queryObserver = new QueryObserver(this);
        this.mQueryObserver = queryObserver;
        return queryObserver;
    }

    private WebSocketObserver createWsServerOpenObserver(Runnable runnable) {
        LogUtils.d(TAG, "download-file: create ws-server open observer");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "create ws-server open observer");
        WebSocketOpenObserver webSocketOpenObserver = new WebSocketOpenObserver(new AnonymousClass8(runnable));
        this.mWsServerOpenObserver = webSocketOpenObserver;
        return webSocketOpenObserver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:143:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x0178 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x0192 A[Catch: all -> 0x01a6, IOException -> 0x01aa, UnsupportedEncodingException -> 0x01ad, FileNotFoundException -> 0x01b0, LOOP:2: B:77:0x018c->B:79:0x0192, LOOP_END, TryCatch #13 {FileNotFoundException -> 0x01b0, UnsupportedEncodingException -> 0x01ad, IOException -> 0x01aa, all -> 0x01a6, blocks: (B:76:0x0188, B:77:0x018c, B:79:0x0192, B:80:0x019f), top: B:145:0x0188 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x01ee: MOVE (r6 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]) (LINE:495), block:B:123:0x01ed */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX INFO: renamed from: deleteDownloadMap, reason: merged with bridge method [inline-methods] */
    public void lambda$onMovedSuccess$76(InnerCloudFile innerCloudFile) throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        Throwable th2;
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2;
        Iterator it2;
        int i10;
        ?? r10;
        ?? r11;
        String str = TAG;
        LogUtils.d(str, "download-file: delete map data: " + innerCloudFile.tempFileName);
        String downloadMapFile = InnerCloudFile.getDownloadMapFile(this.mTempDownloadPath);
        BufferedWriter bufferedWriterIsEmpty = TextUtils.isEmpty(downloadMapFile);
        if (bufferedWriterIsEmpty != 0) {
            LogUtils.d(str, "download-file: delete download map data fail, cause: tmp map file name is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "delete download map data fail, cause: tmp map file name is null");
            onDownloadFail(innerCloudFile, 1003, "IO error");
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            try {
                try {
                    bufferedReader3 = new BufferedReader(new InputStreamReader(new FileInputStream(downloadMapFile), "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader3.readLine();
                            if (line == null) {
                                break;
                            } else {
                                arrayList.add(line);
                            }
                        } catch (FileNotFoundException e10) {
                            e = e10;
                            e.printStackTrace();
                            if (bufferedReader3 != null) {
                                bufferedReader3.close();
                                bufferedWriterIsEmpty = bufferedWriterIsEmpty;
                            }
                            try {
                                if (arrayList.isEmpty()) {
                                    return;
                                }
                                try {
                                    FileOutputStream fileOutputStream = new FileOutputStream(downloadMapFile);
                                    bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(fileOutputStream, "UTF-8"));
                                    try {
                                        it2 = arrayList.iterator();
                                        while (it2.hasNext()) {
                                            bufferedWriter2.write((String) it2.next());
                                            bufferedWriter2.newLine();
                                        }
                                        bufferedWriter2.flush();
                                        bufferedWriter2.close();
                                        bufferedWriterIsEmpty = fileOutputStream;
                                    } catch (FileNotFoundException e11) {
                                        e = e11;
                                        bufferedWriterIsEmpty = bufferedWriter2;
                                        e.printStackTrace();
                                        if (bufferedWriterIsEmpty != 0) {
                                            bufferedWriterIsEmpty.close();
                                            bufferedWriterIsEmpty = bufferedWriterIsEmpty;
                                        }
                                    } catch (UnsupportedEncodingException e12) {
                                        e = e12;
                                        bufferedWriterIsEmpty = bufferedWriter2;
                                        e.printStackTrace();
                                        if (bufferedWriterIsEmpty != 0) {
                                            bufferedWriterIsEmpty.close();
                                            bufferedWriterIsEmpty = bufferedWriterIsEmpty;
                                        }
                                    } catch (IOException e13) {
                                        e = e13;
                                        bufferedWriterIsEmpty = bufferedWriter2;
                                        e.printStackTrace();
                                        if (bufferedWriterIsEmpty != 0) {
                                            bufferedWriterIsEmpty.close();
                                            bufferedWriterIsEmpty = bufferedWriterIsEmpty;
                                        }
                                    } catch (Throwable th3) {
                                        th2 = th3;
                                        bufferedWriter = bufferedWriter2;
                                        if (bufferedWriter == 0) {
                                            throw th2;
                                        }
                                        try {
                                            bufferedWriter.close();
                                            throw th2;
                                        } catch (IOException e14) {
                                            e14.printStackTrace();
                                            throw th2;
                                        }
                                    }
                                } catch (FileNotFoundException e15) {
                                    e = e15;
                                    bufferedWriterIsEmpty = 0;
                                } catch (UnsupportedEncodingException e16) {
                                    e = e16;
                                    bufferedWriterIsEmpty = 0;
                                } catch (IOException e17) {
                                    e = e17;
                                    bufferedWriterIsEmpty = 0;
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    bufferedWriter = 0;
                                }
                            } catch (IOException e18) {
                                e18.printStackTrace();
                                return;
                            }
                        } catch (UnsupportedEncodingException e19) {
                            e = e19;
                            e.printStackTrace();
                            if (bufferedReader3 != null) {
                                bufferedReader3.close();
                                bufferedWriterIsEmpty = bufferedWriterIsEmpty;
                            }
                            if (arrayList.isEmpty()) {
                                return;
                            }
                            FileOutputStream fileOutputStream2 = new FileOutputStream(downloadMapFile);
                            bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(fileOutputStream2, "UTF-8"));
                            it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                bufferedWriter2.write((String) it2.next());
                                bufferedWriter2.newLine();
                            }
                            bufferedWriter2.flush();
                            bufferedWriter2.close();
                            bufferedWriterIsEmpty = fileOutputStream2;
                        } catch (IOException e20) {
                            e = e20;
                            e.printStackTrace();
                            if (bufferedReader3 != null) {
                                bufferedReader3.close();
                                bufferedWriterIsEmpty = bufferedWriterIsEmpty;
                            }
                            if (arrayList.isEmpty()) {
                                return;
                            }
                            FileOutputStream fileOutputStream3 = new FileOutputStream(downloadMapFile);
                            bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(fileOutputStream3, "UTF-8"));
                            it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                bufferedWriter2.write((String) it2.next());
                                bufferedWriter2.newLine();
                            }
                            bufferedWriter2.flush();
                            bufferedWriter2.close();
                            bufferedWriterIsEmpty = fileOutputStream3;
                        } catch (JSONException e21) {
                            e = e21;
                            e.printStackTrace();
                            if (bufferedReader3 != null) {
                                bufferedReader3.close();
                                bufferedWriterIsEmpty = bufferedWriterIsEmpty;
                            }
                            if (arrayList.isEmpty()) {
                                return;
                            }
                            FileOutputStream fileOutputStream4 = new FileOutputStream(downloadMapFile);
                            bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(fileOutputStream4, "UTF-8"));
                            it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                bufferedWriter2.write((String) it2.next());
                                bufferedWriter2.newLine();
                            }
                            bufferedWriter2.flush();
                            bufferedWriter2.close();
                            bufferedWriterIsEmpty = fileOutputStream4;
                        }
                    }
                    bufferedReader3.close();
                    int size = arrayList.size();
                    CloudFile cloudFile = innerCloudFile.cloudFile;
                    int i11 = 0;
                    ?? r12 = bufferedWriterIsEmpty;
                    while (true) {
                        if (i11 >= size) {
                            i10 = -1;
                            r10 = r12;
                            break;
                        }
                        JSONObject jSONObject = new JSONObject(new JSONObject((String) arrayList.get(i11)).optString("data"));
                        String strOptString = jSONObject.optString("name", "");
                        String strOptString2 = jSONObject.optString("cloudPath", "");
                        String strOptString3 = jSONObject.optString("size", "");
                        int i12 = i11;
                        double dOptDouble = jSONObject.optDouble("duration", 0.0d);
                        jSONObject.optString("type", "");
                        boolean zEquals = strOptString.equals(cloudFile.getName());
                        boolean zEquals2 = strOptString2.equals(cloudFile.getCloudPath());
                        long j10 = Long.parseLong(strOptString3);
                        boolean z10 = true;
                        boolean z11 = j10 == cloudFile.getSize();
                        if (dOptDouble != cloudFile.getVideoDuration()) {
                            z10 = false;
                        }
                        if (zEquals && zEquals2 && z11 && z10) {
                            LogUtils.d(TAG, "download-file: match delete mapping file, index: " + i12);
                            i10 = i12;
                            r10 = "download-file: match delete mapping file, index: ";
                            break;
                        }
                        i11 = i12 + 1;
                        r12 = zEquals;
                    }
                    if (i10 <= -1 || i10 >= arrayList.size()) {
                        LogUtils.d(TAG, "download-file: no mapping file to delete");
                        arrayList.clear();
                        r11 = r10;
                    } else {
                        LogUtils.d(TAG, "download-file: match mapping file and delete, index: " + i10);
                        arrayList.remove(i10);
                        r11 = "download-file: match mapping file and delete, index: ";
                    }
                    bufferedReader3.close();
                    bufferedWriterIsEmpty = r11;
                } catch (IOException e22) {
                    e22.printStackTrace();
                }
            } catch (FileNotFoundException e23) {
                e = e23;
                bufferedReader3 = null;
            } catch (UnsupportedEncodingException e24) {
                e = e24;
                bufferedReader3 = null;
            } catch (IOException e25) {
                e = e25;
                bufferedReader3 = null;
            } catch (JSONException e26) {
                e = e26;
                bufferedReader3 = null;
            } catch (Throwable th5) {
                th = th5;
                bufferedReader2 = null;
                if (bufferedReader2 == null) {
                    throw th;
                }
                try {
                    bufferedReader2.close();
                    throw th;
                } catch (IOException e27) {
                    e27.printStackTrace();
                    throw th;
                }
            }
            try {
                if (arrayList.isEmpty()) {
                    return;
                }
                FileOutputStream fileOutputStream5 = new FileOutputStream(downloadMapFile);
                bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(fileOutputStream5, "UTF-8"));
                it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    bufferedWriter2.write((String) it2.next());
                    bufferedWriter2.newLine();
                }
                bufferedWriter2.flush();
                bufferedWriter2.close();
                bufferedWriterIsEmpty = fileOutputStream5;
            } catch (Throwable th6) {
                th2 = th6;
                bufferedWriter = bufferedWriterIsEmpty;
            }
        } catch (Throwable th7) {
            th = th7;
            bufferedReader2 = bufferedReader;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: deleteTmpFile, reason: merged with bridge method [inline-methods] */
    public void lambda$onDownloadFail$72(InnerCloudFile innerCloudFile) throws Throwable {
        if (innerCloudFile == null) {
            return;
        }
        String tempFileNameWithPath = innerCloudFile.getTempFileNameWithPath();
        if (TextUtils.isEmpty(tempFileNameWithPath)) {
            return;
        }
        String str = TAG;
        LogUtils.d(str, "download-file: " + ("delete tmp file: " + tempFileNameWithPath));
        lambda$onMovedSuccess$76(innerCloudFile);
        File file = new File(tempFileNameWithPath);
        if (!file.exists()) {
            LogUtils.d(str, "download-file: no tmp file to delete");
            return;
        }
        LogUtils.d(str, "download-file: " + ("delete tmp file: " + file.delete()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchMainThread(Runnable runnable) {
        if (runnable == null) {
            LogUtils.d(TAG, "download-file: dispatchMainThread fail, cause: runnable is null");
            return;
        }
        Handler handler = this.mainHandler;
        if (handler == null) {
            LogUtils.d(TAG, "download-file: dispatchMainThread fail, cause: mainHandler is null");
        } else {
            handler.post(runnable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long getDiskAvailableStorage() {
        String str = Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS;
        long j10 = -1;
        try {
            String externalStorageState = Environment.getExternalStorageState();
            File externalFilesDir = this.mContext.getExternalFilesDir(null);
            if (externalFilesDir == null) {
                return -1L;
            }
            StatFs statFs = new StatFs(externalFilesDir.getPath());
            if ("mounted".equals(externalStorageState)) {
                long blockSize = statFs.getBlockSize();
                long availableBlocks = statFs.getAvailableBlocks();
                j10 = blockSize * availableBlocks;
                str = availableBlocks;
            } else {
                LogUtils.d(TAG, "download-file: external storage state is not MEDIA_MOUNTED");
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "external storage state is not MEDIA_MOUNTED");
                str = str;
            }
        } catch (Exception e10) {
            String str2 = "get external storage exception: " + e10;
            LogUtils.d(TAG, "download-file: " + str2);
            CountlyUtil.recordEvent(str, str2);
        }
        return j10;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x008f  */
    /* JADX WARN: Code duplicated, block: B:47:0x0099  */
    /* JADX WARN: Code duplicated, block: B:77:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x012e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x0093 A[SYNTHETIC] */
    private Map<String, InnerCloudFile> getDownloadMaps(int i10) throws Throwable {
        InnerCloudFile innerCloudFile;
        CloudFile cloudFile;
        String strOptString;
        HashMap map = new HashMap();
        String downloadMapFile = InnerCloudFile.getDownloadMapFile(this.mTempDownloadPath);
        if (TextUtils.isEmpty(downloadMapFile)) {
            LogUtils.d(TAG, "download-file: get download maps fail, cause: tmp map file name is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "get download maps fail, cause: tmp map file name is null");
            return map;
        }
        ArrayList<String> arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(downloadMapFile), "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            arrayList.add(line);
                        } catch (FileNotFoundException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (arrayList.isEmpty()) {
                                return map;
                            }
                            for (String str : arrayList) {
                                if (TextUtils.isEmpty(str)) {
                                    try {
                                        JSONObject jSONObject = new JSONObject(str);
                                        innerCloudFile = new InnerCloudFile();
                                        innerCloudFile.tempFileName = jSONObject.optString("tmp_file_name", "");
                                        innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                                        cloudFile = new CloudFile();
                                        strOptString = jSONObject.optString("data");
                                        if (TextUtils.isEmpty(strOptString)) {
                                            JSONObject jSONObject2 = new JSONObject(strOptString);
                                            cloudFile.setName(jSONObject2.optString("name", ""));
                                            cloudFile.setPath(jSONObject2.optString("path", ""));
                                            cloudFile.setCloudPath(jSONObject2.optString("cloudPath", ""));
                                            cloudFile.setSize(jSONObject2.optLong("size", 0L));
                                            try {
                                                cloudFile.setVideoDuration(Double.parseDouble(jSONObject2.optString("duration", "")));
                                            } catch (NumberFormatException unused) {
                                            }
                                            cloudFile.setFileType(jSONObject2.optString("type", ""));
                                            innerCloudFile.cloudFile = cloudFile;
                                            if (i10 == 1) {
                                                map.put(cloudFile.getName(), innerCloudFile);
                                            } else {
                                                map.put(innerCloudFile.tempFileName, innerCloudFile);
                                            }
                                        }
                                    } catch (JSONException e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                            arrayList.clear();
                            return map;
                        } catch (UnsupportedEncodingException e12) {
                            e = e12;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (arrayList.isEmpty()) {
                                return map;
                            }
                            while (r2.hasNext()) {
                                if (TextUtils.isEmpty(str)) {
                                    JSONObject jSONObject3 = new JSONObject(str);
                                    innerCloudFile = new InnerCloudFile();
                                    innerCloudFile.tempFileName = jSONObject3.optString("tmp_file_name", "");
                                    innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                                    cloudFile = new CloudFile();
                                    strOptString = jSONObject3.optString("data");
                                    if (TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject4 = new JSONObject(strOptString);
                                        cloudFile.setName(jSONObject4.optString("name", ""));
                                        cloudFile.setPath(jSONObject4.optString("path", ""));
                                        cloudFile.setCloudPath(jSONObject4.optString("cloudPath", ""));
                                        cloudFile.setSize(jSONObject4.optLong("size", 0L));
                                        cloudFile.setVideoDuration(Double.parseDouble(jSONObject4.optString("duration", "")));
                                        cloudFile.setFileType(jSONObject4.optString("type", ""));
                                        innerCloudFile.cloudFile = cloudFile;
                                        if (i10 == 1) {
                                            map.put(cloudFile.getName(), innerCloudFile);
                                        } else {
                                            map.put(innerCloudFile.tempFileName, innerCloudFile);
                                        }
                                    }
                                }
                            }
                            arrayList.clear();
                            return map;
                        } catch (IOException e13) {
                            e = e13;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (arrayList.isEmpty()) {
                                return map;
                            }
                            while (r2.hasNext()) {
                                if (TextUtils.isEmpty(str)) {
                                    JSONObject jSONObject5 = new JSONObject(str);
                                    innerCloudFile = new InnerCloudFile();
                                    innerCloudFile.tempFileName = jSONObject5.optString("tmp_file_name", "");
                                    innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                                    cloudFile = new CloudFile();
                                    strOptString = jSONObject5.optString("data");
                                    if (TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject6 = new JSONObject(strOptString);
                                        cloudFile.setName(jSONObject6.optString("name", ""));
                                        cloudFile.setPath(jSONObject6.optString("path", ""));
                                        cloudFile.setCloudPath(jSONObject6.optString("cloudPath", ""));
                                        cloudFile.setSize(jSONObject6.optLong("size", 0L));
                                        cloudFile.setVideoDuration(Double.parseDouble(jSONObject6.optString("duration", "")));
                                        cloudFile.setFileType(jSONObject6.optString("type", ""));
                                        innerCloudFile.cloudFile = cloudFile;
                                        if (i10 == 1) {
                                            map.put(cloudFile.getName(), innerCloudFile);
                                        } else {
                                            map.put(innerCloudFile.tempFileName, innerCloudFile);
                                        }
                                    }
                                }
                            }
                            arrayList.clear();
                            return map;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e14) {
                                    e14.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e15) {
                e = e15;
            } catch (UnsupportedEncodingException e16) {
                e = e16;
            } catch (IOException e17) {
                e = e17;
            }
        } catch (IOException e18) {
            e18.printStackTrace();
        }
        if (arrayList.isEmpty()) {
            return map;
        }
        while (r2.hasNext()) {
            if (TextUtils.isEmpty(str)) {
                JSONObject jSONObject7 = new JSONObject(str);
                innerCloudFile = new InnerCloudFile();
                innerCloudFile.tempFileName = jSONObject7.optString("tmp_file_name", "");
                innerCloudFile.tempPath = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
                cloudFile = new CloudFile();
                strOptString = jSONObject7.optString("data");
                if (TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject8 = new JSONObject(strOptString);
                    cloudFile.setName(jSONObject8.optString("name", ""));
                    cloudFile.setPath(jSONObject8.optString("path", ""));
                    cloudFile.setCloudPath(jSONObject8.optString("cloudPath", ""));
                    cloudFile.setSize(jSONObject8.optLong("size", 0L));
                    cloudFile.setVideoDuration(Double.parseDouble(jSONObject8.optString("duration", "")));
                    cloudFile.setFileType(jSONObject8.optString("type", ""));
                    innerCloudFile.cloudFile = cloudFile;
                    if (i10 == 1) {
                        map.put(cloudFile.getName(), innerCloudFile);
                    } else {
                        map.put(innerCloudFile.tempFileName, innerCloudFile);
                    }
                }
            }
        }
        arrayList.clear();
        return map;
    }

    private void handleExceptionStata(String str) {
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.k0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33916b.lambda$handleExceptionStata$64();
            }
        });
        releaseTask();
        LogUtils.d(TAG, "download-file: download task is exception stata: " + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleKeepAliveResponse(long j10, boolean z10, String str, final InnerCloudFile innerCloudFile, final KeepAliveRetryStrategy keepAliveRetryStrategy, KeepAliveWaitStrategy keepAliveWaitStrategy) {
        KeepAliveResponseValidation keepAliveResponseValidation = this.keepAliveResponseValidation;
        if (keepAliveResponseValidation == null) {
            LogUtils.d(TAG, "download-file: a invalid keep alive response");
            return;
        }
        if (!keepAliveResponseValidation.checkResponseValidity(j10, innerCloudFile.cloudFile)) {
            LogUtils.d(TAG, "download-file: a invalid keep alive response");
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE, "response: " + z10);
        if (z10) {
            LogUtils.d(TAG, "download-file: request download keep alive success, request time-stamp: " + j10);
            return;
        }
        long interval = keepAliveRetryStrategy.getInterval();
        if (interval == -1) {
            LogUtils.d(TAG, "download-file: request download keep alive retry over limit");
            cancelKeepAliveTimerJob();
            releaseKeepAliveObserver();
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.i0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33905b.lambda$handleKeepAliveResponse$59(innerCloudFile);
                }
            });
            return;
        }
        String str2 = "request keep alive fail and retry; cause: " + str + "; retry interval: " + interval + " ms";
        LogUtils.d(TAG, "download-file: " + str2);
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.f0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33880b.lambda$handleKeepAliveResponse$57();
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.g0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33888b.lambda$handleKeepAliveResponse$58(innerCloudFile, keepAliveRetryStrategy);
            }
        }, interval, TOKEN_START_KEEP_ALIVE_RETRY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleStartKeepAliveOperationMessage, reason: merged with bridge method [inline-methods] */
    public void lambda$onStartKeepAlive$88(boolean z10) {
        final InnerCloudFile innerCloudFile;
        final KeepAliveWaitStrategy strategy;
        if (this.mKeepAliveTimerJob != null) {
            LogUtils.d(TAG, "download-file: get file from keep alive timer job");
            innerCloudFile = this.mKeepAliveTimerJob.getInnerCloudFile();
            strategy = this.mKeepAliveTimerJob.getStrategy();
            cancelKeepAliveTimerJob();
        } else {
            innerCloudFile = null;
            strategy = null;
        }
        if (innerCloudFile == null || strategy == null) {
            String str = innerCloudFile == null ? "file is null when start keep alive response" : "strategy is null when start keep alive response";
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str);
            LogUtils.d(TAG, "download-file: " + str);
            stopKeepAlive();
            nextStepPost(new p(this));
            return;
        }
        if (z10) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.v1
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f34007b.lambda$handleStartKeepAliveOperationMessage$62(innerCloudFile);
                }
            });
            return;
        }
        if (strategy.isValid()) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.u1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33991b.lambda$handleStartKeepAliveOperationMessage$61(innerCloudFile, strategy);
                }
            });
            return;
        }
        LogUtils.d(TAG, "download-file: wait strategy invalid when op 41 is false");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "wait strategy invalid when op 41 is false");
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.t1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33983b.lambda$handleStartKeepAliveOperationMessage$60(innerCloudFile);
            }
        });
    }

    private List<InnerCloudFile> initFiles(List<CloudFile> list) {
        ArrayList arrayList = new ArrayList();
        for (CloudFile cloudFile : list) {
            if (cloudFile != null) {
                InnerCloudFile innerCloudFile = new InnerCloudFile();
                innerCloudFile.cloudFile = cloudFile;
                innerCloudFile.downloadRetryStrategy = new DownloadRetryStrategy(this.mConfig);
                if (TextUtils.isEmpty(innerCloudFile.cloudFile.getPath())) {
                    innerCloudFile.isSaveToGallery = true;
                    innerCloudFile.cloudFile.setPath(InnerCloudFile.DOWNLOAD_DEFAULT_PATH);
                } else {
                    String path = innerCloudFile.cloudFile.getPath();
                    if (!path.endsWith(net.lingala.zip4j.util.e.F0)) {
                        path = path + net.lingala.zip4j.util.e.F0;
                    }
                    innerCloudFile.cloudFile.setPath(path);
                }
                innerCloudFile.tempPath = this.mTempDownloadPath;
                arrayList.add(innerCloudFile);
            }
        }
        return arrayList;
    }

    private boolean initTask(List<CloudFile> list) {
        if (TextUtils.isEmpty(InnerCloudFile.DOWNLOAD_DEFAULT_PATH)) {
            LogUtils.d(TAG, "download-file: DOWNLOAD_DEFAULT_PATH folder is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "DOWNLOAD_DEFAULT_PATH folder is null");
            return false;
        }
        String str = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH + this.mCid;
        this.mTempDownloadPath = str;
        if (!TextUtils.isEmpty(str)) {
            File file = new File(this.mTempDownloadPath);
            this.defaultDownloadFolder = file;
            if (!file.exists()) {
                this.defaultDownloadFolder.mkdirs();
            }
            this.mFiles.clear();
            this.mFiles.addAll(initFiles(list));
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("create cid folder error: ");
        sb2.append(TextUtils.isEmpty(this.mCid) ? "cid is null" : "folder is null");
        String string = sb2.toString();
        LogUtils.d(TAG, "download-file: " + string);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, string);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.BufferedWriter, java.io.Writer] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX INFO: renamed from: insertDownloadMap, reason: merged with bridge method [inline-methods] */
    public void lambda$handleStartKeepAliveOperationMessage$62(final InnerCloudFile innerCloudFile) throws Throwable {
        String message;
        String string;
        IOException e10;
        UnsupportedEncodingException e11;
        FileNotFoundException e12;
        String str = TAG;
        LogUtils.d(str, "download-file: insert map data: " + innerCloudFile.tempFileName);
        String downloadMapFile = InnerCloudFile.getDownloadMapFile(this.mTempDownloadPath);
        boolean zIsEmpty = TextUtils.isEmpty(downloadMapFile);
        ?? bufferedWriter = Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS;
        if (zIsEmpty) {
            LogUtils.d(str, "download-file: insert download map data fail, cause: tmp map file name is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "insert download map data fail, cause: tmp map file name is null");
            onDownloadFail(innerCloudFile, 1003, "IO error");
            return;
        }
        ?? r10 = 0;
        try {
            CloudFile cloudFile = innerCloudFile.cloudFile;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", cloudFile.getName());
            jSONObject.put("path", cloudFile.getPath());
            jSONObject.put("cloudPath", cloudFile.getCloudPath());
            jSONObject.put("size", cloudFile.getSize());
            jSONObject.put("duration", cloudFile.getVideoDuration());
            jSONObject.put("type", cloudFile.getFileType());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("tmp_file_name", innerCloudFile.tempFileName);
            jSONObject2.put("tmp_file_map_name", innerCloudFile.cloudFile.getName());
            jSONObject2.put("data", jSONObject);
            string = jSONObject2.toString();
            message = "";
        } catch (JSONException e13) {
            e13.printStackTrace();
            message = e13.getMessage();
            string = null;
        } catch (Exception e14) {
            e14.printStackTrace();
            message = e14.getMessage();
            string = null;
        }
        try {
            try {
                if (TextUtils.isEmpty(string)) {
                    String str2 = "make map data error when insert download map data, cause " + message;
                    LogUtils.d(TAG, "download-file: " + str2);
                    CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str2);
                    nextStepPost(new p(this));
                    return;
                }
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(downloadMapFile, true), "UTF-8"));
                    try {
                        bufferedWriter.write(string);
                        bufferedWriter.newLine();
                        bufferedWriter.close();
                        bufferedWriter = bufferedWriter;
                    } catch (FileNotFoundException e15) {
                        e12 = e15;
                        e12.printStackTrace();
                        if (bufferedWriter != 0) {
                            bufferedWriter.close();
                            bufferedWriter = bufferedWriter;
                        }
                        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.q2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f33959b.lambda$insertDownloadMap$41(innerCloudFile);
                            }
                        });
                    } catch (UnsupportedEncodingException e16) {
                        e11 = e16;
                        e11.printStackTrace();
                        if (bufferedWriter != 0) {
                            bufferedWriter.close();
                            bufferedWriter = bufferedWriter;
                        }
                        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.q2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f33959b.lambda$insertDownloadMap$41(innerCloudFile);
                            }
                        });
                    } catch (IOException e17) {
                        e10 = e17;
                        e10.printStackTrace();
                        if (bufferedWriter != 0) {
                            bufferedWriter.close();
                            bufferedWriter = bufferedWriter;
                        }
                        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.q2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f33959b.lambda$insertDownloadMap$41(innerCloudFile);
                            }
                        });
                    }
                } catch (FileNotFoundException e18) {
                    bufferedWriter = 0;
                    e12 = e18;
                } catch (UnsupportedEncodingException e19) {
                    bufferedWriter = 0;
                    e11 = e19;
                } catch (IOException e20) {
                    bufferedWriter = 0;
                    e10 = e20;
                } catch (Throwable th) {
                    th = th;
                    if (r10 != 0) {
                        try {
                            r10.close();
                        } catch (IOException e21) {
                            e21.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e22) {
                e22.printStackTrace();
            }
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.q2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33959b.lambda$insertDownloadMap$41(innerCloudFile);
                }
            });
        } catch (Throwable th2) {
            th = th2;
            r10 = bufferedWriter;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalCancel, reason: merged with bridge method [inline-methods] */
    public void lambda$cancelDownload$5(final CloudFile cloudFile, final CancelCallback cancelCallback) {
        int i10;
        if (TextUtils.isEmpty(cloudFile.getName())) {
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.j
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.lambda$internalCancel$15(cancelCallback, cloudFile);
                }
            });
        }
        final ArrayList arrayList = new ArrayList();
        arrayList.add(cloudFile);
        boolean z10 = true;
        if (this.mFiles.isEmpty()) {
            i10 = -1;
        } else {
            synchronized (this.mFiles) {
                int size = this.mFiles.size();
                i10 = 0;
                while (true) {
                    if (i10 >= size) {
                        i10 = -1;
                        break;
                    }
                    InnerCloudFile innerCloudFile = this.mFiles.get(i10);
                    boolean zEquals = innerCloudFile.cloudFile.getName().equals(cloudFile.getName());
                    boolean z11 = TextUtils.isEmpty(cloudFile.getPath()) || innerCloudFile.cloudFile.getPath().equals(cloudFile.getPath());
                    if (zEquals && z11) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 > -1) {
                    if (i10 < this.mFiles.size()) {
                        this.mFiles.remove(i10);
                    } else {
                        i10 = -1;
                    }
                }
            }
        }
        if (i10 != -1) {
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.k
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.lambda$internalCancel$16(cancelCallback, arrayList);
                }
            });
            return;
        }
        if (!cancelDownloadingFile(cloudFile)) {
            InnerCloudFile innerCloudFile2 = this.mCurrentInnerCloudFile;
            if (innerCloudFile2 == null) {
                dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadTask.lambda$internalCancel$17(cancelCallback, cloudFile);
                    }
                });
                return;
            }
            boolean zEquals2 = innerCloudFile2.cloudFile.getName().equals(cloudFile.getName());
            if (!TextUtils.isEmpty(cloudFile.getPath()) && !this.mCurrentInnerCloudFile.cloudFile.getPath().equals(cloudFile.getPath())) {
                z10 = false;
            }
            if (!zEquals2 || !z10) {
                dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadTask.lambda$internalCancel$18(cancelCallback, cloudFile);
                    }
                });
                return;
            }
        }
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.o
            @Override // java.lang.Runnable
            public final void run() {
                DownloadTask.lambda$internalCancel$19(cancelCallback, arrayList);
            }
        });
        if (this.mAccessOpenObserver != null && this.mAccessOpenTimerJob != null) {
            if (!this.mFiles.isEmpty()) {
                return;
            }
            releaseAccessOpenObserver();
            cancelAccessOpenTimerJob();
        }
        removeMessage(TOKEN_START_KEEP_ALIVE_RETRY);
        nextStepPost(new p(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalContinueTask() {
        HangUpData hangUpData = this.mHangUpData;
        if (hangUpData == null) {
            LogUtils.d(TAG, "download-file: no paused task");
            return;
        }
        if (hangUpData.mHangUpFiles.isEmpty()) {
            this.mHangUpData = null;
            LogUtils.d(TAG, "download-file: no file to continue task");
            return;
        }
        if (!TextUtils.equals(this.mHangUpData.mHangUpCid, this.mCid)) {
            LogUtils.d(TAG, "download-file: not match cid to continue task");
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.n1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33938b.lambda$internalContinueTask$45();
                }
            });
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("check hang up files: ");
        for (CloudFile cloudFile : this.mHangUpData.mHangUpFiles) {
            stringBuffer.append("[");
            stringBuffer.append(cloudFile);
            stringBuffer.append("], ");
        }
        LogUtils.d(TAG, "download-file: " + ((Object) stringBuffer));
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, stringBuffer.toString());
        final ArrayList arrayList = new ArrayList(this.mHangUpData.mHangUpFiles);
        this.mHangUpData = null;
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.p1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33951b.lambda$internalContinueTask$46(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalHangUp() {
        ArrayList<CloudFile> arrayListInternalPauseTask = internalPauseTask();
        HangUpData hangUpData = new HangUpData();
        this.mHangUpData = hangUpData;
        hangUpData.mHangUpCid = this.mCid;
        hangUpData.mHangUpFiles = new ArrayList<>(arrayListInternalPauseTask);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("hang up files: ");
        for (CloudFile cloudFile : arrayListInternalPauseTask) {
            stringBuffer.append("[");
            stringBuffer.append(cloudFile);
            stringBuffer.append("], ");
        }
        LogUtils.d(TAG, "download-file: " + ((Object) stringBuffer));
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, stringBuffer.toString());
    }

    private ArrayList<CloudFile> internalPauseTask() {
        CloudFile cloudFile;
        ArrayList<CloudFile> arrayList = new ArrayList<>();
        Context context = this.mContext;
        if (context != null && NetworkUtil.isNetworkConnected(context)) {
            stopKeepAlive();
        }
        cancelAccessOpenTimerJob();
        cancelKeepAliveTimerJob();
        HashMap map = new HashMap();
        DownloadRetryJob downloadRetryJob = this.mDownloadRetryJob;
        if (downloadRetryJob != null) {
            InnerCloudFile file = downloadRetryJob.getFile();
            if (file != null && (cloudFile = file.cloudFile) != null) {
                String string = cloudFile.toString();
                if (!map.containsKey(string)) {
                    map.put(string, file.cloudFile);
                }
            }
            cancelDownloadRetryJob();
        }
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob == null || !downloadJob.isDownloading()) {
            InnerCloudFile innerCloudFile = this.mCurrentInnerCloudFile;
            if (innerCloudFile != null) {
                String string2 = innerCloudFile.cloudFile.toString();
                if (!map.containsKey(string2)) {
                    map.put(string2, this.mCurrentInnerCloudFile.cloudFile);
                }
            }
        } else {
            CloudFile cloudFile2 = this.mDownloadJob.getFile().cloudFile;
            if (cancelDownloadingFile(cloudFile2)) {
                String string3 = cloudFile2.toString();
                if (!map.containsKey(string3)) {
                    map.put(string3, cloudFile2);
                }
            }
        }
        synchronized (this.mFiles) {
            for (InnerCloudFile innerCloudFile2 : this.mFiles) {
                String string4 = innerCloudFile2.toString();
                if (!map.containsKey(string4)) {
                    map.put(string4, innerCloudFile2.cloudFile);
                }
            }
            this.mFiles.clear();
        }
        Iterator it2 = map.values().iterator();
        while (it2.hasNext()) {
            arrayList.add((CloudFile) it2.next());
        }
        this.mState = DownloadState.IDLE;
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:34:0x00ae  */
    /* JADX INFO: renamed from: internalQueryFiles, reason: merged with bridge method [inline-methods] */
    public void lambda$queryFiles$9(QueryCallback queryCallback) throws Throwable {
        JSONObject jSONObject;
        Throwable th;
        this.mQueryCallback = queryCallback;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket == null) {
            LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + "query cloud file error: WebSocketManager is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_QUERY_RESULT, "fail; query cloud file error: WebSocketManager is null");
            if (queryCallback != null) {
                queryCallback.onQueryFail(1001, "web-socket is not init");
                return;
            }
            return;
        }
        if (this.mQueryObserver != null || this.mWsServerOpenTimerJob != null) {
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.i1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33907b.lambda$internalQueryFiles$38();
                }
            });
            return;
        }
        if (!iWebSocket.isConnect(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER)) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.j1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33912b.lambda$internalQueryFiles$40();
                }
            });
            return;
        }
        String string = null;
        try {
            jSONObject = new JSONObject();
            try {
                try {
                    jSONObject.put("type", Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE);
                    jSONObject.put(NotificationCompat.CATEGORY_EVENT, "download_file_list");
                } catch (JSONException e10) {
                    e = e10;
                    e.printStackTrace();
                    if (jSONObject != null) {
                    }
                    LogUtils.d(TAG, "download-file: query cloud file order: " + string);
                    startQueryTimerJob();
                    IWebSocket iWebSocket2 = this.mWebSocketManager;
                    WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
                    iWebSocket2.addObserver(webSocketType, createQueryObserver());
                    this.mWebSocketManager.sendTextMessage(webSocketType, string);
                }
            } catch (Throwable th2) {
                th = th2;
                if (jSONObject != null) {
                    jSONObject.toString();
                }
                throw th;
            }
        } catch (JSONException e11) {
            e = e11;
            jSONObject = null;
        } catch (Throwable th3) {
            jSONObject = null;
            th = th3;
            if (jSONObject != null) {
                jSONObject.toString();
            }
            throw th;
        }
        string = jSONObject.toString();
        LogUtils.d(TAG, "download-file: query cloud file order: " + string);
        startQueryTimerJob();
        IWebSocket iWebSocket3 = this.mWebSocketManager;
        WebSocketManager.WebSocketType webSocketType2 = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        iWebSocket3.addObserver(webSocketType2, createQueryObserver());
        this.mWebSocketManager.sendTextMessage(webSocketType2, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalTransferData, reason: merged with bridge method [inline-methods] */
    public void lambda$getTransferData$12(final TransferDataCallback transferDataCallback) {
        HangUpData hangUpData = this.mHangUpData;
        if (hangUpData == null) {
            LogUtils.d(TAG, "download-file: not data to transfer");
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.k1
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.lambda$internalTransferData$42(transferDataCallback);
                }
            });
            return;
        }
        ArrayList<CloudFile> arrayList = hangUpData.mHangUpFiles;
        if (arrayList != null && !arrayList.isEmpty()) {
            final DownloadTransferData downloadTransferData = new DownloadTransferData();
            downloadTransferData.cid = this.mCid;
            downloadTransferData.files = new ArrayList(this.mHangUpData.mHangUpFiles);
            downloadTransferData.downloadMode = getMode();
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.m1
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.lambda$internalTransferData$44(transferDataCallback, downloadTransferData);
                }
            });
            return;
        }
        LogUtils.d(TAG, "download-file: no file to transfer");
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.l1
            @Override // java.lang.Runnable
            public final void run() {
                DownloadTask.lambda$internalTransferData$43(transferDataCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalUpdateFiles, reason: merged with bridge method [inline-methods] */
    public void lambda$updateFiles$8(List<CloudFile> list, final UpdateCallback updateCallback) {
        InnerCloudFile file;
        if (list == null || list.isEmpty()) {
            LogUtils.d(TAG, "download-file:  update files callback is null");
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.n2
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.lambda$internalUpdateFiles$35(updateCallback);
                }
            });
            return;
        }
        if (!isRunning()) {
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.o2
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.lambda$internalUpdateFiles$36(updateCallback);
                }
            });
            return;
        }
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob == null || !downloadJob.isDownloading()) {
            cancelDownloadRetryJob();
            file = this.mCurrentInnerCloudFile;
        } else {
            file = this.mDownloadJob.getFile();
        }
        String str = file != null ? file.cloudFile.getCloudPath() + file.cloudFile.getName() : "";
        final ArrayList arrayList = new ArrayList();
        for (CloudFile cloudFile : list) {
            if (str.equals(cloudFile.getCloudPath() + cloudFile.getName())) {
                String path = file.cloudFile.getPath();
                String path2 = cloudFile.getPath();
                if (TextUtils.isEmpty(path)) {
                    path = InnerCloudFile.DOWNLOAD_DEFAULT_PATH;
                    file.cloudFile.setPath(path);
                }
                if (TextUtils.isEmpty(path2)) {
                    path2 = InnerCloudFile.DOWNLOAD_DEFAULT_PATH;
                    cloudFile.setPath(path2);
                }
                String str2 = TAG;
                LogUtils.d(str2, "download-file: " + ("downloading path=" + path + ", update path=" + path2));
                if (!path.equals(path2)) {
                    if (!path2.endsWith(net.lingala.zip4j.util.e.F0)) {
                        path2 = path2 + File.separator;
                    }
                    file.cloudFile.setPath(path2);
                    LogUtils.d(str2, "download-file: update downloading file path");
                } else if (!path.endsWith(net.lingala.zip4j.util.e.F0)) {
                    file.cloudFile.setPath(path + File.separator);
                    LogUtils.d(str2, "download-file: reset downloading file path");
                }
            } else {
                arrayList.add(cloudFile);
            }
        }
        synchronized (this.mFiles) {
            this.mFiles.clear();
            this.mFiles.addAll(initFiles(arrayList));
        }
        if (file != null) {
            arrayList.add(0, file.cloudFile);
        }
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.p2
            @Override // java.lang.Runnable
            public final void run() {
                DownloadTask.lambda$internalUpdateFiles$37(updateCallback, arrayList);
            }
        });
    }

    private List<CloudFile> internalWorkingFiles() {
        ArrayList arrayList = new ArrayList();
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob == null || !downloadJob.isDownloading()) {
            InnerCloudFile innerCloudFile = this.mCurrentInnerCloudFile;
            if (innerCloudFile != null) {
                arrayList.add(innerCloudFile.cloudFile);
            }
        } else {
            LogUtils.d(TAG, "download-file: get downloading file");
            arrayList.add(this.mDownloadJob.getFile().cloudFile);
        }
        synchronized (this.mFiles) {
            Iterator<InnerCloudFile> it2 = this.mFiles.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().cloudFile);
            }
        }
        return arrayList;
    }

    private boolean isSameFile(InnerCloudFile innerCloudFile, InnerCloudFile innerCloudFile2) {
        CloudFile cloudFile;
        if (innerCloudFile == null || innerCloudFile2 == null || (cloudFile = innerCloudFile.cloudFile) == null || innerCloudFile2.cloudFile == null) {
            return false;
        }
        return cloudFile.toString().equals(innerCloudFile2.cloudFile.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cancelTask$14(CancelCallback cancelCallback, ArrayList arrayList) {
        if (cancelCallback != null) {
            cancelCallback.onCanceled(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkBreakPoint$30(InnerCloudFile innerCloudFile) {
        onDownloadFail(innerCloudFile, 1003, "IO error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkContinueTask$11() {
        this.mHangUpData = null;
        onDownloadFail(1002, "cid not match for task");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiskStorage$32(InnerCloudFile innerCloudFile, String str) {
        onDownloadFail(innerCloudFile, 1003, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiskStorage$33() {
        onDownloadFail(1005, "Not enough external storage");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiskStorage$34(InnerCloudFile innerCloudFile) {
        startKeepAlive(innerCloudFile, new KeepAliveRetryStrategy(this.mConfig), new KeepAliveWaitStrategy(this.mConfig));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStatus$13() {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onStart(this.mDownloadMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkWebSocketState$47() {
        onDownloadFail(1001, "web-socket is not ready");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkWebSocketState$48(Runnable runnable) {
        releaseAccessOpenObserver();
        this.mWebSocketManager.addObserver(WebSocketManager.WebSocketType.TYPE_ACCESS, createAccessOpenObserver(runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkWebSocketState$49(Runnable runnable) {
        cancelAccessOpenTimerJob();
        startAccessOpenTimerJob(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkWsServerSocketState$50() {
        QueryCallback queryCallback = this.mQueryCallback;
        if (queryCallback != null) {
            queryCallback.onQueryFail(1004, "web-socket is not init");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkWsServerSocketState$51(Runnable runnable) {
        releaseWsServerOpenObserver();
        this.mWebSocketManager.addObserver(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, createWsServerOpenObserver(runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkWsServerSocketState$52(Runnable runnable) {
        cancelWsServerOpenTimerJob();
        startWsServerOpenTimerJob(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMapFile$21() {
        checkWebSocketState(new Runnable() { // from class: com.haima.hmcp.cloud.video.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f33839b.lambda$null$20();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$0() {
        onDownloadFail(1001, "Not in service");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$1() {
        onDownloadFail(1001, "Not in service");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$2() {
        onDownloadFail(1002, "cid is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$3() {
        onDownloadFail(1002, "download url is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getWorkingFiles$7(final WorkingFileCallback workingFileCallback) {
        final List<CloudFile> listInternalWorkingFiles = internalWorkingFiles();
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.r2
            @Override // java.lang.Runnable
            public final void run() {
                DownloadTask.lambda$null$6(workingFileCallback, listInternalWorkingFiles);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleExceptionStata$64() {
        onDownloadFail(1006, "Download task error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleKeepAliveResponse$57() {
        cancelKeepAliveTimerJob();
        releaseKeepAliveObserver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleKeepAliveResponse$58(InnerCloudFile innerCloudFile, KeepAliveRetryStrategy keepAliveRetryStrategy) {
        startKeepAlive(innerCloudFile, keepAliveRetryStrategy, new KeepAliveWaitStrategy(this.mConfig));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleKeepAliveResponse$59(InnerCloudFile innerCloudFile) {
        onDownloadFail(innerCloudFile, 1004, "Network request timeout");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleStartKeepAliveOperationMessage$60(InnerCloudFile innerCloudFile) {
        onDownloadFail(innerCloudFile, 1004, "Network error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleStartKeepAliveOperationMessage$61(InnerCloudFile innerCloudFile, KeepAliveWaitStrategy keepAliveWaitStrategy) {
        startKeepAlive(innerCloudFile, new KeepAliveRetryStrategy(this.mConfig), keepAliveWaitStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalCancel$15(CancelCallback cancelCallback, CloudFile cloudFile) {
        if (cancelCallback != null) {
            cancelCallback.onCancelFail(cloudFile, 1002, "The file name is null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalCancel$16(CancelCallback cancelCallback, ArrayList arrayList) {
        if (cancelCallback != null) {
            cancelCallback.onCanceled(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalCancel$17(CancelCallback cancelCallback, CloudFile cloudFile) {
        if (cancelCallback != null) {
            cancelCallback.onCancelFail(cloudFile, 1006, "The file is not exist");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalCancel$18(CancelCallback cancelCallback, CloudFile cloudFile) {
        if (cancelCallback != null) {
            cancelCallback.onCancelFail(cloudFile, 1006, "The file is not exist");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalCancel$19(CancelCallback cancelCallback, ArrayList arrayList) {
        if (cancelCallback != null) {
            cancelCallback.onCanceled(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$internalContinueTask$45() {
        this.mHangUpData = null;
        onDownloadFail(1002, "cid not match for task");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$internalQueryFiles$38() {
        QueryCallback queryCallback = this.mQueryCallback;
        if (queryCallback != null) {
            queryCallback.onQueryFail(1001, "wait for query result");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$internalQueryFiles$40() {
        checkWsServerSocketState(new Runnable() { // from class: com.haima.hmcp.cloud.video.o1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f33944b.lambda$null$39();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalTransferData$42(TransferDataCallback transferDataCallback) {
        if (transferDataCallback != null) {
            transferDataCallback.onData(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalTransferData$43(TransferDataCallback transferDataCallback) {
        if (transferDataCallback != null) {
            transferDataCallback.onData(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalTransferData$44(TransferDataCallback transferDataCallback, DownloadTransferData downloadTransferData) {
        if (transferDataCallback != null) {
            transferDataCallback.onData(downloadTransferData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalUpdateFiles$35(UpdateCallback updateCallback) {
        if (updateCallback != null) {
            updateCallback.onUpdateFail(1002, "The file list is null or size is 0");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalUpdateFiles$36(UpdateCallback updateCallback) {
        if (updateCallback != null) {
            updateCallback.onUpdateFail(1001, "The download task is not running");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$internalUpdateFiles$37(UpdateCallback updateCallback, ArrayList arrayList) {
        if (updateCallback != null) {
            updateCallback.onUpdated(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$keepAliveTimeUp$10(InnerCloudFile innerCloudFile) {
        onDownloadFail(innerCloudFile, 1006, "Download time is use up");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$null$39() throws Throwable {
        lambda$queryFiles$9(this.mQueryCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$null$6(WorkingFileCallback workingFileCallback, List list) {
        if (workingFileCallback != null) {
            workingFileCallback.onWorking(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDownload$67(InnerCloudFile innerCloudFile) {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onDownload(innerCloudFile.cloudFile);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDownloadFail$70(InnerCloudFile innerCloudFile, int i10, String str) {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onDownloadFail(innerCloudFile.cloudFile, i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDownloadFail$71() {
        cancelProgressChecker();
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob != null) {
            downloadJob.cancel();
            this.mDownloadJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDownloadFail$73(int i10, String str) {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onFail(this.mDownloadMode, i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDownloadFinish$74(DownloadMode downloadMode) {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onFinish(downloadMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMovedFail$79(InnerCloudFile innerCloudFile, int i10, String str) {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onDownloadFail(innerCloudFile.cloudFile, i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMovedSuccess$75(InnerCloudFile innerCloudFile) {
        String str = innerCloudFile.cloudFile.getPath() + innerCloudFile.cloudFile.getDownloadedName();
        LogUtils.d(TAG, "download-file: scan move success file: " + str);
        MediaUtil.scanMedia(this.mContext, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMovedSuccess$77(InnerCloudFile innerCloudFile) {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onDownloaded(innerCloudFile.cloudFile);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onProgress$69(InnerCloudFile innerCloudFile, long j10, long j11) {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onProgress(innerCloudFile.cloudFile, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onProgressFreeze$82(InnerCloudFile innerCloudFile) {
        onDownloadFail(innerCloudFile, 1004, "Network error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onQueryFail$85(int i10, String str) {
        QueryCallback queryCallback = this.mQueryCallback;
        if (queryCallback != null) {
            queryCallback.onQueryFail(i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onQueryFail$86() {
        cancelQueryTimerJob();
        releaseQueryObserver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onQuerySuccess$83(List list) {
        QueryCallback queryCallback = this.mQueryCallback;
        if (queryCallback != null) {
            queryCallback.onQuery(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onQuerySuccess$84() {
        cancelQueryTimerJob();
        releaseQueryObserver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onQueryTimeOut$87() {
        QueryCallback queryCallback = this.mQueryCallback;
        if (queryCallback != null) {
            queryCallback.onQueryFail(1004, "Query time out");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRunning$81() {
        DownloadLifeCycleCallback downloadLifeCycleCallback = this.mCallbackToApp;
        if (downloadLifeCycleCallback != null) {
            downloadLifeCycleCallback.onDownloading();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDownloadFile$23() {
        onDownloadFail(null, 1002, "The file is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDownloadFile$24(InnerCloudFile innerCloudFile, String str) {
        onDownloadFail(innerCloudFile, 1002, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDownloadFile$25(InnerCloudFile innerCloudFile, String str) {
        onDownloadFail(innerCloudFile, 1002, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDownloadFile$26(InnerCloudFile innerCloudFile, String str) {
        onDownloadFail(innerCloudFile, 1002, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDownloadFile$27(InnerCloudFile innerCloudFile, String str) {
        onDownloadFail(innerCloudFile, 1002, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDownloadFile$28(InnerCloudFile innerCloudFile, String str) {
        onDownloadFail(innerCloudFile, 1002, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRetryJob$66(final InnerCloudFile innerCloudFile) {
        String str = TAG;
        LogUtils.d(str, "download-file: " + ("to retry download retry, file=" + innerCloudFile));
        if (this.mHangUpData == null) {
            this.mCurrentInnerCloudFile = innerCloudFile;
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33896b.lambda$null$65(innerCloudFile);
                }
            });
            return;
        }
        LogUtils.d(str, "download-file: the task is hang up, don`t to download retry");
        if (this.mHangUpData.mHangUpFiles.isEmpty()) {
            this.mHangUpData.mHangUpFiles.add(innerCloudFile.cloudFile);
            LogUtils.d(str, "download-file: no file in hang up task, add retry file into hang up task");
        } else {
            boolean z10 = false;
            for (CloudFile cloudFile : this.mHangUpData.mHangUpFiles) {
                if ((cloudFile.getCloudPath() + cloudFile.getName()).equals(cloudFile.getCloudPath() + cloudFile.getName())) {
                    z10 = true;
                }
            }
            if (!z10) {
                LogUtils.d(TAG, "download-file: retry file is not in hang up task list, add retry file into hang up task");
                this.mHangUpData.mHangUpFiles.add(innerCloudFile.cloudFile);
            }
        }
        cancelDownloadRetryJob();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startScanFileJob$63(SearchCallback searchCallback) {
        if (searchCallback != null) {
            searchCallback.onSearched(new ArrayList());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toRequestKeepAlive$56() {
        onDownloadFail(1004, "Network status error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$waitKeepAliveResult$54(InnerCloudFile innerCloudFile) {
        onDownloadFail(innerCloudFile, 1001, "web-socket is not ready");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nextStepPost(Runnable runnable) {
        DownloadHandler downloadHandler;
        if (runnable == null || (downloadHandler = this.mDownloadHandler) == null) {
            handleExceptionStata("download handler is null when post runnable");
        } else {
            downloadHandler.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: prepareDownloadFile, reason: merged with bridge method [inline-methods] */
    public void lambda$scheduleTask$22(final InnerCloudFile innerCloudFile) {
        String str = TAG;
        LogUtils.d(str, "download-file: prepare to download file: " + innerCloudFile);
        if (innerCloudFile == null) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.a2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33843b.lambda$prepareDownloadFile$23();
                }
            });
            return;
        }
        CloudFile cloudFile = innerCloudFile.cloudFile;
        if (TextUtils.isEmpty(cloudFile.getName())) {
            final String str2 = "illegal argument error: name is null";
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.b2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33849b.lambda$prepareDownloadFile$24(innerCloudFile, str2);
                }
            });
            return;
        }
        File file = new File(cloudFile.getPath());
        if (!(file.exists() ? file.canWrite() : file.mkdirs())) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("download-file: ");
            final String str3 = "illegal argument error: path can`t write";
            sb2.append("illegal argument error: path can`t write");
            sb2.append(", ");
            sb2.append(cloudFile.getPath());
            LogUtils.d(str, sb2.toString());
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.c2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33859b.lambda$prepareDownloadFile$25(innerCloudFile, str3);
                }
            });
            return;
        }
        if (TextUtils.isEmpty(cloudFile.getCloudPath())) {
            final String str4 = "illegal argument error: cloudPath is null";
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.d2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33867b.lambda$prepareDownloadFile$26(innerCloudFile, str4);
                }
            });
            return;
        }
        if (cloudFile.getSize() <= 0) {
            final String str5 = "illegal argument error: size is null";
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.e2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33875b.lambda$prepareDownloadFile$27(innerCloudFile, str5);
                }
            });
            return;
        }
        boolean z10 = false;
        try {
            if (cloudFile.getSize() <= 0) {
                z10 = true;
            }
        } catch (NumberFormatException unused) {
        }
        if (z10) {
            final String str6 = "illegal argument error: size=" + cloudFile.getSize();
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.f2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33882b.lambda$prepareDownloadFile$28(innerCloudFile, str6);
                }
            });
            return;
        }
        long downloadTime = innerCloudFile.cloudFile.getDownloadTime();
        if (downloadTime != 0) {
            innerCloudFile.cloudFile.setDownloadTime(Math.min(Math.max(downloadTime, 60L), 3600L));
            String str7 = "reset keep alive time: " + innerCloudFile.cloudFile.getDownloadTime();
            LogUtils.d(TAG, "download-file: " + str7);
        } else {
            innerCloudFile.cloudFile.setDownloadTime(this.mConfig.keepAliveDefaultTime);
        }
        innerCloudFile.tempFileName = System.currentTimeMillis() + ".tmp";
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.g2
            @Override // java.lang.Runnable
            public final void run() {
                this.f33893b.lambda$prepareDownloadFile$29(innerCloudFile);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseAccessOpenObserver() {
        if (this.mAccessOpenObserver != null) {
            LogUtils.d(TAG, "download-file: release access open observer");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "release access open observer");
            IWebSocket iWebSocket = this.mWebSocketManager;
            if (iWebSocket != null) {
                iWebSocket.removeObserver(WebSocketManager.WebSocketType.TYPE_ACCESS, this.mAccessOpenObserver);
            }
            this.mAccessOpenObserver.release();
            this.mAccessOpenObserver = null;
        }
    }

    private void releaseDownload() {
        String str = TAG;
        LogUtils.d(str, "download-file:  release download task...");
        this.mDownloadMode = null;
        cancelDownloadJob();
        cancelProgressChecker();
        cancelMoveFileJob();
        cancelKeepAliveTimerJob();
        cancelDownloadRetryJob();
        this.mFiles.clear();
        LogUtils.d(str, "download-file: clear download files");
        this.mState = DownloadState.IDLE;
    }

    private void releaseJob() {
        cancelScanFileJob();
        cancelQueryTimerJob();
    }

    private void releaseKeepAliveObserver() {
        if (this.mKeepAliveObserver != null) {
            LogUtils.d(TAG, "download-file: release keep alive observer");
            IWebSocket iWebSocket = this.mWebSocketManager;
            if (iWebSocket != null) {
                iWebSocket.removeObserver(WebSocketManager.WebSocketType.TYPE_ACCESS, this.mKeepAliveObserver);
            }
            this.mKeepAliveObserver.release();
            this.mKeepAliveObserver = null;
        }
    }

    private void releaseQueryObserver() {
        if (this.mQueryObserver != null) {
            LogUtils.d(TAG, "download-file: release query observer");
            IWebSocket iWebSocket = this.mWebSocketManager;
            if (iWebSocket != null) {
                iWebSocket.removeObserver(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, this.mQueryObserver);
            }
            this.mQueryObserver.release();
            this.mQueryObserver = null;
        }
    }

    private void releaseTask() {
        String str = TAG;
        LogUtils.d(str, "download-file:  release download task...");
        releaseJob();
        this.mFiles.clear();
        LogUtils.d(str, "download-file: clear download files");
        this.mState = DownloadState.IDLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseWsServerOpenObserver() {
        if (this.mWsServerOpenObserver != null) {
            LogUtils.d(TAG, "download-file: release ws-server open observer");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "release ws-server open observer");
            IWebSocket iWebSocket = this.mWebSocketManager;
            if (iWebSocket != null) {
                iWebSocket.removeObserver(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, this.mWsServerOpenObserver);
            }
            this.mWsServerOpenObserver.release();
            this.mWsServerOpenObserver = null;
        }
    }

    private void removeMessage(String str) {
        if (this.mDownloadHandler == null) {
            return;
        }
        LogUtils.d(TAG, "download-file: remove job token: " + str);
        this.mDownloadHandler.removeCallbacksAndMessages(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: scheduleTask, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$onMovedSuccess$78() {
        if (this.mFiles.isEmpty()) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.w0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34016b.onDownloadFinish();
                }
            });
            return;
        }
        LogUtils.d(TAG, "download-file: get download file from file list");
        final InnerCloudFile innerCloudFileRemove = this.mFiles.remove(0);
        this.mCurrentInnerCloudFile = innerCloudFileRemove;
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.x0
            @Override // java.lang.Runnable
            public final void run() {
                this.f34023b.lambda$scheduleTask$22(innerCloudFileRemove);
            }
        });
    }

    private void startAccessOpenTimerJob(Runnable runnable) {
        LogUtils.d(TAG, "download-file: start access open timer-out job, delay: 5000");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "start access open timer-out job, delay: 5000");
        WebSocketOpenTimerJob webSocketOpenTimerJob = new WebSocketOpenTimerJob(new AnonymousClass7(runnable));
        this.mAccessOpenTimerJob = webSocketOpenTimerJob;
        nextStepPost(webSocketOpenTimerJob, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startDownloadJob, reason: merged with bridge method [inline-methods] */
    public void lambda$insertDownloadMap$41(InnerCloudFile innerCloudFile) {
        String cloudPath = innerCloudFile.cloudFile.getCloudPath();
        String name = innerCloudFile.cloudFile.getName();
        if (!cloudPath.endsWith(net.lingala.zip4j.util.e.F0)) {
            cloudPath = cloudPath + net.lingala.zip4j.util.e.F0;
        }
        String str = this.url + cloudPath + name;
        String str2 = "download url: " + str;
        String str3 = TAG;
        LogUtils.d(str3, "download-file: " + str2);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str2);
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob != null) {
            if (downloadJob.isDownloading()) {
                String str4 = this.mDownloadJob.getFile().cloudFile.getName() + " is downloading when the next file to download";
                LogUtils.e(str3, "download-file:  " + str4);
                CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str4);
            }
            this.mDownloadJob.cancel();
            this.mDownloadJob = null;
        }
        this.mCurrentInnerCloudFile = null;
        DownloadJob downloadJob2 = new DownloadJob(this.mContext, innerCloudFile, this);
        this.mDownloadJob = downloadJob2;
        downloadJob2.setUrl(str);
        this.mDownloadJob.setCid(this.mCid);
        this.mDownloadJob.setConfig(this.mConfig);
        nextStepPost(this.mDownloadJob);
    }

    private void startDownloadRetryJob(InnerCloudFile innerCloudFile, long j10) {
        cancelDownloadRetryJob();
        String str = "start download retry job, file=" + innerCloudFile + ", delay=" + j10;
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str);
        LogUtils.d(TAG, "download-file: " + str);
        DownloadRetryJob downloadRetryJob = new DownloadRetryJob(innerCloudFile, new DownloadRetryJob.DownloadRetryCallback() { // from class: com.haima.hmcp.cloud.video.z1
            @Override // com.haima.hmcp.cloud.video.job.DownloadRetryJob.DownloadRetryCallback
            public final void onDownloadRetry(InnerCloudFile innerCloudFile2) {
                this.f34038a.lambda$startDownloadRetryJob$66(innerCloudFile2);
            }
        });
        this.mDownloadRetryJob = downloadRetryJob;
        nextStepPost(downloadRetryJob, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startKeepAlive(final InnerCloudFile innerCloudFile, final KeepAliveRetryStrategy keepAliveRetryStrategy, final KeepAliveWaitStrategy keepAliveWaitStrategy) {
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33947b.lambda$startKeepAlive$53(innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy);
            }
        });
    }

    private boolean startKeepAliveTimerJob(InnerCloudFile innerCloudFile, KeepAliveRetryStrategy keepAliveRetryStrategy, KeepAliveWaitStrategy keepAliveWaitStrategy) {
        KeepAliveTimerJob keepAliveTimerJob = this.mKeepAliveTimerJob;
        if (keepAliveTimerJob != null) {
            InnerCloudFile innerCloudFile2 = keepAliveTimerJob.getInnerCloudFile();
            this.mKeepAliveTimerJob.cancel();
            DownloadHandler downloadHandler = this.mDownloadHandler;
            if (downloadHandler != null) {
                downloadHandler.removeCallbacks(this.mKeepAliveTimerJob);
            }
            this.mKeepAliveTimerJob = null;
            String str = "has a keep alive timer when wait keep alive result, file: " + innerCloudFile2;
            LogUtils.e(TAG, "download-file: " + str);
            CountlyUtil.recordErrorEvent(str);
        }
        long interval = keepAliveWaitStrategy.getInterval();
        String str2 = TAG;
        LogUtils.d(str2, "download-file: " + ("to start keep alive timer, timeout=" + interval + "; file=" + innerCloudFile));
        if (interval != -1) {
            KeepAliveTimerJob keepAliveTimerJob2 = new KeepAliveTimerJob(innerCloudFile, new AnonymousClass4(keepAliveRetryStrategy));
            this.mKeepAliveTimerJob = keepAliveTimerJob2;
            keepAliveTimerJob2.setStrategy(keepAliveWaitStrategy);
            nextStepPost(this.mKeepAliveTimerJob, interval);
            return true;
        }
        String str3 = "keep alive result strategy over limit: " + keepAliveWaitStrategy;
        LogUtils.e(str2, "download-file: " + str3);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str3);
        this.keepAliveResponseValidation = null;
        onDownloadFail(innerCloudFile, 1004, "Keep alive over limit");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startMoveFileJob, reason: merged with bridge method [inline-methods] */
    public void lambda$onDownloaded$68(InnerCloudFile innerCloudFile) {
        MoveFileJob moveFileJob = new MoveFileJob(this.mContext, this.mCid, innerCloudFile, this);
        this.mMoveFileJob = moveFileJob;
        nextStepPost(moveFileJob);
    }

    private void startProgressChecker() {
        cancelProgressChecker();
        String str = "start file download progress checker, interval: " + this.mConfig.progressCheckInterval;
        LogUtils.d(TAG, "download-file: " + str);
        CheckDownloadProgressJob checkDownloadProgressJob = new CheckDownloadProgressJob(this.mConfig, this);
        this.mCheckDownloadProgressJob = checkDownloadProgressJob;
        nextStepPost(checkDownloadProgressJob, this.mConfig.progressCheckInterval);
    }

    private void startQueryTimerJob() {
        cancelQueryTimerJob();
        LogUtils.d(TAG, "download-file: start query timer; time=5000");
        QueryTimerJob queryTimerJob = new QueryTimerJob(this);
        this.mQueryTimerJob = queryTimerJob;
        nextStepPost(queryTimerJob, 5000L);
    }

    private void startScanFileJob(String str, final SearchCallback searchCallback) {
        DownloadJob downloadJob = this.mDownloadJob;
        InnerCloudFile file = (downloadJob == null || !downloadJob.isDownloading()) ? null : this.mDownloadJob.getFile();
        String str2 = TAG;
        LogUtils.d(str2, "download-file: start scan file job");
        this.mScanFileJob = new ScanFileJob(file, new AnonymousClass5(searchCallback));
        String str3 = InnerCloudFile.DOWNLOAD_TEMP_FILE_PATH;
        if (!TextUtils.isEmpty(str3)) {
            this.mScanFileJob.setCid(str);
            this.mScanFileJob.setScanPath(str3);
            nextStepPost(this.mScanFileJob);
        } else {
            LogUtils.d(str2, "download-file: scan file exception, cause tmp folder is null");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "scan file exception, cause tmp folder is null");
            dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.h1
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadTask.lambda$startScanFileJob$63(searchCallback);
                }
            });
        }
    }

    private void startWsServerOpenTimerJob(Runnable runnable) {
        LogUtils.d(TAG, "download-file: start ws-server open timer-out job, delay: 5000");
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "start ws-server open timer-out job, delay: 5000");
        WebSocketOpenTimerJob webSocketOpenTimerJob = new WebSocketOpenTimerJob(new AnonymousClass9(runnable));
        this.mWsServerOpenTimerJob = webSocketOpenTimerJob;
        nextStepPost(webSocketOpenTimerJob, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopKeepAlive() {
        if (this.mHmcpRequest != null) {
            LogUtils.d(TAG, "download-file: request stop download keep alive");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE_CANCEL, PointCategory.REQUEST);
            this.mHmcpRequest.requestStopForceKeepAlive(this.mCid, new OnForceKeepAliveListener() { // from class: com.haima.hmcp.cloud.video.DownloadTask.3
                @Override // com.haima.hmcp.listeners.OnForceKeepAliveListener
                public void onKeepAlive(boolean z10, String str) {
                    CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE_CANCEL, "response: " + z10);
                    LogUtils.d(DownloadTask.TAG, "download-file: request stop download keep alive response: success=" + z10 + "; message=" + str);
                }
            });
        } else {
            LogUtils.d(TAG, "download-file: stop keep alive error: mHmcpRequest is null");
            CountlyUtil.recordErrorEvent("stop keep alive error: mHmcpRequest is null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toRequestKeepAlive, reason: merged with bridge method [inline-methods] */
    public void lambda$waitKeepAliveResult$55(InnerCloudFile innerCloudFile, KeepAliveRetryStrategy keepAliveRetryStrategy, KeepAliveWaitStrategy keepAliveWaitStrategy) {
        HmcpRequest hmcpRequest = this.mHmcpRequest;
        if (hmcpRequest == null || hmcpRequest.isStopPlay) {
            LogUtils.d(TAG, "download-file: request keep alive, mHmcpRequest is null or mHmcpRequest.isStopPlay is true");
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "mHmcpRequest is null or mHmcpRequest.isStopPlay is true");
            cancelKeepAliveTimerJob();
            releaseKeepAliveObserver();
            this.keepAliveResponseValidation = null;
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.j0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33911b.lambda$toRequestKeepAlive$56();
                }
            });
            return;
        }
        boolean zIsSameFile = isSameFile(this.mCurrentInnerCloudFile, innerCloudFile);
        if (this.mCurrentInnerCloudFile != null && !zIsSameFile) {
            String str = "before request keep alive, the file is check failed: " + innerCloudFile;
            LogUtils.d(TAG, "download-file: " + str);
            CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str);
            return;
        }
        String str2 = TAG;
        LogUtils.d(str2, "download-file: before request keep alive, check file is same");
        long downloadTime = innerCloudFile.cloudFile.getDownloadTime();
        String str3 = "time: " + downloadTime + ", strategy: " + keepAliveRetryStrategy + "; " + keepAliveWaitStrategy;
        LogUtils.d(str2, "download-file: request keep alive, " + str3);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_KEEP_ALIVE, str3);
        if (this.keepAliveResponseValidation != null) {
            this.keepAliveResponseValidation = null;
        }
        this.keepAliveResponseValidation = new KeepAliveResponseValidation();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.keepAliveResponseValidation.setRequestTime(jCurrentTimeMillis);
        this.keepAliveResponseValidation.setCloudFile(innerCloudFile.cloudFile);
        this.mHmcpRequest.requestStartForceKeepAlive(this.mCid, downloadTime, new AnonymousClass2(jCurrentTimeMillis, innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: waitKeepAliveResult, reason: merged with bridge method [inline-methods] */
    public void lambda$startKeepAlive$53(final InnerCloudFile innerCloudFile, final KeepAliveRetryStrategy keepAliveRetryStrategy, final KeepAliveWaitStrategy keepAliveWaitStrategy) {
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_ACCESS;
            if (iWebSocket.isConnect(webSocketType)) {
                if (!startKeepAliveTimerJob(innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy)) {
                    return;
                }
                releaseKeepAliveObserver();
                this.mWebSocketManager.addObserver(webSocketType, createKeepAliveObserver());
                nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.s0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33973b.lambda$waitKeepAliveResult$55(innerCloudFile, keepAliveRetryStrategy, keepAliveWaitStrategy);
                    }
                });
                return;
            }
        }
        LogUtils.d(TAG, "download-file: WebSocketManager is null or is not connect");
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.h0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33898b.lambda$waitKeepAliveResult$54(innerCloudFile);
            }
        });
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void cancelDownload(final CloudFile cloudFile, final CancelCallback cancelCallback) {
        if (this.mDownloadHandler == null) {
            if (cancelCallback != null) {
                cancelCallback.onCancelFail(cloudFile, 1001, "The download task is not ready");
            }
        } else if (cloudFile == null) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.v
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34001b.lambda$cancelDownload$4(cancelCallback);
                }
            });
        } else {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34020b.lambda$cancelDownload$5(cloudFile, cancelCallback);
                }
            });
        }
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public boolean checkHangUpData() {
        return this.mHangUpData != null;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public boolean continueTask() {
        LogUtils.d(TAG, "download-file: continue task");
        return checkContinueTask();
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void execute(List<CloudFile> list, DownloadMode downloadMode, DownloadLifeCycleCallback downloadLifeCycleCallback) {
        String str = TAG;
        LogUtils.d(str, "download-file: download task execute...");
        this.mCallbackToApp = downloadLifeCycleCallback;
        this.mDownloadMode = downloadMode;
        HmcpRequest hmcpRequest = this.mHmcpRequest;
        if (hmcpRequest == null) {
            LogUtils.d(str, "download-file: The download task fail, cause mHmcpRequest is null");
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.h2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33901b.lambda$execute$0();
                }
            });
            return;
        }
        if (hmcpRequest.isStopPlay) {
            LogUtils.d(str, "download-file: The download task fail, cause mHmcpRequest.isStopPlay is true");
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.i2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33908b.lambda$execute$1();
                }
            });
            return;
        }
        if (TextUtils.isEmpty(this.mCid)) {
            LogUtils.d(str, "download-file: The download task fail, cause cid is null");
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.j2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33913b.lambda$execute$2();
                }
            });
            return;
        }
        if (!TextUtils.isEmpty(this.url)) {
            lambda$internalContinueTask$46(list);
            return;
        }
        LogUtils.d(str, "download-file: The download task fail, download url is null");
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.l2
            @Override // java.lang.Runnable
            public final void run() {
                this.f33925b.lambda$execute$3();
            }
        });
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public DownloadMode getMode() {
        return this.mDownloadMode;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void getTransferData(final TransferDataCallback transferDataCallback) {
        LogUtils.d(TAG, "download-file: transfer data");
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.d1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33865b.lambda$getTransferData$12(transferDataCallback);
            }
        });
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void getWorkingFiles(CloudOperation cloudOperation, final WorkingFileCallback workingFileCallback) {
        if (this.mDownloadHandler != null) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.q0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33956b.lambda$getWorkingFiles$7(workingFileCallback);
                }
            });
            return;
        }
        LogUtils.d(TAG, "download-file: DownloadHandler is null");
        workingFileCallback.onWorkingFail(1001, "The download task is not ready");
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public boolean isRunning() {
        return this.mState == DownloadState.WORKING;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void keepAliveTimeUp() {
        if (this.mDownloadHandler == null) {
            LogUtils.d(TAG, "download-file:  The task is not ready");
            return;
        }
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob == null || !(downloadJob == null || downloadJob.isDownloading())) {
            LogUtils.d(TAG, "download-file:  No file is downloading");
            return;
        }
        final InnerCloudFile file = this.mDownloadJob.getFile();
        String str = "Cancel " + file.cloudFile.getName() + " download cause: Keep alive is time out";
        LogUtils.d(TAG, "download-file:  " + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str + "; " + file.cloudFile);
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f33920b.lambda$keepAliveTimeUp$10(file);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onDownload(final InnerCloudFile innerCloudFile) {
        startProgressChecker();
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.y0
            @Override // java.lang.Runnable
            public final void run() {
                this.f34030b.lambda$onDownload$67(innerCloudFile);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onDownloadFail(final InnerCloudFile innerCloudFile, final int i10, final String str) {
        LogUtils.d(TAG, "download-file:  download " + innerCloudFile.cloudFile.getName() + " fail: " + str);
        this.mCurrentInnerCloudFile = null;
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.m0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33928b.lambda$onDownloadFail$70(innerCloudFile, i10, str);
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.n0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33937b.lambda$onDownloadFail$71();
            }
        });
        nextStepPost(new d(this));
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.o0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f33942b.lambda$onDownloadFail$72(innerCloudFile);
            }
        });
        nextStepPost(new p(this));
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onDownloadFinish() {
        LogUtils.d(TAG, "download-file: download task finish, DownloadMode: " + this.mDownloadMode);
        final DownloadMode downloadMode = this.mDownloadMode;
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.g1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33891b.lambda$onDownloadFinish$74(downloadMode);
            }
        });
        releaseDownload();
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onDownloaded(final InnerCloudFile innerCloudFile) {
        nextStepPost(new d(this));
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f33871b.cancelProgressChecker();
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f33879b.cancelDownloadJob();
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f33886b.lambda$onDownloaded$68(innerCloudFile);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onMovedFail(final InnerCloudFile innerCloudFile, final int i10, String str) {
        LogUtils.e(TAG, "download-file: move temp file fail: " + str);
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, str);
        nextStepPost(new q(this));
        final String str2 = "I/O error";
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f33961b.lambda$onMovedFail$79(innerCloudFile, i10, str2);
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f33972b.lambda$onMovedFail$80();
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onMovedSuccess(final InnerCloudFile innerCloudFile) {
        LogUtils.d(TAG, "download-file: move temp file success");
        if (MediaUtil.isSupportVideo(innerCloudFile.getFileSuffix()) || MediaUtil.isSupportPicture(innerCloudFile.getFileSuffix())) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.b1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33847b.lambda$onMovedSuccess$75(innerCloudFile);
                }
            });
        }
        nextStepPost(new q(this));
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.c1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f33857b.lambda$onMovedSuccess$76(innerCloudFile);
            }
        });
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.e1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33873b.lambda$onMovedSuccess$77(innerCloudFile);
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.f1
            @Override // java.lang.Runnable
            public final void run() {
                this.f33881b.lambda$onMovedSuccess$78();
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onProgress(final InnerCloudFile innerCloudFile, final long j10, final long j11) {
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.v0
            @Override // java.lang.Runnable
            public final void run() {
                this.f34003b.lambda$onProgress$69(innerCloudFile, j10, j11);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public long onProgressCheck() {
        DownloadJob downloadJob = this.mDownloadJob;
        if (downloadJob == null || !downloadJob.isDownloading()) {
            return -1L;
        }
        long progress = this.mDownloadJob.getProgress();
        nextStepPost(this.mCheckDownloadProgressJob, this.mConfig.progressCheckInterval);
        return progress;
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onProgressFreeze() {
        LogUtils.d(TAG, "download-file: file download progress freeze");
        final InnerCloudFile file = this.mDownloadJob.getFile();
        this.mDownloadJob.cancel();
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f34028b.lambda$onProgressFreeze$82(file);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onQueryFail(final int i10, final String str) {
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.t2
            @Override // java.lang.Runnable
            public final void run() {
                this.f33985b.lambda$onQueryFail$85(i10, str);
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f33845b.lambda$onQueryFail$86();
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onQuerySuccess(final List<CloudFile> list) {
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f33980b.lambda$onQuerySuccess$83(list);
            }
        });
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f33988b.lambda$onQuerySuccess$84();
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onQueryTimeOut() {
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f34035b.lambda$onQueryTimeOut$87();
            }
        });
        cancelQueryTimerJob();
        releaseQueryObserver();
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onRetry(InnerCloudFile innerCloudFile, long j10) {
        if (this.mDownloadJob == null) {
            return;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_VIDEO_DOWNLOAD_STATUS, "download retry, file=" + innerCloudFile + ", delay=" + j10);
        cancelProgressChecker();
        cancelDownloadJob();
        startDownloadRetryJob(innerCloudFile, j10);
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onRunning(List<CloudFile> list) {
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.f33856b.lambda$onRunning$81();
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onStartKeepAlive(final boolean z10) {
        LogUtils.d(TAG, "download-file: start keep alive result: " + z10);
        releaseKeepAliveObserver();
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.k2
            @Override // java.lang.Runnable
            public final void run() {
                this.f33918b.lambda$onStartKeepAlive$88(z10);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onStopKeepAlive(boolean z10) {
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void pauseTask() {
        if (isRunning()) {
            LogUtils.d(TAG, "download-file: hang up task");
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.s2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33979b.internalHangUp();
                }
            });
        }
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void queryFiles(final QueryCallback queryCallback) {
        nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.i
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f33903b.lambda$queryFiles$9(queryCallback);
            }
        });
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void scanFile(String str, SearchCallback searchCallback) {
        if (this.mDownloadHandler == null) {
            LogUtils.d(TAG, "download-file:  Scan file fail cause: the task is not ready");
            if (searchCallback != null) {
                searchCallback.onSearchFail(1001, "Scan file fail cause: the task is not ready");
                return;
            }
            return;
        }
        if (this.mScanFileJob == null) {
            startScanFileJob(str, searchCallback);
            return;
        }
        LogUtils.d(TAG, "download-file:  Scan file task is running");
        if (searchCallback != null) {
            searchCallback.onSearchFail(1006, "Scan file task is running");
        }
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setCid(String str) {
        this.mCid = str;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setConfig(DownloadConfig downloadConfig) {
        this.mConfig = downloadConfig;
        LogUtils.d(TAG, "download-file: config: " + downloadConfig);
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setHmcpRequest(HmcpRequest hmcpRequest) {
        this.mHmcpRequest = hmcpRequest;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setUrl(String str) {
        this.url = str;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void setWebSocketManager(IWebSocket iWebSocket) {
        this.mWebSocketManager = iWebSocket;
    }

    @Override // com.haima.hmcp.cloud.video.IDownloadTask
    public void updateFiles(CloudOperation cloudOperation, final List<CloudFile> list, final UpdateCallback updateCallback) {
        if (updateCallback == null) {
            LogUtils.d(TAG, "download-file:  update files callback is null");
            return;
        }
        if (isRunning()) {
            nextStepPost(new Runnable() { // from class: com.haima.hmcp.cloud.video.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33853b.lambda$updateFiles$8(list, updateCallback);
                }
            });
            return;
        }
        LogUtils.d(TAG, "download-file: download task is not running");
        updateCallback.onUpdateFail(1001, "The download task is not ready");
    }

    private void nextStepPost(Runnable runnable, long j10) {
        DownloadHandler downloadHandler;
        if (runnable != null && (downloadHandler = this.mDownloadHandler) != null) {
            downloadHandler.postDelayed(runnable, j10);
        } else {
            handleExceptionStata("download handler is null when post runnable");
        }
    }

    private void nextStepPost(Runnable runnable, long j10, String str) {
        DownloadHandler downloadHandler;
        if (runnable != null && (downloadHandler = this.mDownloadHandler) != null) {
            downloadHandler.postAtTime(runnable, str, SystemClock.uptimeMillis() + j10);
        } else {
            handleExceptionStata("download handler is null when post runnable");
        }
    }

    @Override // com.haima.hmcp.listeners.InnerDownloadCallback
    public void onDownloadFail(final int i10, final String str) {
        LogUtils.d(TAG, "download-file:  download task fail: " + str);
        this.mCurrentInnerCloudFile = null;
        releaseDownload();
        dispatchMainThread(new Runnable() { // from class: com.haima.hmcp.cloud.video.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f34013b.lambda$onDownloadFail$73(i10, str);
            }
        });
    }
}
