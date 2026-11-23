package com.tencent.cos.task;

import com.tencent.cos.COSConfig;
import com.tencent.cos.common.Const;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.GetObjectResult;
import com.tencent.cos.network.COSRetryHandler;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.task.listener.IDownloadTaskListener;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.utils.QLog;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Map;
import net.lingala.zip4j.util.e;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadTask extends Task {
    private static final String TAG = "com.tencent.cos.task.DownloadTask";
    private boolean break_download_flag;
    private String downloadUrl;
    private String localPath;

    public DownloadTask(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        super(httpRequest, cOSConfig, okHttpClient);
        this.break_download_flag = false;
        this.downloadUrl = httpRequest.getDownloadUrl();
        this.localPath = httpRequest.getSavePath();
    }

    private boolean makeDir(String str) {
        File file = new File(str);
        if (file.exists()) {
            return true;
        }
        return file.mkdirs();
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doGetRequest() {
        long length;
        this.callTask = null;
        this.isCancelled = false;
        try {
            Request.Builder builderUrl = new Request.Builder().url(this.downloadUrl);
            for (Map.Entry<String, String> entry : this.httpRequest.getHeaders().entrySet()) {
                builderUrl = builderUrl.header(entry.getKey(), entry.getValue());
            }
            this.callTask = this.okHttpClient.newCall(builderUrl.get().build());
            Response responseExecute = this.callTask.execute();
            long contentLength = responseExecute.body().getContentLength();
            responseExecute.body().close();
            String fileName = getFileName(this.downloadUrl);
            makeDir(this.localPath);
            String str = fileName != null ? this.localPath + e.F0 + fileName : this.localPath + e.F0 + String.valueOf(System.currentTimeMillis());
            File file = new File(str);
            if (file.exists()) {
                length = file.length();
            } else {
                try {
                    file.createNewFile();
                    file.setReadable(true);
                    file.setWritable(true);
                } catch (IOException e10) {
                    QLog.w(TAG, e10.getMessage(), e10);
                }
                length = 0;
            }
            long j10 = !this.break_download_flag ? 0L : length;
            QLog.w(TAG, "offset =" + j10 + " ;path =" + str + "; filelen =" + contentLength);
            return downloadSlice(j10, contentLength, str);
        } catch (Exception e11) {
            String str2 = TAG;
            QLog.w(str2, "connection exception" + e11.getMessage(), e11);
            if (this.isCancelled) {
                ITaskStateListener iTaskStateListener = this.taskStateListener;
                if (iTaskStateListener != null) {
                    iTaskStateListener.onCancel();
                }
                GetObjectResult getObjectResult = new GetObjectResult();
                getObjectResult.code = Const.ERROR_CLIENT_EXCEPTION.getCode();
                getObjectResult.msg = " task is canceled";
                getObjectResult.downloadUrl = this.downloadUrl;
                getObjectResult.localPath = this.localPath;
                if (this.httpRequest.getListener() != null) {
                    ((IDownloadTaskListener) this.httpRequest.getListener()).onCancel(this.httpRequest.getRequest(), getObjectResult);
                }
                QLog.w(str2, "task: " + this.httpRequest.getRequest().getRequestId() + " canceled", e11.getCause());
                return getObjectResult;
            }
            if (!COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e11)) {
                GetObjectResult getObjectResult2 = new GetObjectResult();
                getObjectResult2.code = Const.ERROR_OTHER_EXCEPTION.getCode();
                getObjectResult2.msg = e11.getMessage();
                getObjectResult2.downloadUrl = this.downloadUrl;
                getObjectResult2.localPath = this.localPath;
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), getObjectResult2);
                }
                QLog.w(str2, e11.getMessage(), e11);
                return getObjectResult2;
            }
            ITaskStateListener iTaskStateListener2 = this.taskStateListener;
            if (iTaskStateListener2 != null) {
                iTaskStateListener2.onRetry();
            }
            this.currentRetryCount++;
            QLog.w(str2, e11.getMessage() + ";retry =" + this.currentRetryCount, e11);
            return doGetRequest();
        }
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doPostRequest() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x0254 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x01eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0246 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x01a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x025f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x023b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x0198 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0136 A[Catch: all -> 0x0250, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x013a A[Catch: all -> 0x0250, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x015e A[Catch: all -> 0x0250, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01ad A[Catch: all -> 0x0250, TRY_ENTER, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x01bb A[Catch: all -> 0x0250, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01bf A[Catch: all -> 0x0250, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0200 A[Catch: all -> 0x0250, TRY_ENTER, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0223 A[Catch: all -> 0x0250, TryCatch #9 {all -> 0x0250, blocks: (B:52:0x0118, B:54:0x0136, B:56:0x013a, B:57:0x013d, B:59:0x015e, B:60:0x016f, B:72:0x01ad, B:74:0x01bb, B:76:0x01bf, B:77:0x01c2, B:89:0x0200, B:91:0x0223, B:92:0x0232), top: B:130:0x0118 }] */
    protected COSResult downloadSlice(long j10, long j11, String str) throws Throwable {
        Throwable th;
        RandomAccessFile randomAccessFile;
        String str2;
        GetObjectResult getObjectResult;
        ITaskStateListener iTaskStateListener;
        ITaskStateListener iTaskStateListener2;
        GetObjectResult getObjectResult2;
        InputStream inputStream = null;
        this.callTask = null;
        this.isCancelled = false;
        try {
            Request.Builder builderUrl = new Request.Builder().url(this.downloadUrl);
            for (Map.Entry<String, String> entry : this.httpRequest.getHeaders().entrySet()) {
                builderUrl = builderUrl.header(entry.getKey(), entry.getValue());
            }
            this.callTask = this.okHttpClient.newCall(builderUrl.header("Range", "bytes=" + j10 + "-").get().build());
            byte[] bArr = new byte[1024];
            InputStream inputStreamByteStream = this.callTask.execute().body().byteStream();
            try {
                try {
                    try {
                        randomAccessFile = new RandomAccessFile(str, e.f94694e0);
                        try {
                            randomAccessFile.seek(j10);
                            IDownloadTaskListener iDownloadTaskListener = (IDownloadTaskListener) this.httpRequest.getListener();
                            long j12 = 0;
                            while (true) {
                                int i10 = inputStreamByteStream.read(bArr, 0, 1024);
                                if (i10 == -1 || j12 > j11) {
                                    break;
                                }
                                randomAccessFile.write(bArr, 0, i10);
                                long j13 = j12 + ((long) i10);
                                if (iDownloadTaskListener != null) {
                                    iDownloadTaskListener.onProgress(this.httpRequest.getRequest(), j13 + j10, j11);
                                }
                                j12 = j13;
                            }
                            GetObjectResult getObjectResult3 = new GetObjectResult();
                            getObjectResult3.code = 0;
                            getObjectResult3.msg = "success";
                            getObjectResult3.downloadUrl = this.downloadUrl;
                            getObjectResult3.localPath = this.localPath;
                            if (this.httpRequest.getListener() != null) {
                                this.httpRequest.getListener().onSuccess(this.httpRequest.getRequest(), getObjectResult3);
                            }
                            ITaskStateListener iTaskStateListener3 = this.taskStateListener;
                            if (iTaskStateListener3 != null) {
                                iTaskStateListener3.onSendFinish();
                            }
                            try {
                                inputStreamByteStream.close();
                            } catch (IOException e10) {
                                e10.getMessage();
                            }
                            try {
                                randomAccessFile.close();
                            } catch (IOException e11) {
                                e11.getMessage();
                            }
                            return getObjectResult3;
                        } catch (Exception e12) {
                            e = e12;
                            inputStream = inputStreamByteStream;
                            try {
                                str2 = TAG;
                                QLog.w(str2, "connection exception " + e.getMessage(), e);
                                if (this.isCancelled) {
                                    iTaskStateListener2 = this.taskStateListener;
                                    if (iTaskStateListener2 != null) {
                                        iTaskStateListener2.onCancel();
                                    }
                                    getObjectResult2 = new GetObjectResult();
                                    getObjectResult2.code = Const.ERROR_CLIENT_EXCEPTION.getCode();
                                    getObjectResult2.msg = "task is canceled";
                                    getObjectResult2.downloadUrl = this.downloadUrl;
                                    getObjectResult2.localPath = this.localPath;
                                    if (this.httpRequest.getListener() != null) {
                                        ((IDownloadTaskListener) this.httpRequest.getListener()).onCancel(this.httpRequest.getRequest(), getObjectResult2);
                                    }
                                    QLog.w(str2, "task: " + this.httpRequest.getRequest().getRequestId() + " canceled", e.getCause());
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e13) {
                                            e13.getMessage();
                                        }
                                    }
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException e14) {
                                            e14.getMessage();
                                        }
                                    }
                                    return getObjectResult2;
                                }
                                if (COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e)) {
                                    getObjectResult = new GetObjectResult();
                                    getObjectResult.code = Const.ERROR_OTHER_EXCEPTION.getCode();
                                    getObjectResult.msg = e.getMessage();
                                    getObjectResult.downloadUrl = this.downloadUrl;
                                    getObjectResult.localPath = this.localPath;
                                    if (this.httpRequest.getListener() != null) {
                                        this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), getObjectResult);
                                    }
                                    QLog.w(str2, e.getMessage(), e);
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e15) {
                                            e15.getMessage();
                                        }
                                    }
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                        } catch (IOException e16) {
                                            e16.getMessage();
                                        }
                                    }
                                    return getObjectResult;
                                }
                                iTaskStateListener = this.taskStateListener;
                                if (iTaskStateListener != null) {
                                    iTaskStateListener.onRetry();
                                }
                                this.currentRetryCount++;
                                QLog.w(str2, e.getMessage() + ";retry =" + this.currentRetryCount, e);
                                COSResult cOSResultDownloadSlice = downloadSlice(j10, j11, str);
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e17) {
                                        e17.getMessage();
                                    }
                                }
                                if (randomAccessFile != null) {
                                    try {
                                        randomAccessFile.close();
                                    } catch (IOException e18) {
                                        e18.getMessage();
                                    }
                                }
                                return cOSResultDownloadSlice;
                            } catch (Throwable th2) {
                                th = th2;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e19) {
                                        e19.getMessage();
                                    }
                                }
                                if (randomAccessFile != null) {
                                    throw th;
                                }
                                try {
                                    randomAccessFile.close();
                                    throw th;
                                } catch (IOException e20) {
                                    e20.getMessage();
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            inputStream = inputStreamByteStream;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (randomAccessFile != null) {
                                throw th;
                            }
                            randomAccessFile.close();
                            throw th;
                        }
                    } catch (Exception e21) {
                        e = e21;
                        randomAccessFile = null;
                        inputStream = inputStreamByteStream;
                        str2 = TAG;
                        QLog.w(str2, "connection exception " + e.getMessage(), e);
                        if (this.isCancelled) {
                            iTaskStateListener2 = this.taskStateListener;
                            if (iTaskStateListener2 != null) {
                                iTaskStateListener2.onCancel();
                            }
                            getObjectResult2 = new GetObjectResult();
                            getObjectResult2.code = Const.ERROR_CLIENT_EXCEPTION.getCode();
                            getObjectResult2.msg = "task is canceled";
                            getObjectResult2.downloadUrl = this.downloadUrl;
                            getObjectResult2.localPath = this.localPath;
                            if (this.httpRequest.getListener() != null) {
                                ((IDownloadTaskListener) this.httpRequest.getListener()).onCancel(this.httpRequest.getRequest(), getObjectResult2);
                            }
                            QLog.w(str2, "task: " + this.httpRequest.getRequest().getRequestId() + " canceled", e.getCause());
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            return getObjectResult2;
                        }
                        if (COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e)) {
                            getObjectResult = new GetObjectResult();
                            getObjectResult.code = Const.ERROR_OTHER_EXCEPTION.getCode();
                            getObjectResult.msg = e.getMessage();
                            getObjectResult.downloadUrl = this.downloadUrl;
                            getObjectResult.localPath = this.localPath;
                            if (this.httpRequest.getListener() != null) {
                                this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), getObjectResult);
                            }
                            QLog.w(str2, e.getMessage(), e);
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            return getObjectResult;
                        }
                        iTaskStateListener = this.taskStateListener;
                        if (iTaskStateListener != null) {
                            iTaskStateListener.onRetry();
                        }
                        this.currentRetryCount++;
                        QLog.w(str2, e.getMessage() + ";retry =" + this.currentRetryCount, e);
                        COSResult cOSResultDownloadSlice2 = downloadSlice(j10, j11, str);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        return cOSResultDownloadSlice2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    randomAccessFile = null;
                }
            } catch (Exception e22) {
                e = e22;
            }
        } catch (Exception e23) {
            e = e23;
            randomAccessFile = null;
        } catch (Throwable th5) {
            th = th5;
            randomAccessFile = null;
        }
    }

    protected String getFileName(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(e.F0);
        int iIndexOf = str.indexOf("?");
        if (iIndexOf <= 0) {
            iIndexOf = str.length();
        }
        return str.substring(iLastIndexOf + 1, iIndexOf);
    }

    @Override // com.tencent.cos.task.Task
    public boolean pause() {
        this.break_download_flag = true;
        return true;
    }
}
