package com.haima.hmcp.cloud;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.utils.LogUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class BatchUploadTask {
    private static final int ERROR_ACK_IGNORE = 16;
    private static final int ERROR_ACK_UNABLE = 17;
    private static final int ERROR_BATCH_STATUS = 11;
    public static final int ERROR_FILE_CHECK = 19;
    private static final int ERROR_FILE_EMPTY = 10;
    private static final int ERROR_ORDER_RETRY_MAX = 14;
    private static final int ERROR_UPLOAD = 15;
    private static final int ERROR_WEBSOCKET_DISCONNECT = 13;
    private static final int ERROR_WEBSOCKET_NULL = 18;
    private static final int ERROR_WEBSOCKET_RETRY_MAX = 12;
    private static final int FILE_SEGMENT_SIZE = 1024;
    private static final String KEY_CURRENT_FILE_INDEX = "fileIndex";
    private static final String KEY_ORDER_CODE = "code";
    private static final String KEY_ORDER_CODE_END = "end";
    private static final String KEY_ORDER_CODE_START = "start";
    private static final String KEY_ORDER_FILE_BID = "bid";
    private static final String KEY_ORDER_FILE_CID = "cid";
    private static final String KEY_ORDER_FILE_IMAGE_TYPE = "imageType";
    private static final String KEY_ORDER_FILE_MD5 = "md5sum";
    private static final String KEY_ORDER_FILE_NAME = "fileName";
    private static final String KEY_ORDER_FILE_SIZE = "fileSize";
    private static final String KEY_ORDER_FILE_TYPE = "mimeType";
    private static final String KEY_ORDER_TYPE = "type";
    private static final String KEY_ORDER_TYPE_UPLOAD = "upload_image";
    private static final String KEY_PROTOCOL_VERSION = "version";
    private static final String KEY_UPLOAD_FILE_COUNT = "totalFiles";
    private static final int MSG_CREATE_SOCKET = 105;
    private static final int MSG_END_ACK_TIMEOUT = 111;
    private static final int MSG_ORDER_ACK = 109;
    private static final int MSG_SEND_END_ORDER = 108;
    private static final int MSG_START_ACK_TIMEOUT = 106;
    private static final int MSG_UPLOAD_ERROR = 104;
    private static final int MSG_UPLOAD_FAIL = 110;
    private static final int MSG_UPLOAD_FILE = 103;
    private static final int RECONNECT_WEB_SOCKET_INTERVAL = 2500;
    private static final int RECONNECT_WEB_SOCKET_MAX = 10;
    private static final int SEND_END_ORDER_MAX = 5;
    private static final int SEND_START_ORDER_MAX = 5;
    private static final String TAG = "BatchUploadTask";
    private int cacheLength;
    private int cacheSize;
    private int fileSegmentSize;
    private CloudFileConfig mConfig;
    private InternalCloudFile mCurrentUploadFile;
    private Handler mHandler;
    private final HandlerThread mHandlerThread;
    private IUploadSummaryListener mListener;
    private int mReconnectSocketCount;
    private UploadSummaryAdapter mSummaryAdapter;
    private Uploading mTask;
    private int mTotalFilesCount;
    private List<InternalCloudFile> mUploadFiles;
    private IWebSocket mWebSocket;
    private int sendEndOrderCount;
    private int uploadInterval;
    private final int PROTOCOL_VERSION = 2;
    private int sendStartOrderCount = 0;
    private int mCurrentFileIndex = 0;
    private BatchUploadTaskStatus mCurrentStatus = BatchUploadTaskStatus.IDLE;

    public enum BatchUploadTaskStatus {
        IDLE,
        INIT,
        START_ORDER_SEND,
        START_ORDER_ACK,
        END_ORDER_SEND,
        END_ORDER_ACK,
        WEB_SOCKET_CREATE,
        UPLOADING
    }

    class Uploading extends AsyncTask<Object, Integer, Boolean> {
        private static final int CATCH_EXCEPTION = 102;
        private static final int FILE_NOT_EXISTS = 100;
        private static final int FILE_UPLOAD_COMPLETE = 103;
        private static final int WEB_SOCKET_NULL = 101;
        private long costTime;
        private int interval;
        private InternalCloudFile mFile;
        private final CopyOnWriteArrayList<InternalCloudFile> files = new CopyOnWriteArrayList<>();
        private boolean isStop = false;

        public Uploading(int i10) {
            this.interval = i10;
            if (i10 <= 0 || i10 > 100) {
                this.interval = 100;
            }
        }

        void push(InternalCloudFile internalCloudFile) {
            this.files.add(internalCloudFile);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Object... objArr) throws Throwable {
            String str;
            LogUtils.d(BatchUploadTask.TAG, "doInBackground, isStop:" + this.isStop);
            while (!this.isStop) {
                if (isCancelled()) {
                    this.isStop = true;
                    LogUtils.d(BatchUploadTask.TAG, "cloud-file: stop waiting for file to upload because is canceled.");
                    return Boolean.TRUE;
                }
                if (this.files.size() != 0) {
                    InternalCloudFile internalCloudFileRemove = this.files.remove(0);
                    this.mFile = internalCloudFileRemove;
                    long j10 = internalCloudFileRemove == null ? -1L : internalCloudFileRemove.fileSize;
                    FileInputStream fileInputStream = null;
                    String name = internalCloudFileRemove == null ? null : internalCloudFileRemove.getName();
                    InternalCloudFile internalCloudFile = this.mFile;
                    String path = internalCloudFile == null ? null : internalCloudFile.getPath();
                    if (this.mFile == null || j10 < 1024 || TextUtils.isEmpty(name) || TextUtils.isEmpty(path)) {
                        if (this.mFile == null) {
                            str = "mFile is null when get from list";
                        } else {
                            str = (TextUtils.isEmpty(name) || TextUtils.isEmpty(path)) ? "fileName is null or filePath is null when get from list" : "file size is not validate when get from list";
                        }
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("error_action", "Uploading doInBackground");
                            jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, str);
                        } catch (JSONException e10) {
                            e10.printStackTrace();
                        }
                        CountlyUtil.recordErrorEvent(jSONObject.toString());
                        publishProgress(100);
                        LogUtils.d(BatchUploadTask.TAG, BaseCloudFileManager.FILTER_TAG + str);
                    } else {
                        String str2 = BatchUploadTask.TAG;
                        LogUtils.d(str2, BaseCloudFileManager.FILTER_TAG + ("file size: " + j10));
                        File file = new File(path + name);
                        if (file.exists()) {
                            byte[] bArr = j10 < ((long) BatchUploadTask.this.fileSegmentSize) ? new byte[(int) j10] : new byte[BatchUploadTask.this.fileSegmentSize];
                            try {
                                try {
                                    FileInputStream fileInputStream2 = new FileInputStream(file);
                                    try {
                                        int i10 = fileInputStream2.read(bArr);
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        int i11 = 0;
                                        while (i10 > 0) {
                                            if (isCancelled()) {
                                                LogUtils.d(BatchUploadTask.TAG, "cloud-file: file uploading is stop running because is canceled.");
                                                Boolean bool = Boolean.TRUE;
                                                try {
                                                    fileInputStream2.close();
                                                } catch (IOException e11) {
                                                    e11.printStackTrace();
                                                }
                                                publishProgress(103);
                                                return bool;
                                            }
                                            if (BatchUploadTask.this.mWebSocket == null) {
                                                publishProgress(101);
                                                this.isStop = true;
                                                break;
                                            }
                                            BatchUploadTask.this.mWebSocket.sendBinaryMessage(WebSocketManager.WebSocketType.TYPE_UPLOAD, bArr);
                                            i11 += i10;
                                            String str3 = BatchUploadTask.TAG;
                                            LogUtils.d(str3, BaseCloudFileManager.FILTER_TAG + ("uploading file data size: " + i11));
                                            int i12 = this.interval;
                                            if (i12 >= 0) {
                                                Thread.sleep(i12);
                                            }
                                            i10 = fileInputStream2.read(bArr);
                                            if (i10 > 0 && i10 < bArr.length) {
                                                byte[] bArr2 = new byte[i10];
                                                System.arraycopy(bArr, 0, bArr2, 0, i10);
                                                bArr = bArr2;
                                            }
                                        }
                                        this.costTime = System.currentTimeMillis() - jCurrentTimeMillis;
                                        LogUtils.d(BatchUploadTask.TAG, "cloud-file: file upload finish, cost time: " + this.costTime);
                                        JSONObject jSONObject2 = new JSONObject();
                                        try {
                                            jSONObject2.put(Constants.FILE_SEGMENT_COEFFICIENT, BatchUploadTask.this.mConfig.getFileSegmentCoefficient());
                                            jSONObject2.put("file_segment_size", BatchUploadTask.this.fileSegmentSize);
                                            jSONObject2.put("file_size", j10);
                                            jSONObject2.put("upload_cost", this.costTime);
                                        } catch (JSONException e12) {
                                            e12.printStackTrace();
                                        }
                                        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, jSONObject2.toString());
                                        try {
                                            fileInputStream2.close();
                                        } catch (IOException e13) {
                                            e13.printStackTrace();
                                        }
                                        publishProgress(103);
                                    } catch (IOException e14) {
                                        e = e14;
                                        fileInputStream = fileInputStream2;
                                        e.printStackTrace();
                                        publishProgress(102);
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException e15) {
                                                e15.printStackTrace();
                                            }
                                        }
                                        publishProgress(103);
                                    } catch (InterruptedException e16) {
                                        e = e16;
                                        fileInputStream = fileInputStream2;
                                        e.printStackTrace();
                                        publishProgress(102);
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException e17) {
                                                e17.printStackTrace();
                                            }
                                        }
                                        publishProgress(103);
                                    } catch (Throwable th) {
                                        th = th;
                                        fileInputStream = fileInputStream2;
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException e18) {
                                                e18.printStackTrace();
                                            }
                                        }
                                        publishProgress(103);
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (IOException e19) {
                                e = e19;
                            } catch (InterruptedException e20) {
                                e = e20;
                            }
                        } else {
                            publishProgress(100);
                            LogUtils.d(BatchUploadTask.TAG, BaseCloudFileManager.FILTER_TAG + "file is null when uploading");
                        }
                    }
                }
            }
            LogUtils.d(BatchUploadTask.TAG, "cloud-file: uploading task is finish");
            return Boolean.TRUE;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Boolean bool) {
            this.isStop = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
            switch (numArr[0].intValue()) {
                case 100:
                    if (BatchUploadTask.this.mHandler != null) {
                        Message messageObtainMessage = BatchUploadTask.this.mHandler.obtainMessage();
                        messageObtainMessage.what = 110;
                        messageObtainMessage.obj = "uploading-> file is not exists";
                        BatchUploadTask.this.mHandler.sendMessage(messageObtainMessage);
                    }
                    break;
                case 101:
                    if (BatchUploadTask.this.mHandler != null) {
                        Message messageObtainMessage2 = BatchUploadTask.this.mHandler.obtainMessage();
                        messageObtainMessage2.what = 104;
                        messageObtainMessage2.obj = "uploading-> web-socket is not available";
                        BatchUploadTask.this.mHandler.sendMessage(messageObtainMessage2);
                    }
                    break;
                case 102:
                    if (BatchUploadTask.this.mHandler != null) {
                        Message messageObtainMessage3 = BatchUploadTask.this.mHandler.obtainMessage();
                        messageObtainMessage3.what = 104;
                        messageObtainMessage3.obj = "file io exception";
                        BatchUploadTask.this.mHandler.sendMessage(messageObtainMessage3);
                    }
                    break;
                case 103:
                    if (BatchUploadTask.this.mHandler != null) {
                        BatchUploadTask.this.mHandler.sendEmptyMessageDelayed(108, 2000L);
                    }
                    break;
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            this.isStop = true;
        }
    }

    public BatchUploadTask(IWebSocket iWebSocket, CloudFileConfig cloudFileConfig) {
        this.fileSegmentSize = 1024;
        this.uploadInterval = 100;
        this.cacheSize = 1;
        this.mWebSocket = iWebSocket;
        this.mConfig = cloudFileConfig;
        this.fileSegmentSize = getFileSegmentSize(cloudFileConfig.getFileSegmentCount());
        this.uploadInterval = getUploadInterval(this.mConfig.getFileSegmentCoefficient());
        int fileCacheSize = this.cacheSize * this.mConfig.getFileCacheSize();
        this.cacheSize = fileCacheSize;
        this.cacheLength = getCacheLength(this.fileSegmentSize, fileCacheSize);
        LogUtils.d(TAG, "cloud-file: fileSegmentSize:" + this.fileSegmentSize + "; uploadInterval:" + this.uploadInterval);
        this.mReconnectSocketCount = 0;
        this.mSummaryAdapter = new UploadSummaryAdapter();
        HandlerThread handlerThread = new HandlerThread("UploadTaskV2");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper()) { // from class: com.haima.hmcp.cloud.BatchUploadTask.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                BatchUploadTask.this.handleTimeoutMessage(message);
            }
        };
    }

    static /* synthetic */ int access$608(BatchUploadTask batchUploadTask) {
        int i10 = batchUploadTask.mReconnectSocketCount;
        batchUploadTask.mReconnectSocketCount = i10 + 1;
        return i10;
    }

    private void createPipe() {
        this.mCurrentStatus = BatchUploadTaskStatus.WEB_SOCKET_CREATE;
        StringBuilder sb2 = new StringBuilder();
        CloudFileConfig cloudFileConfig = this.mConfig;
        sb2.append(cloudFileConfig.url);
        sb2.append("&act=1&proto=4");
        cloudFileConfig.url = sb2.toString();
        this.mWebSocket.connect2Upload(this.mConfig.url, new WebSocketManager.SimpleTransmissionConnectionHandler() { // from class: com.haima.hmcp.cloud.BatchUploadTask.2
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z10) {
                LogUtils.d(BatchUploadTask.TAG, BaseCloudFileManager.FILTER_TAG + "upload web-socket is connect");
                if (BatchUploadTask.this.mCurrentStatus != BatchUploadTaskStatus.IDLE) {
                    BatchUploadTask.this.processNextFile();
                    return;
                }
                String str = BatchUploadTask.TAG;
                LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + ("upload web-socket is connect, but task status is IDLE not run"));
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i10, String str, boolean z10) {
                if (i10 == 6) {
                    String str2 = BatchUploadTask.TAG;
                    LogUtils.d(str2, BaseCloudFileManager.FILTER_TAG + ("web-socket connect fail by server error: " + str));
                    boolean zOnHangUp = BatchUploadTask.this.mListener != null ? BatchUploadTask.this.mListener.onHangUp() : false;
                    String str3 = BatchUploadTask.TAG;
                    LogUtils.d(str3, BaseCloudFileManager.FILTER_TAG + ("is allow web-socket reconnect: " + zOnHangUp));
                    if (zOnHangUp) {
                        return;
                    }
                    String str4 = "upload web-socket is disconnect: " + str;
                    LogUtils.d(BatchUploadTask.TAG, BaseCloudFileManager.FILTER_TAG + str4);
                    BatchUploadTask.this.uploadError(13, "upload socket disconnect");
                    return;
                }
                String str5 = "web-socket connect onDisconnect: " + str + "---code:" + i10;
                LogUtils.d(BatchUploadTask.TAG, BaseCloudFileManager.FILTER_TAG + str5);
                if (BatchUploadTask.this.mReconnectSocketCount >= 10 || BatchUploadTask.this.mHandler == null) {
                    String str6 = "upload task: reconnect upload ws over max count:" + BatchUploadTask.this.mReconnectSocketCount;
                    BatchUploadTask.this.uploadError(12, str6);
                    LogUtils.e(BatchUploadTask.TAG, BaseCloudFileManager.FILTER_TAG + str6);
                    return;
                }
                BatchUploadTask.access$608(BatchUploadTask.this);
                Message messageObtainMessage = BatchUploadTask.this.mHandler.obtainMessage();
                messageObtainMessage.what = 105;
                BatchUploadTask.this.mHandler.sendMessageDelayed(messageObtainMessage, 2500L);
                LogUtils.d(BatchUploadTask.TAG, "cloud-file: WebSocket is not active when send start upload order, after 2.5s recheck web-socket, reconnect count: " + BatchUploadTask.this.mReconnectSocketCount);
                CountlyUtil.recordErrorEvent("WebSocket is not active when send start upload order");
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleTransmissionConnectionHandler
            public void onMessage(byte[] bArr, boolean z10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleTransmissionConnectionHandler
            public void onMessage(String str) {
                LogUtils.e(BatchUploadTask.TAG, "cloud-file: upload onMessage =" + str);
                if (BatchUploadTask.this.mHandler != null) {
                    Message messageObtainMessage = BatchUploadTask.this.mHandler.obtainMessage();
                    messageObtainMessage.what = 109;
                    messageObtainMessage.obj = str;
                    BatchUploadTask.this.mHandler.sendMessage(messageObtainMessage);
                }
            }
        });
    }

    private int getCacheLength(int i10, int i11) {
        return (i11 * 1024) / i10;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0058  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    private String getEndOrder(InternalCloudFile internalCloudFile) {
        JSONObject jSONObject;
        if (internalCloudFile == null) {
            LogUtils.e(TAG, "Invalid parameters: upload file is null");
            return null;
        }
        try {
            jSONObject = new JSONObject();
            try {
                try {
                    jSONObject.put("version", 2);
                    jSONObject.put("type", "upload_image");
                    jSONObject.put("code", "end");
                    jSONObject.put(KEY_ORDER_FILE_NAME, internalCloudFile.getName());
                    jSONObject.put(KEY_CURRENT_FILE_INDEX, this.mCurrentFileIndex + 1);
                    jSONObject.put(KEY_UPLOAD_FILE_COUNT, this.mTotalFilesCount);
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

    private int getFileSegmentSize(int i10) {
        return i10 * 1024;
    }

    private AckOrderBean getOrderBean(String str) {
        AckOrderBean ackOrderBean = null;
        try {
            AckOrderBean ackOrderBean2 = new AckOrderBean();
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("version")) {
                    ackOrderBean2.version = jSONObject.optInt("version");
                }
                if (jSONObject.has("type")) {
                    ackOrderBean2.type = jSONObject.optString("type");
                }
                if (jSONObject.has("code")) {
                    ackOrderBean2.code = jSONObject.optString("code");
                }
                if (jSONObject.has("message")) {
                    ackOrderBean2.message = jSONObject.optString("message");
                }
                if (!jSONObject.has(KEY_ORDER_FILE_NAME)) {
                    return ackOrderBean2;
                }
                ackOrderBean2.fileName = jSONObject.optString(KEY_ORDER_FILE_NAME);
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

    private String getStartOrder(int i10) {
        if (this.mCurrentUploadFile == null) {
            LogUtils.e(TAG, "Invalid parameters: upload file is null");
            return null;
        }
        if (i10 != 2) {
            LogUtils.e(TAG, "Unsupported protocol version: " + i10);
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("version", i10);
            jSONObject.put("type", "upload_image");
            jSONObject.put("code", "start");
            jSONObject.put(KEY_ORDER_FILE_NAME, this.mCurrentUploadFile.getName());
            jSONObject.put("imageType", this.mCurrentUploadFile.getImageType());
            jSONObject.put(KEY_ORDER_FILE_TYPE, this.mCurrentUploadFile.type);
            jSONObject.put(KEY_ORDER_FILE_SIZE, this.mCurrentUploadFile.fileSize);
            jSONObject.put(KEY_ORDER_FILE_MD5, this.mCurrentUploadFile.md5);
            jSONObject.put("bid", this.mConfig.bid);
            jSONObject.put("cid", this.mConfig.cid);
            jSONObject.put(KEY_CURRENT_FILE_INDEX, this.mCurrentFileIndex + 1);
            jSONObject.put(KEY_UPLOAD_FILE_COUNT, this.mTotalFilesCount);
            return jSONObject.toString();
        } catch (Exception e10) {
            LogUtils.e(TAG, "Failed to generate  start order: " + e10.getMessage());
            return null;
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

    private void handleInvalidStatus() {
        CountlyUtil.recordErrorEvent("unknow upload status when onTimeOut, mStatus=" + this.mCurrentStatus);
        uploadError(11, "Upload stop by internal error");
        LogUtils.d(TAG, "cloud-file: upload status is wrong when onTimeOut, mStatus=" + this.mCurrentStatus);
    }

    private void handleMaxRetriesExceeded(boolean z10) {
        String str = (z10 ? "start" : "end") + " order ack is time out after retry max count";
        CountlyUtil.recordErrorEvent(str);
        uploadError(14, str);
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str);
    }

    private void handleOrderTimeout(String str, boolean z10) {
        int i10;
        if (z10) {
            i10 = this.sendStartOrderCount;
            this.sendStartOrderCount = i10 + 1;
        } else {
            i10 = this.sendEndOrderCount;
            this.sendEndOrderCount = i10 + 1;
        }
        if (i10 < 5) {
            handleRetry(str, z10, i10);
        } else {
            handleMaxRetriesExceeded(z10);
        }
    }

    private void handleRetry(String str, boolean z10, int i10) {
        String str2 = (z10 ? "start" : "end") + " order ack is timeout and retry, retry count:" + i10;
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str2);
        if (sendOrder(str)) {
            Message messageObtain = Message.obtain();
            messageObtain.what = z10 ? 106 : 111;
            messageObtain.obj = str;
            this.mHandler.sendMessageDelayed(messageObtain, this.mConfig.getAckTimeout());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTimeoutMessage(Message message) {
        switch (message.what) {
            case 103:
                pushFileToTask(this.mCurrentUploadFile);
                break;
            case 104:
                Object obj = message.obj;
                uploadError(15, obj != null ? obj.toString() : "");
                break;
            case 105:
                createPipe();
                break;
            case 106:
            case 111:
                handlerAckTimeOut((String) message.obj);
                break;
            case 108:
                prepareSendEndOrder();
                break;
            case 109:
                Object obj2 = message.obj;
                orderAckDispatcher(obj2 != null ? obj2.toString() : null);
                break;
            case 110:
                BatchUploadTaskStatus batchUploadTaskStatus = this.mCurrentStatus;
                Object obj3 = message.obj;
                handleUploadFileError(batchUploadTaskStatus, 15, obj3 != null ? obj3.toString() : "");
                break;
        }
    }

    private void handleUploadFileError(BatchUploadTaskStatus batchUploadTaskStatus, int i10, String str) {
        LogUtils.e(TAG, "handleUploadFileError error: " + str);
        this.mSummaryAdapter.onFileError(this.mCurrentUploadFile, batchUploadTaskStatus, i10, str);
        this.mCurrentFileIndex = this.mCurrentFileIndex + 1;
        processNextFile();
    }

    private void handleUploadFileSuccess(InternalCloudFile internalCloudFile) {
        LogUtils.e(TAG, "handleUploadFileSuccess: " + internalCloudFile);
        this.mSummaryAdapter.onFileSuccess(internalCloudFile);
        this.mCurrentFileIndex = this.mCurrentFileIndex + 1;
        processNextFile();
    }

    private void handlerAckTimeOut(String str) {
        BatchUploadTaskStatus batchUploadTaskStatus = this.mCurrentStatus;
        BatchUploadTaskStatus batchUploadTaskStatus2 = BatchUploadTaskStatus.START_ORDER_SEND;
        if (batchUploadTaskStatus != batchUploadTaskStatus2 && batchUploadTaskStatus != BatchUploadTaskStatus.END_ORDER_SEND) {
            handleInvalidStatus();
        } else if (batchUploadTaskStatus == batchUploadTaskStatus2) {
            handleOrderTimeout(str, true);
        } else {
            handleOrderTimeout(str, false);
        }
    }

    private boolean isWebSocketActive(IWebSocket iWebSocket, WebSocketManager.WebSocketType webSocketType) {
        return iWebSocket != null && iWebSocket.isConnect(webSocketType);
    }

    private void onEndOrderAck() {
        this.sendStartOrderCount = 0;
        this.sendEndOrderCount = 0;
        this.mReconnectSocketCount = 0;
        this.mCurrentStatus = BatchUploadTaskStatus.END_ORDER_ACK;
        LogUtils.d(TAG, "cloud-file: uploaded file success");
        handleUploadFileSuccess(this.mCurrentUploadFile);
    }

    private void onStartOrderAck() {
        this.mCurrentStatus = BatchUploadTaskStatus.START_ORDER_ACK;
        IWebSocket iWebSocket = this.mWebSocket;
        if (iWebSocket == null) {
            uploadError(18, "web-socket is null, to upload task is stop");
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "web-socket is null, to upload task is stop");
            return;
        }
        if (iWebSocket.isConnect(WebSocketManager.WebSocketType.TYPE_UPLOAD)) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.sendEmptyMessage(103);
                return;
            } else {
                CountlyUtil.recordErrorEvent("Handler is null when send MSG_UPLOAD_FILE message");
                return;
            }
        }
        Handler handler2 = this.mHandler;
        if (handler2 != null) {
            handler2.sendEmptyMessage(105);
        } else {
            CountlyUtil.recordErrorEvent("Handler is null when send MSG_CREATE_SOCKET message");
        }
    }

    private void orderAckDispatcher(String str) {
        Handler handler;
        Handler handler2;
        if (TextUtils.isEmpty(str)) {
            String str2 = "order ack is null when mStatus=" + this.mCurrentStatus;
            handleUploadFileError(this.mCurrentStatus, -1, "Upload taks is stop by internal error");
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str2);
            return;
        }
        if (!str.contains("upload_image") && !str.contains("ignore")) {
            LogUtils.e(TAG, "cloud-file: is not upload message:" + str);
            return;
        }
        AckOrderBean orderBean = getOrderBean(str);
        if (orderBean == null) {
            String str3 = "json parse error: " + str;
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str3);
            handleUploadFileError(this.mCurrentStatus, -1, str3);
            return;
        }
        BatchUploadTaskStatus batchUploadTaskStatus = this.mCurrentStatus;
        BatchUploadTaskStatus batchUploadTaskStatus2 = BatchUploadTaskStatus.START_ORDER_SEND;
        if (batchUploadTaskStatus == batchUploadTaskStatus2 && (handler2 = this.mHandler) != null) {
            handler2.removeMessages(106);
        }
        BatchUploadTaskStatus batchUploadTaskStatus3 = this.mCurrentStatus;
        BatchUploadTaskStatus batchUploadTaskStatus4 = BatchUploadTaskStatus.END_ORDER_SEND;
        if (batchUploadTaskStatus3 == batchUploadTaskStatus4 && (handler = this.mHandler) != null) {
            handler.removeMessages(111);
        }
        if (TextUtils.equals(orderBean.type, "ignore")) {
            uploadError(16, orderBean.message);
        }
        if (orderBean.isUnable()) {
            String str4 = "upload is enable: " + orderBean.code + "[" + orderBean.message + "]";
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str4);
            uploadError(17, str4);
            return;
        }
        if (orderBean.isUploadError()) {
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
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + string);
            handleUploadFileError(this.mCurrentStatus, -1, string);
            return;
        }
        BatchUploadTaskStatus batchUploadTaskStatus5 = this.mCurrentStatus;
        if (batchUploadTaskStatus5 == batchUploadTaskStatus2) {
            if (orderBean.isUploadSuccess()) {
                handleUploadFileSuccess(this.mCurrentUploadFile);
                return;
            } else {
                if (orderBean.isUploadReady()) {
                    onStartOrderAck();
                    return;
                }
                return;
            }
        }
        if (batchUploadTaskStatus5 == batchUploadTaskStatus4) {
            if (orderBean.isUploadSuccess()) {
                onEndOrderAck();
                return;
            }
            String str5 = "sdk upload success but receive rom error. [type:" + orderBean.type + "][code:" + orderBean.code + "][message:" + orderBean.message + "]";
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str5);
            CountlyUtil.recordErrorEvent(str5);
            handleUploadFileError(this.mCurrentStatus, -1, str5);
        }
    }

    private void prepareSendEndOrder() {
        this.mCurrentStatus = BatchUploadTaskStatus.END_ORDER_SEND;
        LogUtils.d(TAG, "cloud-file: sendFinishOrder");
        String endOrder = getEndOrder(this.mCurrentUploadFile);
        if (TextUtils.isEmpty(endOrder)) {
            handleUploadFileError(this.mCurrentStatus, -1, "create end order error");
        } else if (sendOrder(endOrder)) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 111;
            messageObtain.obj = endOrder;
            this.mHandler.sendMessageDelayed(messageObtain, this.mConfig.getAckTimeout());
        }
    }

    private void prepareSendStartOrder() {
        String str = TAG;
        LogUtils.d(str, "cloud-file: sendStartOrder");
        this.mCurrentStatus = BatchUploadTaskStatus.START_ORDER_SEND;
        InternalCloudFile internalCloudFile = this.mCurrentUploadFile;
        if (internalCloudFile == null || !internalCloudFile.isAvailable(CloudOperation.UPLOAD)) {
            LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "upload file is null or param is not available");
            handleUploadFileError(this.mCurrentStatus, -1, "upload file is null or param is not available");
            return;
        }
        String startOrder = getStartOrder(2);
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "start order:" + startOrder);
        if (TextUtils.isEmpty(startOrder)) {
            handleUploadFileError(this.mCurrentStatus, -1, "create start order error");
        } else if (sendOrder(startOrder)) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 106;
            messageObtain.obj = startOrder;
            this.mHandler.sendMessageDelayed(messageObtain, this.mConfig.getAckTimeout());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processNextFile() {
        int i10 = this.mCurrentFileIndex;
        if (i10 >= this.mTotalFilesCount) {
            this.mSummaryAdapter.onComplete();
            stopTask();
        } else {
            this.mCurrentUploadFile = this.mUploadFiles.get(i10);
            prepareSendStartOrder();
        }
    }

    private void pushFileToTask(InternalCloudFile internalCloudFile) {
        this.mCurrentStatus = BatchUploadTaskStatus.UPLOADING;
        LogUtils.d(TAG, "pushFileToTask");
        Uploading uploading = this.mTask;
        if (uploading != null && uploading.getStatus() != AsyncTask.Status.PENDING) {
            this.mTask.cancel(true);
            this.mTask = null;
        }
        Uploading uploading2 = new Uploading(this.uploadInterval);
        this.mTask = uploading2;
        uploading2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, internalCloudFile);
        this.mTask.push(internalCloudFile);
    }

    private boolean sendOrder(String str) {
        IWebSocket iWebSocket = this.mWebSocket;
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_UPLOAD;
        if (!isWebSocketActive(iWebSocket, webSocketType)) {
            LogUtils.d(TAG, "cloud-file: batch upload task:web-socket is not active: create socket");
            this.mHandler.sendEmptyMessage(105);
            return false;
        }
        IWebSocket iWebSocket2 = this.mWebSocket;
        if (iWebSocket2 == null) {
            CountlyUtil.recordErrorEvent("WebSocket is null when sendOrder called");
            return true;
        }
        iWebSocket2.sendTextMessage(webSocketType, str);
        LogUtils.d(TAG, "cloud-file: order: " + str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadError(int i10, String str) {
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str);
        UploadSummaryAdapter uploadSummaryAdapter = this.mSummaryAdapter;
        if (uploadSummaryAdapter != null) {
            uploadSummaryAdapter.onError(i10, str);
        }
        stopTask();
    }

    public int getStatus() {
        LogUtils.d(TAG, "cloud-file: upload task status: " + this.mCurrentStatus);
        return 0;
    }

    public boolean isRunning() {
        return this.mCurrentStatus != BatchUploadTaskStatus.IDLE;
    }

    public void start(List<InternalCloudFile> list, @NonNull IUploadSummaryListener iUploadSummaryListener) {
        this.mSummaryAdapter.setUploadSummaryListener(iUploadSummaryListener);
        this.mListener = iUploadSummaryListener;
        if (list == null || list.size() == 0) {
            LogUtils.d(TAG, "BatchUpload file list is null or size = 0");
            uploadError(10, "BatchUpload file list is null or size = 0");
            return;
        }
        if (this.mCurrentStatus != BatchUploadTaskStatus.IDLE) {
            LogUtils.d(TAG, "BatchUpload currentStatus cannot support start");
            uploadError(11, "BatchUpload currentStatus cannot support start");
            return;
        }
        List<InternalCloudFile> list2 = this.mUploadFiles;
        if (list2 == null) {
            this.mUploadFiles = new ArrayList();
        } else {
            list2.clear();
        }
        this.mUploadFiles.addAll(list);
        this.mCurrentStatus = BatchUploadTaskStatus.INIT;
        this.mTotalFilesCount = this.mUploadFiles.size();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", "upload_config");
            jSONObject.put(Constants.FILE_SEGMENT_COEFFICIENT, this.mConfig.getFileSegmentCoefficient());
            jSONObject.put("file_segment_size", this.fileSegmentSize);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, jSONObject.toString());
        this.mCurrentFileIndex = 0;
        processNextFile();
    }

    public void stopTask() {
        this.mCurrentStatus = BatchUploadTaskStatus.IDLE;
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "batch_upload task is stop");
        Uploading uploading = this.mTask;
        if (uploading != null) {
            uploading.cancel(true);
            this.mTask = null;
        }
        IWebSocket iWebSocket = this.mWebSocket;
        if (iWebSocket != null) {
            iWebSocket.disconnect2Upload();
        }
        List<InternalCloudFile> list = this.mUploadFiles;
        if (list != null) {
            list.clear();
            this.mUploadFiles = null;
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler.getLooper().quit();
            this.mHandler = null;
        }
        this.mWebSocket = null;
        this.mListener = null;
    }
}
