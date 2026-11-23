package com.haima.hmcp.cloud;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.CloudFileConfig;
import com.haima.hmcp.beans.DevDebugConfig;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.CloudOperation;
import com.haima.hmcp.utils.DevDebugManager;
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
class UploadTask extends CountDownTimerWrapper<String> implements ITask {
    private static final int FILE_SEGMENT_COEFFICIENT = 4;
    private static final int FILE_SEGMENT_SIZE = 1024;
    private static final String KEY_ORDER_CODE = "code";
    private static final String KEY_ORDER_CODE_END = "end";
    private static final String KEY_ORDER_CODE_ERROR = "error";
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
    private static final int MSG_CREATE_SOCKET = 105;
    private static final int MSG_ORDER_ACK = 109;
    private static final int MSG_SEND_END_ORDER = 108;
    private static final int MSG_SEND_START_ORDER = 102;
    private static final int MSG_START = 100;
    private static final int MSG_STOP = 101;
    private static final int MSG_TASK_COMPLETE = 107;
    private static final int MSG_UPLOAD_ERROR = 104;
    private static final int MSG_UPLOAD_FILE = 103;
    private static final int RECONNECT_WEB_SOCKET_INTERVAL = 2500;
    private static final int RECONNECT_WEB_SOCKET_MAX = 10;
    private static final int SEND_END_ORDER_MAX = 5;
    private static final int SEND_START_ORDER_MAX = 5;
    private static final String TAG = "UploadTask";
    private static UploadHandler mHandler;
    private ArrayList<byte[]> cache;
    private int cacheLength;
    private int cacheSize;
    private int fileSegmentSize;
    private HandlerThread handlerThread;
    private CloudFileConfig mConfig;
    private InternalCloudFile mCurrentHandleFile;
    private DevDebugConfig mDevDebugConfig = DevDebugManager.getInstance().getDevDebugConfig();
    private IWorkListener mListener;
    private int mReconnectSocketCount;
    private UploadTaskStatus mStatus;
    private Uploading mTask;
    private List<InternalCloudFile> mUploadFiles;
    private IWebSocket mWebSocket;
    private int sendEndOrderCount;
    private int sendStartOrderCount;
    private int uploadInterval;

    class UploadHandler extends Handler {
        public UploadHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 101:
                    Object obj = message.obj;
                    UploadTask.this.stop(obj != null ? obj.toString() : "");
                    break;
                case 102:
                    UploadTask.this.prepareSendStartOrder();
                    break;
                case 103:
                    UploadTask uploadTask = UploadTask.this;
                    uploadTask.pushFileToTask(uploadTask.mCurrentHandleFile);
                    break;
                case 104:
                    UploadTask uploadTask2 = UploadTask.this;
                    Object obj2 = message.obj;
                    uploadTask2.error(obj2 != null ? obj2.toString() : "");
                    break;
                case 105:
                    UploadTask.this.createPipe();
                    break;
                case 107:
                    UploadTask.this.complete();
                    break;
                case 108:
                    UploadTask.this.sendEndOrder();
                    break;
                case 109:
                    UploadTask uploadTask3 = UploadTask.this;
                    Object obj3 = message.obj;
                    uploadTask3.internalOrderAckDispatcher(obj3 != null ? obj3.toString() : null);
                    break;
            }
        }
    }

    enum UploadTaskStatus {
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
            LogUtils.d(UploadTask.TAG, "doInBackground, isStop:" + this.isStop);
            while (!this.isStop) {
                if (isCancelled()) {
                    this.isStop = true;
                    LogUtils.d(UploadTask.TAG, "cloud-file: stop waiting for file to upload because is canceled.");
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
                        LogUtils.d(UploadTask.TAG, BaseCloudFileManager.FILTER_TAG + str);
                    } else {
                        String str2 = UploadTask.TAG;
                        LogUtils.d(str2, BaseCloudFileManager.FILTER_TAG + ("file size: " + j10));
                        File file = new File(path + name);
                        if (file.exists()) {
                            byte[] bArr = j10 < ((long) UploadTask.this.fileSegmentSize) ? new byte[(int) j10] : new byte[UploadTask.this.fileSegmentSize];
                            try {
                                try {
                                    FileInputStream fileInputStream2 = new FileInputStream(file);
                                    try {
                                        int i10 = fileInputStream2.read(bArr);
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        int i11 = 0;
                                        while (i10 > 0) {
                                            if (isCancelled()) {
                                                LogUtils.d(UploadTask.TAG, "cloud-file: file uploading is stop running because is canceled.");
                                                Boolean bool = Boolean.TRUE;
                                                try {
                                                    fileInputStream2.close();
                                                } catch (IOException e11) {
                                                    e11.printStackTrace();
                                                }
                                                publishProgress(103);
                                                return bool;
                                            }
                                            if (UploadTask.this.mWebSocket == null) {
                                                publishProgress(101);
                                                this.isStop = true;
                                                break;
                                            }
                                            UploadTask.this.mWebSocket.sendBinaryMessage(WebSocketManager.WebSocketType.TYPE_UPLOAD, bArr);
                                            i11 += i10;
                                            String str3 = UploadTask.TAG;
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
                                        LogUtils.d(UploadTask.TAG, "cloud-file: file upload finish, cost time: " + this.costTime);
                                        JSONObject jSONObject2 = new JSONObject();
                                        try {
                                            jSONObject2.put(Constants.FILE_SEGMENT_COEFFICIENT, UploadTask.this.mConfig.getFileSegmentCoefficient());
                                            jSONObject2.put("file_segment_size", UploadTask.this.fileSegmentSize);
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
                            LogUtils.d(UploadTask.TAG, BaseCloudFileManager.FILTER_TAG + "file is null when uploading");
                        }
                    }
                }
            }
            LogUtils.d(UploadTask.TAG, "cloud-file: uploading task is finish");
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
                    if (UploadTask.mHandler != null) {
                        Message messageObtainMessage = UploadTask.mHandler.obtainMessage();
                        messageObtainMessage.what = 104;
                        messageObtainMessage.obj = "uploading-> file is not exists";
                        UploadTask.mHandler.sendMessage(messageObtainMessage);
                    }
                    break;
                case 101:
                    if (UploadTask.mHandler != null) {
                        Message messageObtainMessage2 = UploadTask.mHandler.obtainMessage();
                        messageObtainMessage2.what = 101;
                        messageObtainMessage2.obj = "uploading-> web-socket is not available";
                        UploadTask.mHandler.sendMessage(messageObtainMessage2);
                    }
                    break;
                case 102:
                    if (UploadTask.mHandler != null) {
                        Message messageObtainMessage3 = UploadTask.mHandler.obtainMessage();
                        messageObtainMessage3.what = 104;
                        messageObtainMessage3.obj = "file io exception";
                        UploadTask.mHandler.sendMessage(messageObtainMessage3);
                    }
                    break;
                case 103:
                    if (UploadTask.mHandler != null) {
                        UploadTask.mHandler.sendEmptyMessageDelayed(108, 2000L);
                    }
                    break;
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            this.isStop = true;
        }
    }

    UploadTask(IWebSocket iWebSocket, CloudFileConfig cloudFileConfig) {
        this.fileSegmentSize = 1024;
        this.uploadInterval = 100;
        this.cacheSize = 1;
        this.mWebSocket = iWebSocket;
        this.mConfig = cloudFileConfig;
        this.fileSegmentSize = getFileSegmentSize(this.mConfig.getFileSegmentCount());
        this.uploadInterval = getUploadInterval(this.mConfig.getFileSegmentCoefficient());
        int fileCacheSize = this.cacheSize * this.mConfig.getFileCacheSize();
        this.cacheSize = fileCacheSize;
        this.cacheLength = getCacheLength(this.fileSegmentSize, fileCacheSize);
        LogUtils.d(TAG, "cloud-file: fileSegmentSize:" + this.fileSegmentSize + "; uploadInterval:" + this.uploadInterval);
        this.mReconnectSocketCount = 0;
        this.cache = new ArrayList<>();
        HandlerThread handlerThread = new HandlerThread("uploading");
        this.handlerThread = handlerThread;
        handlerThread.start();
        UploadHandler uploadHandler = mHandler;
        if (uploadHandler != null) {
            uploadHandler.getLooper().quit();
            mHandler = null;
        }
        mHandler = new UploadHandler(this.handlerThread.getLooper());
    }

    static /* synthetic */ int access$408(UploadTask uploadTask) {
        int i10 = uploadTask.mReconnectSocketCount;
        uploadTask.mReconnectSocketCount = i10 + 1;
        return i10;
    }

    private void ackEndOrder() {
        setStatus(UploadTaskStatus.END_ORDER_ACK);
        LogUtils.d(TAG, "cloud-file: uploaded file success");
        IWorkListener iWorkListener = this.mListener;
        if (iWorkListener != null) {
            iWorkListener.onSuccess(this.mCurrentHandleFile.copy());
        }
        UploadHandler uploadHandler = mHandler;
        if (uploadHandler != null) {
            uploadHandler.sendEmptyMessage(102);
        } else {
            CountlyUtil.recordErrorEvent("Handler is null when send MSG_SEND_START_ORDER message from ackEndOrder called");
        }
    }

    private void ackStartOrder() {
        setStatus(UploadTaskStatus.START_ORDER_ACK);
        IWebSocket iWebSocket = this.mWebSocket;
        if (iWebSocket == null) {
            sendStopMessage("web-socket is null, to upload task is stop");
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "web-socket is null, to upload task is stop");
            return;
        }
        if (iWebSocket.isConnect(WebSocketManager.WebSocketType.TYPE_UPLOAD)) {
            UploadHandler uploadHandler = mHandler;
            if (uploadHandler != null) {
                uploadHandler.sendEmptyMessage(103);
                return;
            } else {
                CountlyUtil.recordErrorEvent("Handler is null when send MSG_UPLOAD_FILE message");
                return;
            }
        }
        UploadHandler uploadHandler2 = mHandler;
        if (uploadHandler2 != null) {
            uploadHandler2.sendEmptyMessage(105);
        } else {
            CountlyUtil.recordErrorEvent("Handler is null when send MSG_CREATE_SOCKET message");
        }
    }

    private boolean allowResendEndOrder() {
        int i10 = this.sendEndOrderCount;
        boolean z10 = i10 < 5;
        this.sendEndOrderCount = i10 + 1;
        return z10;
    }

    private boolean allowResendStartOrder() {
        int i10 = this.sendStartOrderCount;
        boolean z10 = i10 < 5;
        this.sendStartOrderCount = i10 + 1;
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void complete() {
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "upload is complete");
        IWorkListener iWorkListener = this.mListener;
        if (iWorkListener != null) {
            iWorkListener.onFinish(null);
        }
        stopTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createPipe() {
        setStatus(UploadTaskStatus.WEB_SOCKET_CREATE);
        StringBuilder sb2 = new StringBuilder();
        CloudFileConfig cloudFileConfig = this.mConfig;
        sb2.append(cloudFileConfig.url);
        sb2.append("&act=1&proto=4");
        cloudFileConfig.url = sb2.toString();
        this.mWebSocket.connect2Upload(this.mConfig.url, new WebSocketManager.SimpleTransmissionConnectionHandler() { // from class: com.haima.hmcp.cloud.UploadTask.1
            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onConnect(boolean z10) {
                LogUtils.d(UploadTask.TAG, BaseCloudFileManager.FILTER_TAG + "upload web-socket is connect");
                if (UploadTask.this.mStatus != UploadTaskStatus.IDLE) {
                    if (UploadTask.mHandler != null) {
                        UploadTask.mHandler.sendEmptyMessage(102);
                        return;
                    }
                    CountlyUtil.recordErrorEvent("mHandler is null when upload web-socket is connect");
                    return;
                }
                String str = UploadTask.TAG;
                LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + ("upload web-socket is connect, but task status is IDLE not run"));
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onDisconnect(int i10, String str, boolean z10) {
                boolean zOnHangUp = false;
                if (i10 == 6) {
                    String str2 = UploadTask.TAG;
                    LogUtils.d(str2, BaseCloudFileManager.FILTER_TAG + ("web-socket connect fail by server error: " + str));
                    zOnHangUp = UploadTask.this.mListener != null ? UploadTask.this.mListener.onHangUp() : false;
                    String str3 = UploadTask.TAG;
                    LogUtils.d(str3, BaseCloudFileManager.FILTER_TAG + ("is allow web-socket reconnect: " + zOnHangUp));
                } else if (UploadTask.this.mReconnectSocketCount >= 10 || UploadTask.mHandler == null) {
                    String str4 = "upload task: reconnect upload ws over max count:" + UploadTask.this.mReconnectSocketCount;
                    UploadTask.this.sendStopMessage(str4);
                    LogUtils.e(UploadTask.TAG, BaseCloudFileManager.FILTER_TAG + str4);
                } else {
                    UploadTask.access$408(UploadTask.this);
                    Message messageObtainMessage = UploadTask.mHandler.obtainMessage();
                    messageObtainMessage.what = 105;
                    UploadTask.mHandler.sendMessageDelayed(messageObtainMessage, 2500L);
                    LogUtils.d(UploadTask.TAG, "cloud-file: WebSocket is not active when send start upload order, after 2.5s recheck web-socket, reconnect count: " + UploadTask.this.mReconnectSocketCount);
                    CountlyUtil.recordErrorEvent("WebSocket is not active when send start upload order");
                }
                if (zOnHangUp) {
                    return;
                }
                String str5 = "upload web-socket is disconnect: " + str;
                LogUtils.d(UploadTask.TAG, BaseCloudFileManager.FILTER_TAG + str5);
                UploadTask.this.sendStopMessage("upload socket disconnect");
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleConnectionHandler
            public void onHeartBeatSuccess() {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleTransmissionConnectionHandler
            public void onMessage(byte[] bArr, boolean z10) {
            }

            @Override // com.haima.hmcp.business.WebSocketManager.SimpleTransmissionConnectionHandler
            public void onMessage(String str) {
                LogUtils.e(UploadTask.TAG, "cloud-file: upload onMessage =" + str);
                UploadTask.this.orderAckDispatcher(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void error(String str) {
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str);
        IWorkListener iWorkListener = this.mListener;
        if (iWorkListener != null) {
            iWorkListener.onError(this.mCurrentHandleFile.copy(), str);
        }
        stopTask();
    }

    private int getCacheLength(int i10, int i11) {
        return (i11 * 1024) / i10;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0038  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    private String getEndOrder(InternalCloudFile internalCloudFile) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                try {
                    jSONObject.put("type", "upload_image");
                    jSONObject.put("code", "end");
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

    private int getFileSegmentSize(int i10) {
        return i10 * 1024;
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
                if (!jSONObject.has("message")) {
                    return ackOrderBean2;
                }
                ackOrderBean2.message = jSONObject.optString("message");
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

    /* JADX WARN: Code duplicated, block: B:20:0x0068  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    private String getStartOrder(InternalCloudFile internalCloudFile) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                try {
                    jSONObject.put("type", "upload_image");
                    jSONObject.put("code", "start");
                    jSONObject.put(KEY_ORDER_FILE_NAME, internalCloudFile.getName());
                    jSONObject.put("imageType", internalCloudFile.getImageType());
                    jSONObject.put(KEY_ORDER_FILE_TYPE, internalCloudFile.type);
                    jSONObject.put(KEY_ORDER_FILE_SIZE, internalCloudFile.fileSize);
                    jSONObject.put(KEY_ORDER_FILE_MD5, internalCloudFile.md5);
                    jSONObject.put("bid", this.mConfig.bid);
                    jSONObject.put("cid", this.mConfig.cid);
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

    private boolean hasNextFile() {
        List<InternalCloudFile> list = this.mUploadFiles;
        return list != null && list.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalOrderAckDispatcher(String str) {
        if (TextUtils.isEmpty(str)) {
            sendStopMessage("Upload taks is stop by internal error");
            String str2 = "order ack is null when mStatus=" + this.mStatus;
            CountlyUtil.recordErrorEvent(str2);
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
            sendStopMessage(str3);
            return;
        }
        if (TextUtils.equals(orderBean.type, "ignore")) {
            sendStopMessage(orderBean.message);
        }
        if (orderBean.isUnable()) {
            String str4 = "upload is enable: " + orderBean.code + "[" + orderBean.message + "]";
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str4);
            sendStopMessage(str4);
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
            sendStopMessage(string);
            return;
        }
        UploadTaskStatus uploadTaskStatus = this.mStatus;
        if (uploadTaskStatus == UploadTaskStatus.START_ORDER_SEND) {
            if (!orderBean.isUploadSuccess()) {
                ackStartOrder();
                return;
            }
            if (hasNextFile()) {
                this.mUploadFiles.remove(0);
            }
            UploadHandler uploadHandler = mHandler;
            if (uploadHandler != null) {
                uploadHandler.sendEmptyMessage(102);
                return;
            } else {
                CountlyUtil.recordErrorEvent("Handler is null when upload is success ack");
                return;
            }
        }
        if (uploadTaskStatus != UploadTaskStatus.END_ORDER_SEND) {
            String str5 = "upload status:" + this.mStatus + " when receive order ack. mStatus=";
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str5);
            CountlyUtil.recordErrorEvent(str5);
            return;
        }
        if (orderBean.isUploadSuccess()) {
            ackEndOrder();
            return;
        }
        String str6 = "sdk upload success but receive rom error. [type:" + orderBean.type + "][code:" + orderBean.code + "][message:" + orderBean.message + "]";
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str6);
        sendStopMessage(str6);
        CountlyUtil.recordErrorEvent(str6);
    }

    private boolean isWebSocketActive(IWebSocket iWebSocket, WebSocketManager.WebSocketType webSocketType) {
        return iWebSocket != null && iWebSocket.isConnect(webSocketType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareSendStartOrder() {
        String str = TAG;
        LogUtils.d(str, "cloud-file: sendStartOrder");
        setStatus(UploadTaskStatus.START_ORDER_SEND);
        if (!hasNextFile()) {
            UploadHandler uploadHandler = mHandler;
            if (uploadHandler != null) {
                uploadHandler.sendEmptyMessage(107);
                return;
            } else {
                CountlyUtil.recordErrorEvent("Handler is null when send MSG_TASK_COMPLETE message from sendStartOrder-1 called");
                return;
            }
        }
        InternalCloudFile internalCloudFile = this.mUploadFiles.get(0);
        if (internalCloudFile == null || !internalCloudFile.isAvailable(CloudOperation.UPLOAD)) {
            LogUtils.d(str, BaseCloudFileManager.FILTER_TAG + "upload file is null or param is not available");
            this.mUploadFiles.remove(0);
            UploadHandler uploadHandler2 = mHandler;
            if (uploadHandler2 != null) {
                uploadHandler2.sendEmptyMessage(102);
                return;
            } else {
                CountlyUtil.recordErrorEvent("Handler is null when send MSG_SEND_START_ORDER message from sendStartOrder-2 called");
                return;
            }
        }
        this.mCurrentHandleFile = internalCloudFile;
        String startOrder = getStartOrder(internalCloudFile);
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, "start order:" + startOrder);
        if (!TextUtils.isEmpty(startOrder)) {
            if (sendStartOrder(startOrder)) {
                startTimeCountDown(this.mConfig.getAckTimeout(), startOrder);
            }
        } else {
            error("create start order error");
            UploadHandler uploadHandler3 = mHandler;
            if (uploadHandler3 != null) {
                uploadHandler3.sendEmptyMessage(102);
            } else {
                CountlyUtil.recordErrorEvent("Handler is null when send MSG_SEND_START_ORDER message from sendStartOrder-3 called");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushFileToTask(InternalCloudFile internalCloudFile) {
        setStatus(UploadTaskStatus.UPLOADING);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEndOrder() {
        setStatus(UploadTaskStatus.END_ORDER_SEND);
        LogUtils.d(TAG, "cloud-file: sendFinishOrder");
        if (hasNextFile()) {
            this.mUploadFiles.remove(0);
        }
        String endOrder = getEndOrder(this.mCurrentHandleFile);
        if (!TextUtils.isEmpty(endOrder)) {
            if (sendEndOrder(endOrder)) {
                startTimeCountDown(this.mConfig.getAckTimeout(), endOrder);
            }
        } else {
            error("create end order error");
            UploadHandler uploadHandler = mHandler;
            if (uploadHandler != null) {
                uploadHandler.sendEmptyMessage(102);
            } else {
                CountlyUtil.recordErrorEvent("Handler is null when send MSG_SEND_START_ORDER message from sendEndOrder called");
            }
        }
    }

    private boolean sendStartOrder(String str) {
        IWebSocket iWebSocket = this.mWebSocket;
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_UPLOAD;
        if (!isWebSocketActive(iWebSocket, webSocketType)) {
            LogUtils.d(TAG, "cloud-file: upload task: upload web-socket is not active: create socket");
            mHandler.sendEmptyMessage(105);
            return false;
        }
        IWebSocket iWebSocket2 = this.mWebSocket;
        if (iWebSocket2 == null) {
            CountlyUtil.recordErrorEvent("WebSocket is null when sendStartOrder called");
            return true;
        }
        iWebSocket2.sendTextMessage(webSocketType, str);
        LogUtils.d(TAG, "cloud-file: order: " + str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStopMessage(String str) {
        UploadHandler uploadHandler = mHandler;
        if (uploadHandler == null) {
            CountlyUtil.recordErrorEvent("Handler is null when sendStopMessage called");
            return;
        }
        Message messageObtainMessage = uploadHandler.obtainMessage();
        messageObtainMessage.what = 101;
        messageObtainMessage.obj = str;
        mHandler.sendMessage(messageObtainMessage);
    }

    private void setStatus(UploadTaskStatus uploadTaskStatus) {
        this.mStatus = uploadTaskStatus;
    }

    private void stopTask() {
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "upload task is stop");
        cancelTimeCountDown();
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
        UploadHandler uploadHandler = mHandler;
        if (uploadHandler != null) {
            uploadHandler.removeCallbacksAndMessages(null);
            mHandler.getLooper().quit();
            mHandler = null;
        }
        this.mWebSocket = null;
        this.mListener = null;
        setStatus(UploadTaskStatus.IDLE);
    }

    @Override // com.haima.hmcp.cloud.ITask
    public int getStatus() {
        LogUtils.d(TAG, "cloud-file: upload task status: " + this.mStatus);
        return 0;
    }

    @Override // com.haima.hmcp.cloud.ITask
    public boolean isRunning() {
        return this.mStatus != UploadTaskStatus.IDLE;
    }

    void orderAckDispatcher(String str) {
        cancelTimeCountDown();
        boolean z10 = this.mStatus == UploadTaskStatus.START_ORDER_SEND && this.mDevDebugConfig.ignoreStartOrderAck();
        boolean z11 = this.mStatus == UploadTaskStatus.END_ORDER_SEND && this.mDevDebugConfig.ignoreEndOrderAck();
        String str2 = TAG;
        LogUtils.d(str2, "cloud-file: ignoreStartAck: " + z10 + "; ignoreEndAck: " + z11);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cloud-file: receiver order ack: ");
        sb2.append(str);
        LogUtils.d(str2, sb2.toString());
        if (z10) {
            return;
        }
        if (!z11) {
            cancelTimeCountDown();
        }
        UploadHandler uploadHandler = mHandler;
        if (uploadHandler != null) {
            Message messageObtainMessage = uploadHandler.obtainMessage();
            messageObtainMessage.what = 109;
            messageObtainMessage.obj = str;
            if (z11) {
                mHandler.sendMessageDelayed(messageObtainMessage, this.mConfig.getAckTimeout() * 4);
            } else {
                mHandler.sendMessage(messageObtainMessage);
            }
        }
    }

    @Override // com.haima.hmcp.cloud.ITask
    public void start(List<InternalCloudFile> list, IWorkListener iWorkListener) {
        this.mListener = iWorkListener;
        if (list == null || list.size() == 0) {
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "file list is null or size = 0");
            sendStopMessage("file list is null or size = 0");
            return;
        }
        setStatus(UploadTaskStatus.INIT);
        List<InternalCloudFile> list2 = this.mUploadFiles;
        if (list2 == null) {
            this.mUploadFiles = new ArrayList();
        } else {
            list2.clear();
        }
        this.mUploadFiles.addAll(list);
        mHandler.sendEmptyMessage(102);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", "upload_config");
            jSONObject.put(Constants.FILE_SEGMENT_COEFFICIENT, this.mConfig.getFileSegmentCoefficient());
            jSONObject.put("file_segment_size", this.fileSegmentSize);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_UPLOAD_STATUS, jSONObject.toString());
    }

    @Override // com.haima.hmcp.cloud.ITask
    public void stop() {
        sendStopMessage("cancel called");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stop(String str) {
        String str2 = TAG;
        LogUtils.d(str2, BaseCloudFileManager.FILTER_TAG + ("upload is stop: " + str));
        IWorkListener iWorkListener = this.mListener;
        if (iWorkListener != null) {
            iWorkListener.onStop(0, str, this.mUploadFiles);
        }
        stopTask();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.haima.hmcp.cloud.CountDownTimerWrapper
    public void onTimeOut(String str) {
        String str2;
        UploadTaskStatus uploadTaskStatus = this.mStatus;
        UploadTaskStatus uploadTaskStatus2 = UploadTaskStatus.START_ORDER_SEND;
        if (uploadTaskStatus != uploadTaskStatus2 && uploadTaskStatus != UploadTaskStatus.END_ORDER_SEND) {
            CountlyUtil.recordErrorEvent("unknow upload status when onTimeOut, mStatus=" + this.mStatus);
            sendStopMessage("Upload stop by internal error");
            LogUtils.d(TAG, "cloud-file: upload status is wrong when onTimeOut, mStatus=" + this.mStatus);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            String str3 = this.mStatus == uploadTaskStatus2 ? "start order is empty when onTimeOut" : "end order is empty when onTimeOut";
            CountlyUtil.recordErrorEvent(str3);
            sendStopMessage(str3);
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str3);
            return;
        }
        if (!(this.mStatus == uploadTaskStatus2 ? allowResendStartOrder() : allowResendEndOrder())) {
            String str4 = this.mStatus == uploadTaskStatus2 ? "start order ack is time out" : "end order ack is time out";
            CountlyUtil.recordErrorEvent(str4);
            sendStopMessage(str4);
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str4);
            return;
        }
        if (this.mStatus == uploadTaskStatus2) {
            str2 = "start order ack is timeout and retry, retry count:" + this.sendStartOrderCount;
        } else {
            str2 = "end order ack is timeout and retry, retry count:" + this.sendEndOrderCount;
        }
        LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + str2);
        if (this.mStatus == uploadTaskStatus2 ? sendStartOrder(str) : sendEndOrder(str)) {
            startTimeCountDown(this.mConfig.getAckTimeout(), str);
        }
    }

    private boolean sendEndOrder(String str) {
        IWebSocket iWebSocket = this.mWebSocket;
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_UPLOAD;
        if (!isWebSocketActive(iWebSocket, webSocketType)) {
            sendStopMessage("upload task: upload web-socket is not active");
            LogUtils.d(TAG, BaseCloudFileManager.FILTER_TAG + "upload task: upload web-socket is not active");
            return false;
        }
        IWebSocket iWebSocket2 = this.mWebSocket;
        if (iWebSocket2 != null) {
            iWebSocket2.sendTextMessage(webSocketType, str);
            LogUtils.d(TAG, "cloud-file: order: " + str);
            return true;
        }
        CountlyUtil.recordErrorEvent("WebSocket is null when sendEndOrder called");
        return true;
    }
}
