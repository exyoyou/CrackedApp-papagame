package com.haima.hmcp.cloud;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.utils.FileUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.MediaUtil;
import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import okhttp3.MediaType;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadTask extends CountDownTimerWrapper<String> implements ITask {
    public static final String DOWNLOAD_FILE_NEW_NAME_PRE = "CP_";
    private static final int FILE_SEGMENT_COEFFICIENT = 4;
    private static final int FILE_SEGMENT_RECEIVE_TIMEOUT = 30000;
    private static final int FILE_SEGMENT_SIZE = 1024;
    private static final String KEY_ORDER_CODE = "code";
    private static final String KEY_ORDER_CODE_CANCEL = "cancel";
    private static final String KEY_ORDER_CODE_ERROR = "error";
    private static final String KEY_ORDER_CODE_START = "start";
    private static final String KEY_ORDER_FILE_BID = "bid";
    private static final String KEY_ORDER_FILE_CID = "cid";
    private static final String KEY_ORDER_FILE_CLOUD_PATH = "filePath";
    private static final String KEY_ORDER_FILE_MD5 = "md5sum";
    private static final String KEY_ORDER_FILE_NAME = "fileName";
    private static final String KEY_ORDER_FILE_SIZE = "fileSize";
    private static final String KEY_ORDER_FILE_TYPE = "mimeType";
    private static final String KEY_ORDER_TYPE = "type";
    private static final String KEY_ORDER_TYPE_DOWNLOAD = "download_image";
    private static final String KEY_ORDER_TYPE_UPLOAD = "upload_image";
    private static final int MSG_CREATE_SOCKET = 105;
    private static final int MSG_DOWNLOADING = 106;
    private static final int MSG_DOWNLOAD_ERROR = 104;
    private static final int MSG_DOWNLOAD_FILE = 103;
    private static final int MSG_FILE_RECEIVE_TIMEOUT = 110;
    private static final int MSG_ORDER_ACK = 109;
    private static final int MSG_SEND_CANCEL_ORDER = 108;
    private static final int MSG_SEND_START_ORDER = 102;
    private static final int MSG_STOP = 101;
    private static final int MSG_TASK_COMPLETE = 107;
    private static final int RECONNECT_WEB_SOCKET_INTERVAL = 2500;
    private static final int RECONNECT_WEB_SOCKET_MAX = 10;
    private static final int SEND_END_ORDER_MAX = 5;
    private static final int SEND_START_ORDER_MAX = 5;
    private static final String TAG = "DownloadTask";
    private static DownloadHandler mHandler;
    private ArrayList<byte[]> cache;
    private int cacheLength;
    private int cacheSize;
    private int fileSegmentSize;
    private HandlerThread handlerThread;
    private CloudFileConfig mConfig;
    private Context mContext;
    private InternalCloudFile mCurrentHandleFile;
    private HmFile mDownFile;
    private List<InternalCloudFile> mDownloadFiles;
    private IWorkListener mListener;
    private long mStartTime;
    private DownloadTaskStatus mStatus;
    private IWebSocket mWebSocket;
    private int uploadInterval;
    private OutputStream mOutputStream = null;
    private int sendStartOrderCount = 0;
    private int sendCancelOrderCount = 0;
    private int mReconnectSocketCount = 0;

    class DownloadHandler extends Handler {
        public DownloadHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            switch (message.what) {
                case 101:
                    Object obj = message.obj;
                    DownloadTask.this.stop(obj != null ? obj.toString() : "");
                    break;
                case 102:
                    DownloadTask.this.sendStartOrder();
                    break;
                case 104:
                    DownloadTask downloadTask = DownloadTask.this;
                    Object obj2 = message.obj;
                    downloadTask.error(obj2 != null ? obj2.toString() : "");
                    break;
                case 105:
                    DownloadTask.this.createPipe();
                    break;
                case 106:
                    DownloadTask.this.saveData(message.obj);
                    break;
                case 107:
                    DownloadTask.this.complete();
                    break;
                case 108:
                    DownloadTask.this.sendCancelOrder();
                    break;
                case 109:
                    DownloadTask downloadTask2 = DownloadTask.this;
                    Object obj3 = message.obj;
                    downloadTask2.internalOrderAckDispatcher(obj3 != null ? obj3.toString() : null);
                    break;
                case 110:
                    DownloadTask.this.stop("download file timeout");
                    break;
            }
        }
    }

    enum DownloadTaskStatus {
        IDLE,
        INIT,
        START_ORDER_SEND,
        START_ORDER_ACK,
        WEB_SOCKET_CREATE,
        DOWNLOADING,
        DOWNLOAD_CANCEL_SEND,
        DOWNLOAD_CANCEL_ACK,
        DOWNLOAD_FINISH
    }

    class HmFile {
        private File file;
        private String name;
        private String path;
        private String romMd5;
        private String tempFile = "cm_file.tmp";

        public HmFile(String str, String str2, String str3) {
            this.path = str;
            this.name = str2;
            this.romMd5 = str3;
            this.file = new File(str, this.tempFile);
        }

        public boolean delete() {
            File file = this.file;
            if (file == null) {
                return false;
            }
            return file.delete();
        }

        public boolean exists() {
            File file = this.file;
            if (file == null) {
                return false;
            }
            return file.exists();
        }

        public File getFile() {
            return this.file;
        }

        public String getName() {
            return this.name;
        }

        public String getPath() {
            return this.path;
        }

        public String getRomMd5() {
            return this.romMd5;
        }

        public void init() {
            File file = this.file;
            if (file == null) {
                return;
            }
            file.mkdirs();
            if (this.file.exists()) {
                this.file.delete();
            }
        }

        public void releaseFile() {
            this.file = null;
        }

        public boolean renameTo(File file) {
            File file2 = this.file;
            if (file2 == null) {
                return false;
            }
            return file2.renameTo(file);
        }

        public String toString() {
            return "HmFile{, file=" + this.file + ", path='" + this.path + "', name='" + this.name + "', romMd5='" + this.romMd5 + "', tempFile='" + this.tempFile + "'}";
        }
    }

    DownloadTask(Context context, IWebSocket iWebSocket, CloudFileConfig cloudFileConfig) {
        this.fileSegmentSize = 1024;
        this.uploadInterval = 100;
        this.cacheSize = 1;
        this.mContext = context;
        this.mWebSocket = iWebSocket;
        this.mConfig = cloudFileConfig;
        this.fileSegmentSize = getFileSegmentSize(cloudFileConfig.getFileSegmentCoefficient());
        this.uploadInterval = getUploadInterval(this.mConfig.getFileSegmentCoefficient());
        int fileCacheSize = this.cacheSize * this.mConfig.getFileCacheSize();
        this.cacheSize = fileCacheSize;
        this.cacheLength = getCacheLength(this.fileSegmentSize, fileCacheSize);
        LogUtils.d(TAG, "cloud-file: fileSegmentSize:" + this.fileSegmentSize + "; uploadInterval:" + this.uploadInterval);
        this.cache = new ArrayList<>();
        HandlerThread handlerThread = new HandlerThread("downloading");
        this.handlerThread = handlerThread;
        handlerThread.start();
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            downloadHandler.getLooper().quit();
            mHandler = null;
        }
        mHandler = new DownloadHandler(this.handlerThread.getLooper());
    }

    static /* synthetic */ int access$608(DownloadTask downloadTask) {
        int i10 = downloadTask.mReconnectSocketCount;
        downloadTask.mReconnectSocketCount = i10 + 1;
        return i10;
    }

    private void ackDownloadFinish() throws Throwable {
        if (this.mCurrentHandleFile == null) {
            error("mCurrentHandleFile = null");
            return;
        }
        File fileRenameDownloadTmpFile = null;
        try {
            OutputStream outputStream = this.mOutputStream;
            if (outputStream != null) {
                outputStream.close();
                this.mOutputStream = null;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            sendErrorMessage("Response: download finish but OutputStream close failed :" + this.mCurrentHandleFile.getName());
        }
        if (!checkDownloadFile()) {
            error("check file md5 not pass");
            return;
        }
        try {
            fileRenameDownloadTmpFile = renameDownloadTmpFile(this.mDownFile, CloudFileManager.getInstance().getContext());
        } catch (Exception e11) {
            LogUtils.e(TAG, "cloud-file: update photo fail");
            e11.printStackTrace();
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.mStartTime;
        LogUtils.d(TAG, "cloud-file: file download finish, cost time: " + jCurrentTimeMillis);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("file_name", this.mCurrentHandleFile.getName());
            jSONObject.put("file_md5", this.mCurrentHandleFile.md5);
            jSONObject.put("file_size", this.mCurrentHandleFile.fileSize);
            jSONObject.put("download_cost", jCurrentTimeMillis);
        } catch (JSONException e12) {
            e12.printStackTrace();
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, jSONObject.toString());
        if (hasNextFile()) {
            LogUtils.d(TAG, "cloud-file: downloaded file success: " + this.mCurrentHandleFile.toString());
            this.mDownloadFiles.remove(0);
        }
        setStatus(DownloadTaskStatus.DOWNLOAD_FINISH);
        if (this.mListener != null) {
            InternalCloudFile internalCloudFile = this.mCurrentHandleFile;
            if (!internalCloudFile.isSaveToGallery || fileRenameDownloadTmpFile == null) {
                MediaUtil.scanMedia(this.mContext, fileRenameDownloadTmpFile.getAbsolutePath());
            } else {
                Uri uriSaveToGallery = saveToGallery(internalCloudFile, fileRenameDownloadTmpFile.getAbsolutePath());
                if (uriSaveToGallery != null) {
                    String imagePath = getImagePath(uriSaveToGallery);
                    if (!TextUtils.isEmpty(imagePath)) {
                        MediaUtil.scanMedia(this.mContext, imagePath);
                        this.mCurrentHandleFile.setPath(imagePath);
                        LogUtils.d(TAG, "cloud-file: save gallery path: " + imagePath);
                    }
                    fileRenameDownloadTmpFile.delete();
                }
            }
            this.mListener.onSuccess(this.mCurrentHandleFile.copy());
        }
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            downloadHandler.sendEmptyMessage(102);
        } else {
            error("mHandler is null, while ack Download file finish and start next");
        }
    }

    private void ackStartOrder() {
        this.mStartTime = System.currentTimeMillis();
        setStatus(DownloadTaskStatus.START_ORDER_ACK);
        IWebSocket iWebSocket = this.mWebSocket;
        if (iWebSocket == null) {
            sendStopMessage("web-socket is null, to download task is stop");
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "web-socket is null, to download task is stop");
            return;
        }
        boolean zIsConnect = iWebSocket.isConnect(WebSocketManager.WebSocketType.TYPE_DOWNLOAD);
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler == null) {
            error("mHandler is null, while ack start order");
        } else if (zIsConnect) {
            downloadHandler.sendEmptyMessage(103);
        } else {
            downloadHandler.sendEmptyMessage(105);
        }
    }

    private boolean allowResendEndOrder() {
        int i10 = this.sendCancelOrderCount;
        boolean z10 = i10 < 5;
        this.sendCancelOrderCount = i10 + 1;
        return z10;
    }

    private boolean allowResendStartOrder() {
        int i10 = this.sendStartOrderCount;
        boolean z10 = i10 < 5;
        this.sendStartOrderCount = i10 + 1;
        return z10;
    }

    private boolean checkDownloadFile() throws Throwable {
        InternalCloudFile internalCloudFile = this.mCurrentHandleFile;
        if (internalCloudFile == null || TextUtils.isEmpty(internalCloudFile.md5)) {
            LogUtils.e(TAG, "cloud-file: file or md5 is null");
            return false;
        }
        String fileMd5 = FileUtil.getFileMd5(this.mDownFile.getFile());
        LogUtils.i(TAG, "cloud-file: remote md5:" + this.mCurrentHandleFile.md5 + "download file md5:" + fileMd5);
        return TextUtils.equals(this.mCurrentHandleFile.md5, fileMd5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void complete() {
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "download is complete");
        stopTask("download is complete", true, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createPipe() {
        StringBuilder sb2 = new StringBuilder();
        CloudFileConfig cloudFileConfig = this.mConfig;
        sb2.append(cloudFileConfig.url);
        sb2.append("&act=1&proto=5");
        cloudFileConfig.url = sb2.toString();
        LogUtils.i(BaseCloudFileManager.FILTER_TAG, "connect 2 download url:" + this.mConfig.url);
        this.mWebSocket.connect2Download(this.mConfig.url, new WebSocketManager.SimpleTransmissionConnectionHandler() { // from class: com.haima.hmcp.cloud.DownloadTask.2
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z10) {
                LogUtils.d(DownloadTask.TAG, BaseCloudFileManager.FILTER_TAG + "download web-socket is connect");
                if (DownloadTask.this.mStatus == DownloadTaskStatus.IDLE) {
                    String str = DownloadTask.TAG;
                    LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + ("download web-socket is connect, but task status is IDLE not run"));
                    return;
                }
                if (DownloadTask.mHandler == null) {
                    CountlyUtil.recordErrorEvent("mHandler is null when download web-socket is connect");
                    return;
                }
                if (DownloadTask.this.mStatus == DownloadTaskStatus.START_ORDER_SEND) {
                    DownloadTask.mHandler.sendEmptyMessage(102);
                    return;
                }
                if (DownloadTask.this.mStatus == DownloadTaskStatus.START_ORDER_ACK) {
                    DownloadTask.mHandler.sendEmptyMessage(103);
                    return;
                }
                DownloadTask.this.sendErrorMessage("can not resolve Download WS connect status:" + DownloadTask.this.mStatus);
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i10, String str, boolean z10) {
                boolean zOnHangUp = false;
                if (i10 == 6) {
                    String str2 = DownloadTask.TAG;
                    LogUtils.d(str2, BaseCloudFileManager.FILTER_TAG + ("web-socket connect fail by server error: " + str));
                    zOnHangUp = DownloadTask.this.mListener != null ? DownloadTask.this.mListener.onHangUp() : false;
                    String str3 = DownloadTask.TAG;
                    LogUtils.d(str3, BaseCloudFileManager.FILTER_TAG + ("is allow web-socket reconnect: " + zOnHangUp));
                } else {
                    if (DownloadTask.this.mStatus == DownloadTaskStatus.DOWNLOADING) {
                        DownloadTask.this.sendErrorMessage("download ws disconnect:" + str);
                        return;
                    }
                    if (DownloadTask.this.mReconnectSocketCount >= 10 || DownloadTask.mHandler == null) {
                        String str4 = "download task: reconnect download ws over max count:" + DownloadTask.this.mReconnectSocketCount;
                        DownloadTask.this.sendStopMessage(str4);
                        LogUtils.e(DownloadTask.TAG, BaseCloudFileManager.FILTER_TAG + str4);
                    } else {
                        DownloadTask.access$608(DownloadTask.this);
                        if (DownloadTask.mHandler != null) {
                            Message messageObtainMessage = DownloadTask.mHandler.obtainMessage();
                            messageObtainMessage.what = 105;
                            DownloadTask.mHandler.sendMessageDelayed(messageObtainMessage, 2500L);
                        } else {
                            DownloadTask.this.error("mHandler is null, while reconnect download websocket");
                        }
                        LogUtils.d(DownloadTask.TAG, "cloud-file: WebSocket is not active when send start download order, after 2.5s reconnect web-socket, reconnect count: " + DownloadTask.this.mReconnectSocketCount);
                        CountlyUtil.recordErrorEvent("WebSocket is disconnect:" + str);
                    }
                }
                if (zOnHangUp) {
                    return;
                }
                String str5 = "download web-socket is disconnect: " + str;
                LogUtils.d(DownloadTask.TAG, BaseCloudFileManager.FILTER_TAG + str5);
                DownloadTask.this.sendStopMessage("download socket disconnect");
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleTransmissionConnectionHandler
            public void onMessage(byte[] bArr, boolean z10) {
                if (DownloadTask.mHandler != null) {
                    DownloadTask.mHandler.removeMessages(110);
                    DownloadTask.mHandler.sendEmptyMessageDelayed(110, 30000L);
                }
                if (z10) {
                    DownloadTask.this.sendDownloadBytesMessage(bArr);
                    return;
                }
                LogUtils.e(DownloadTask.TAG, "cloud-file: invalid binary message: " + new String(bArr));
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleTransmissionConnectionHandler
            public void onMessage(String str) {
                LogUtils.i(DownloadTask.TAG, "cloud-file: download ws onMessage:" + str);
                DownloadTask.this.orderAckDispatcher(str);
            }
        });
    }

    private void delIncompleteFile() {
        if (this.mDownFile == null) {
            LogUtils.e(BaseCloudFileManager.FILTER_TAG, "delete incomplete download file is null");
            return;
        }
        DownloadTaskStatus downloadTaskStatus = this.mStatus;
        if (downloadTaskStatus == DownloadTaskStatus.INIT || downloadTaskStatus == DownloadTaskStatus.DOWNLOAD_FINISH) {
            LogUtils.e(BaseCloudFileManager.FILTER_TAG, "no need to delete incomplete download file: " + this.mDownFile.getName());
            return;
        }
        LogUtils.e(BaseCloudFileManager.FILTER_TAG, "delete:" + this.mDownFile.getName());
        this.mDownFile.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void error(String str) {
        String str2 = TAG;
        LogUtils.e(str2, BaseCloudFileManager.FILTER_TAG + ("download is error: " + str));
        delIncompleteFile();
        stopTask(str, false, false, true);
    }

    private int getCacheLength(int i10, int i11) {
        return (i11 * 1024) / i10;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0038  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    private String getCancelOrder(InternalCloudFile internalCloudFile) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                try {
                    jSONObject.put("type", "download_image");
                    jSONObject.put("code", KEY_ORDER_CODE_CANCEL);
                    jSONObject.put(KEY_ORDER_FILE_NAME, internalCloudFile.getName());
                    return jSONObject.toString();
                } catch (JSONException e10) {
                    e = e10;
                    e.printStackTrace();
                    if (jSONObject == null) {
                        return null;
                    }
                    return jSONObject.toString();
                }
            } catch (Throwable unused) {
                if (jSONObject == null) {
                    return null;
                }
                return jSONObject.toString();
            }
        } catch (JSONException e11) {
            e = e11;
            jSONObject = null;
        } catch (Throwable unused2) {
            jSONObject = null;
            if (jSONObject == null) {
                return null;
            }
            return jSONObject.toString();
        }
    }

    private ContentResolver getContentResolver() {
        return this.mContext.getContentResolver();
    }

    private int getFileSegmentSize(int i10) {
        return i10 <= 4 ? this.fileSegmentSize * i10 : this.fileSegmentSize * 4;
    }

    private String getImagePath(Uri uri) {
        Cursor cursorQuery = getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        if (cursorQuery == null) {
            return null;
        }
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(columnIndexOrThrow);
        cursorQuery.close();
        return string;
    }

    private AckOrderBean getOrderBean(String str) {
        AckOrderBean ackOrderBean = null;
        try {
            AckOrderBean ackOrderBean2 = new AckOrderBean();
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("type")) {
                    ackOrderBean2.type = jSONObject.optString("type");
                }
                if (jSONObject.has("code")) {
                    ackOrderBean2.code = jSONObject.optString("code");
                }
                if (jSONObject.has("message")) {
                    ackOrderBean2.message = jSONObject.optString("message");
                }
                if (jSONObject.has(KEY_ORDER_FILE_SIZE)) {
                    ackOrderBean2.fileSize = jSONObject.optInt(KEY_ORDER_FILE_SIZE);
                }
                if (jSONObject.has(KEY_ORDER_FILE_TYPE)) {
                    ackOrderBean2.mimeType = jSONObject.optString(KEY_ORDER_FILE_TYPE);
                }
                if (!jSONObject.has(KEY_ORDER_FILE_MD5)) {
                    return ackOrderBean2;
                }
                ackOrderBean2.md5sum = jSONObject.optString(KEY_ORDER_FILE_MD5);
                return ackOrderBean2;
            } catch (JSONException e10) {
                e = e10;
                ackOrderBean = ackOrderBean2;
                e.printStackTrace();
                return ackOrderBean;
            }
        } catch (JSONException e11) {
            e = e11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    /* JADX WARN: Code duplicated, block: B:30:? A[RETURN, SYNTHETIC] */
    private String getStartOrder(InternalCloudFile internalCloudFile) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                try {
                    jSONObject.put("type", "download_image");
                    jSONObject.put("code", "start");
                    jSONObject.put(KEY_ORDER_FILE_NAME, internalCloudFile.getName());
                    jSONObject.put("bid", this.mConfig.bid);
                    jSONObject.put("cid", this.mConfig.cid);
                    if (!TextUtils.isEmpty(internalCloudFile.getCloudPath())) {
                        jSONObject.put(KEY_ORDER_FILE_CLOUD_PATH, internalCloudFile.getCloudPath());
                    }
                    return jSONObject.toString();
                } catch (JSONException e10) {
                    e = e10;
                    e.printStackTrace();
                    if (jSONObject == null) {
                        return null;
                    }
                    return jSONObject.toString();
                }
            } catch (Throwable unused) {
                if (jSONObject == null) {
                    return null;
                }
                return jSONObject.toString();
            }
        } catch (JSONException e11) {
            e = e11;
            jSONObject = null;
        } catch (Throwable unused2) {
            jSONObject = null;
            if (jSONObject == null) {
                return null;
            }
            return jSONObject.toString();
        }
    }

    private int getUploadInterval(int i10) {
        if (i10 <= 4) {
            return 100;
        }
        if (i10 <= 10) {
            return 50;
        }
        if (i10 <= 15) {
            return 20;
        }
        return i10 <= 20 ? 10 : 0;
    }

    private void handleTempFile(final HmFile hmFile) {
        if (hmFile == null || hmFile.getFile() == null || TextUtils.isEmpty(hmFile.getName())) {
            return;
        }
        if (hmFile.exists()) {
            new Thread() { // from class: com.haima.hmcp.cloud.DownloadTask.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws Throwable {
                    if (TextUtils.isEmpty(hmFile.getRomMd5())) {
                        boolean zDelete = hmFile.delete();
                        LogUtils.d(DownloadTask.TAG, "cloud-file: dele temp file is " + zDelete);
                    } else {
                        String fileMd5 = FileUtil.getFileMd5(hmFile.getFile());
                        LogUtils.i(DownloadTask.TAG, "cloud-file: remote md5:" + hmFile.getRomMd5() + "download file md5:" + fileMd5);
                        if (TextUtils.equals(hmFile.getRomMd5(), fileMd5)) {
                            LogUtils.d(DownloadTask.TAG, "cloud-file: download file is complete when stop task");
                        } else {
                            boolean zDelete2 = hmFile.delete();
                            LogUtils.d(DownloadTask.TAG, "cloud-file: dele temp file is " + zDelete2);
                        }
                    }
                    hmFile.releaseFile();
                }
            }.start();
        } else {
            LogUtils.d(TAG, "cloud-file: temp file is not exists");
        }
    }

    private boolean hasNextFile() {
        List<InternalCloudFile> list = this.mDownloadFiles;
        return list != null && list.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalOrderAckDispatcher(String str) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            sendStopMessage("Download taks is stop by internal error");
            String str2 = "order ack is null when mStatus=" + this.mStatus;
            CountlyUtil.recordErrorEvent(str2);
            LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + str2);
            return;
        }
        if (!str.contains("download_image") && !str.contains("ignore")) {
            LogUtils.e(TAG, "cloud-file: not download message :" + str);
            return;
        }
        cancelTimeCountDown();
        String str3 = TAG;
        LogUtils.d(str3, "cloud-file: receiver order ack: " + str);
        AckOrderBean orderBean = getOrderBean(str);
        if (orderBean == null) {
            String str4 = "json parse error: " + str;
            LogUtils.e(str3, BaseCloudFileManager.FILTER_TAG + str4);
            sendStopMessage(str4);
            return;
        }
        if (TextUtils.equals(orderBean.type, "ignore")) {
            sendStopMessage(orderBean.message);
        }
        if (orderBean.isDownloadError()) {
            StringBuffer stringBuffer = new StringBuffer();
            CloudFileConfig cloudFileConfig = this.mConfig;
            if (cloudFileConfig != null && !TextUtils.isEmpty(cloudFileConfig.cid)) {
                stringBuffer.append(this.mConfig.cid);
                stringBuffer.append("-");
            }
            stringBuffer.append(orderBean.code);
            stringBuffer.append("[");
            stringBuffer.append(orderBean.message);
            stringBuffer.append("]");
            String string = stringBuffer.toString();
            LogUtils.e(str3, "cloud-file: download message is error:" + string);
            sendStopMessage(string);
            return;
        }
        if (this.mStatus == DownloadTaskStatus.START_ORDER_SEND) {
            if (!orderBean.isDownloadReady()) {
                sendStopMessage("Response: code error:" + str);
                return;
            }
            LogUtils.i(str3, "cloud-file: Response: download file is ready:" + str);
            if (TextUtils.isEmpty(orderBean.md5sum)) {
                sendStopMessage("Response: md5 error:" + str);
                return;
            }
            this.mCurrentHandleFile.md5 = orderBean.md5sum;
            if (isDiskEnough(orderBean.fileSize)) {
                ackStartOrder();
                return;
            }
            sendStopMessage("There's not enough disk space available to download target file: " + str);
            return;
        }
        if (orderBean.isDownloadFinish()) {
            ackDownloadFinish();
            return;
        }
        if (orderBean.isDownloadCancel()) {
            setStatus(DownloadTaskStatus.DOWNLOAD_CANCEL_ACK);
            delIncompleteFile();
            sendStopMessage("Response: cancel download task success, " + str);
            return;
        }
        String str5 = "internal error, mStatus: " + this.mStatus + ", payload: " + str;
        LogUtils.d(str3, BaseCloudFileManager.FILTER_TAG + str5);
        sendStopMessage("internal error:" + str5);
    }

    private boolean isDiskEnough(int i10) {
        if (i10 > 0) {
            this.mCurrentHandleFile.fileSize = i10;
        }
        if (i10 < 0) {
            return false;
        }
        try {
            String externalStorageState = Environment.getExternalStorageState();
            File externalFilesDir = CloudFileManager.getInstance().getContext().getExternalFilesDir(null);
            if (externalFilesDir == null) {
                LogUtils.e(TAG, "getExternalFilesDir return null");
                CountlyUtil.recordErrorEvent("getExternalFilesDir return null");
                return false;
            }
            StatFs statFs = new StatFs(externalFilesDir.getPath());
            if ("mounted".equals(externalStorageState)) {
                return (((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())) - ((long) i10) > 52428800;
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private boolean isWebSocketActive(IWebSocket iWebSocket, WebSocketManager.WebSocketType webSocketType) {
        return iWebSocket != null && iWebSocket.isConnect(webSocketType);
    }

    private boolean prepareDownloadBinary(InternalCloudFile internalCloudFile) {
        if (internalCloudFile == null || TextUtils.isEmpty(internalCloudFile.getName())) {
            error("download file is null");
            return false;
        }
        String str = TAG;
        LogUtils.e(str, "cloud-file: start downloading :path:" + internalCloudFile.getPath() + "name:" + internalCloudFile.getName());
        try {
            this.mDownFile = null;
            if (!TextUtils.isEmpty(internalCloudFile.getPath())) {
                this.mDownFile = new HmFile(internalCloudFile.getPath(), internalCloudFile.getName(), internalCloudFile.md5);
            } else {
                if (TextUtils.isEmpty(FileUtil.S_DEFAULT_STORAGE_PATH)) {
                    error("default download path error");
                    return false;
                }
                this.mDownFile = new HmFile(FileUtil.S_DEFAULT_STORAGE_PATH, internalCloudFile.getName(), internalCloudFile.md5);
            }
            this.mDownFile.init();
            if (this.mDownFile.getFile() == null) {
                return false;
            }
            LogUtils.e(str, "cloud-file: start download filePath = " + this.mDownFile.getFile().toString());
            this.mOutputStream = new FileOutputStream(this.mDownFile.getFile());
            return true;
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            error(e10.getMessage());
            return false;
        }
    }

    private File renameDownloadTmpFile(HmFile hmFile, Context context) {
        String str = null;
        if (hmFile == null || hmFile.getFile() == null || context == null) {
            LogUtils.e(TAG, "cloud-file: updatePhotoMedia error file or context null");
            return null;
        }
        File file = new File(hmFile.getFile().getParent(), DOWNLOAD_FILE_NEW_NAME_PRE + hmFile.getName());
        hmFile.renameTo(file);
        LogUtils.i(TAG, "cloud-file: rename from:" + hmFile.file.toString() + ", to:" + file.toString());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "donwload");
            jSONObject.put("action", "save picture");
            jSONObject.put("file_name", file.getPath());
            jSONObject.put("file_size", file.length());
            jSONObject.put("rename_success", file.exists());
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, jSONObject.toString());
        } catch (JSONException e10) {
            str = "crash when donwnload file rename: " + Log.getStackTraceString(e10);
        } catch (Exception e11) {
            str = "crash when donwnload file rename: " + Log.getStackTraceString(e11);
        }
        if (!TextUtils.isEmpty(str)) {
            CountlyUtil.recordErrorEvent(str);
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveData(Object obj) {
        DownloadTaskStatus downloadTaskStatus = this.mStatus;
        DownloadTaskStatus downloadTaskStatus2 = DownloadTaskStatus.START_ORDER_ACK;
        if (downloadTaskStatus != downloadTaskStatus2 && downloadTaskStatus != DownloadTaskStatus.DOWNLOADING) {
            byte[] bArr = obj instanceof byte[] ? (byte[]) obj : new byte[0];
            LogUtils.e(TAG, "cloud-file: receive file segment when status: " + this.mStatus + "; byte length: " + bArr.length);
            return;
        }
        if (downloadTaskStatus == downloadTaskStatus2) {
            setStatus(DownloadTaskStatus.DOWNLOADING);
        }
        try {
            byte[] bArr2 = (byte[]) obj;
            if (bArr2 == null) {
                sendErrorMessage("download binary data is null");
                return;
            }
            int length = bArr2.length;
            LogUtils.d(TAG, "cloud-file: downloading file data size: " + length);
            this.mOutputStream.write(bArr2, 0, length);
            this.mOutputStream.flush();
        } catch (Exception e10) {
            LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + e10.getMessage());
            sendErrorMessage(e10.getMessage());
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:? A[SYNTHETIC] */
    private Uri saveToGallery(InternalCloudFile internalCloudFile, String str) throws Throwable {
        String str2;
        String str3;
        OutputStream outputStream;
        String name = internalCloudFile.cloudFile.getName();
        String fileSuffix = internalCloudFile.getFileSuffix();
        MediaType mediaType = MediaType.parse("image/" + fileSuffix);
        if (Build.VERSION.SDK_INT >= 29) {
            str2 = Environment.DIRECTORY_PICTURES;
            str3 = "relative_path";
        } else {
            str2 = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).getAbsolutePath() + File.separator + name + o0.f49827a + fileSuffix;
            str3 = "_data";
        }
        ContentResolver contentResolver = getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", name);
        contentValues.put("mime_type", mediaType.getMediaType());
        contentValues.put(str3, str2);
        Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        FileInputStream fileInputStream = null;
        outputStreamOpenOutputStream = null;
        OutputStream outputStreamOpenOutputStream = null;
        fileInputStream = null;
        try {
            if (uriInsert == null) {
                return null;
            }
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[512];
                    outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                    while (true) {
                        int i10 = fileInputStream2.read(bArr);
                        if (i10 == -1) {
                            break;
                        }
                        outputStreamOpenOutputStream.write(bArr, 0, i10);
                    }
                    outputStreamOpenOutputStream.flush();
                    try {
                        fileInputStream2.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    outputStreamOpenOutputStream.close();
                } catch (IOException e11) {
                    e = e11;
                    outputStream = outputStreamOpenOutputStream;
                    fileInputStream = fileInputStream2;
                    try {
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        return uriInsert;
                    } catch (Throwable th) {
                        th = th;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        if (outputStream != null) {
                            throw th;
                        }
                        try {
                            outputStream.close();
                            throw th;
                        } catch (IOException e14) {
                            e14.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = outputStreamOpenOutputStream;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (outputStream != null) {
                        throw th;
                    }
                    outputStream.close();
                    throw th;
                }
            } catch (IOException e15) {
                e = e15;
                outputStream = null;
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
            }
        } catch (IOException e16) {
            e16.printStackTrace();
        }
        return uriInsert;
    }

    private void sendCancelMessage(String str) {
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            Message messageObtainMessage = downloadHandler.obtainMessage();
            messageObtainMessage.what = 108;
            messageObtainMessage.obj = str;
            mHandler.sendMessage(messageObtainMessage);
            return;
        }
        error("mHandler is null, while send cancel message:" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCancelOrder() {
        setStatus(DownloadTaskStatus.DOWNLOAD_CANCEL_SEND);
        String cancelOrder = getCancelOrder(this.mCurrentHandleFile);
        LogUtils.d(TAG, "cloud-file: sendFinishOrder:" + cancelOrder);
        if (TextUtils.isEmpty(cancelOrder)) {
            sendErrorMessage("create cancel order error");
        } else if (sendOrder(cancelOrder)) {
            startTimeCountDown(this.mConfig.getAckTimeout(), cancelOrder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendDownloadBytesMessage(byte[] bArr) {
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler == null) {
            error("mHandler is null, while downloading bytes");
            return;
        }
        Message messageObtainMessage = downloadHandler.obtainMessage();
        messageObtainMessage.what = 106;
        messageObtainMessage.obj = bArr;
        mHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendErrorMessage(String str) {
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            Message messageObtainMessage = downloadHandler.obtainMessage();
            messageObtainMessage.what = 104;
            messageObtainMessage.obj = str;
            mHandler.sendMessage(messageObtainMessage);
            return;
        }
        error("mHandler is null, while send error message:" + str);
    }

    private boolean sendOrder(String str) {
        String str2 = TAG;
        LogUtils.i(str2, "cloud-file: sendOrder: " + str);
        IWebSocket iWebSocket = this.mWebSocket;
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_DOWNLOAD;
        if (isWebSocketActive(iWebSocket, webSocketType)) {
            this.mWebSocket.sendTextMessage(webSocketType, str);
            return true;
        }
        LogUtils.d(str2, "cloud-file: download task: download web-socket is not active: create socket");
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            downloadHandler.sendEmptyMessage(105);
            return false;
        }
        error("mHandler is null, while send order:" + str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStartOrder() {
        String str = TAG;
        LogUtils.d(str, "cloud-file: sendStartOrder");
        setStatus(DownloadTaskStatus.START_ORDER_SEND);
        if (!hasNextFile()) {
            DownloadHandler downloadHandler = mHandler;
            if (downloadHandler != null) {
                downloadHandler.sendEmptyMessage(107);
                return;
            } else {
                error("mHandler is null, while task complete");
                return;
            }
        }
        InternalCloudFile internalCloudFile = this.mDownloadFiles.get(0);
        if (internalCloudFile == null || !internalCloudFile.isAvailable(CloudOperation.DOWNLOAD)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("download file is null or param is not available, file = ");
            sb2.append(internalCloudFile);
            String string = sb2.toString() == null ? "null" : internalCloudFile.toString();
            LogUtils.e(str, BaseCloudFileManager.FILTER_TAG + string);
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, string);
            this.mDownloadFiles.remove(0);
            DownloadHandler downloadHandler2 = mHandler;
            if (downloadHandler2 != null) {
                downloadHandler2.sendEmptyMessage(102);
                return;
            }
            error("mHandler is null, while send start order:" + string);
            return;
        }
        this.mCurrentHandleFile = internalCloudFile;
        if (!isWebSocketActive(this.mWebSocket, WebSocketManager.WebSocketType.TYPE_DOWNLOAD) || prepareDownloadBinary(this.mCurrentHandleFile)) {
            String startOrder = getStartOrder(internalCloudFile);
            CountlyUtil.recordEvent(Constants.COUNTLY_DOWNLOAD_STATUS, "start order:" + startOrder);
            if (!TextUtils.isEmpty(startOrder)) {
                if (sendOrder(startOrder)) {
                    startTimeCountDown(this.mConfig.getAckTimeout(), startOrder);
                    return;
                } else {
                    LogUtils.e(str, "cloud-file: sendStartOrder: WebSocket is not active");
                    return;
                }
            }
            sendErrorMessage("create start order error");
            DownloadHandler downloadHandler3 = mHandler;
            if (downloadHandler3 != null) {
                downloadHandler3.sendEmptyMessage(102);
                return;
            }
            error("mHandler is null, while send start order:create start order error");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStopMessage(String str) {
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            Message messageObtainMessage = downloadHandler.obtainMessage();
            messageObtainMessage.what = 101;
            messageObtainMessage.obj = str;
            mHandler.sendMessage(messageObtainMessage);
            return;
        }
        error("mHandler is null, while send stop message:" + str);
    }

    private void setStatus(DownloadTaskStatus downloadTaskStatus) {
        this.mStatus = downloadTaskStatus;
    }

    private void stopTask(String str, boolean z10, boolean z11, boolean z12) {
        LogUtils.d(TAG, "cloud-file: download task is stop");
        cancelTimeCountDown();
        IWebSocket iWebSocket = this.mWebSocket;
        if (iWebSocket != null) {
            iWebSocket.disconnect2Download();
        }
        List<InternalCloudFile> list = this.mDownloadFiles;
        if (list != null) {
            list.clear();
            this.mDownloadFiles = null;
        }
        try {
            OutputStream outputStream = this.mOutputStream;
            if (outputStream != null) {
                outputStream.close();
                this.mOutputStream = null;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            downloadHandler.removeCallbacksAndMessages(null);
            mHandler.getLooper().quit();
            mHandler = null;
        }
        this.mWebSocket = null;
        if (this.mStatus == DownloadTaskStatus.DOWNLOADING) {
            handleTempFile(this.mDownFile);
        } else {
            HmFile hmFile = this.mDownFile;
            if (hmFile != null) {
                hmFile.releaseFile();
            }
            this.mDownFile = null;
        }
        setStatus(DownloadTaskStatus.IDLE);
        IWorkListener iWorkListener = this.mListener;
        if (iWorkListener != null) {
            if (z10) {
                iWorkListener.onFinish(null);
            }
            if (z11) {
                this.mListener.onStop(0, str, this.mDownloadFiles);
            }
            if (z12) {
                InternalCloudFile internalCloudFile = this.mCurrentHandleFile;
                if (internalCloudFile != null) {
                    this.mListener.onError(internalCloudFile.copy(), str);
                } else {
                    this.mListener.onError(null, str);
                }
            }
        }
        this.mListener = null;
    }

    public void cancel() {
        LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + "cancel called");
        sendCancelMessage("cancel called");
    }

    @Override // com.haima.hmcp.cloud.ITask
    public int getStatus() {
        LogUtils.d(TAG, "cloud-file: download task status: " + this.mStatus);
        return 0;
    }

    @Override // com.haima.hmcp.cloud.ITask
    public boolean isRunning() {
        return this.mStatus != DownloadTaskStatus.IDLE;
    }

    void orderAckDispatcher(String str) {
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            Message messageObtainMessage = downloadHandler.obtainMessage();
            messageObtainMessage.what = 109;
            messageObtainMessage.obj = str;
            mHandler.sendMessage(messageObtainMessage);
            return;
        }
        error("mHandler is null, while ordr ack:" + str);
    }

    @Override // com.haima.hmcp.cloud.ITask
    public void start(List<InternalCloudFile> list, IWorkListener iWorkListener) {
        this.mListener = iWorkListener;
        if (list == null || list.size() == 0) {
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "file list is null or size = 0");
            sendStopMessage("file list is null or size = 0");
            return;
        }
        setStatus(DownloadTaskStatus.INIT);
        List<InternalCloudFile> list2 = this.mDownloadFiles;
        if (list2 == null) {
            this.mDownloadFiles = new ArrayList();
        } else {
            list2.clear();
        }
        this.mDownloadFiles.addAll(list);
        DownloadHandler downloadHandler = mHandler;
        if (downloadHandler != null) {
            downloadHandler.sendEmptyMessage(102);
        } else {
            error("mHandler is null, while send start order");
        }
    }

    @Override // com.haima.hmcp.cloud.ITask
    public void stop() {
        LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + "stop called");
        sendStopMessage("stop called");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.haima.hmcp.cloud.CountDownTimerWrapper
    public void onTimeOut(String str) {
        String str2;
        DownloadTaskStatus downloadTaskStatus = this.mStatus;
        DownloadTaskStatus downloadTaskStatus2 = DownloadTaskStatus.START_ORDER_SEND;
        if (downloadTaskStatus != downloadTaskStatus2 && downloadTaskStatus != DownloadTaskStatus.DOWNLOAD_CANCEL_SEND) {
            CountlyUtil.recordErrorEvent("unknow download status when onTimeOut, mStatus=" + this.mStatus);
            sendStopMessage("Download stop by internal error");
            LogUtils.e(TAG, "cloud-file: download status is wrong when onTimeOut, mStatus=" + this.mStatus);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            String str3 = this.mStatus == downloadTaskStatus2 ? "start order is empty when onTimeOut" : "cancel order is empty when onTimeOut";
            CountlyUtil.recordErrorEvent(str3);
            sendStopMessage(str3);
            LogUtils.e(TAG, BaseCloudFileManager.FILTER_TAG + str3);
            return;
        }
        if (!(this.mStatus == downloadTaskStatus2 ? allowResendStartOrder() : allowResendEndOrder())) {
            String str4 = this.mStatus == downloadTaskStatus2 ? "start order ack retry over max, and time out" : "cancel order ack retry over max, and time out";
            CountlyUtil.recordErrorEvent(str4);
            sendStopMessage(str4);
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str4);
            return;
        }
        if (this.mStatus == downloadTaskStatus2) {
            str2 = "start order ack is timeout and retry, retry count:" + this.sendStartOrderCount;
        } else {
            str2 = "cancel order ack is timeout and retry, retry count:" + this.sendCancelOrderCount;
        }
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str2);
        if (sendOrder(str)) {
            startTimeCountDown(this.mConfig.getAckTimeout(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stop(String str) {
        String str2 = TAG;
        LogUtils.d(str2, BaseCloudFileManager.FILTER_TAG + ("download is stop: " + str));
        stopTask(str, false, true, false);
    }
}
