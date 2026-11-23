package com.tencent.cos.task;

import com.sigmob.sdk.downloader.core.c;
import com.tencent.cos.COSConfig;
import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.Const;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.network.COSRetryHandler;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.network.HttpResponse;
import com.tencent.cos.network.HttpResponseHandler;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.task.listener.IUploadTaskListener;
import com.tencent.cos.utils.QLog;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.BufferedSink;
import okio.Okio;
import okio.Source;
import org.json.JSONObject;
import x.a;

/* JADX INFO: loaded from: classes2.dex */
public class UploadTask extends Task {
    private static final String TAG = "com.tencent.cos.task.UploadTask";

    public UploadTask(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        super(httpRequest, cOSConfig, okHttpClient);
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doGetRequest() {
        return null;
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doPostRequest() {
        RequestBody requestBodyBuild;
        this.callTask = null;
        this.isCancelled = false;
        try {
            Request.Builder builderUrl = new Request.Builder().url(getDomainUrl(this.httpRequest));
            for (Map.Entry<String, String> entry : this.httpRequest.getHeaders().entrySet()) {
                builderUrl = builderUrl.header(entry.getKey(), entry.getValue());
            }
            String contentType = this.httpRequest.getContentType();
            COSHttpRequestHead.VALUE.getClass();
            if (contentType.equals("application/json")) {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry2 : this.httpRequest.getBodys().entrySet()) {
                    jSONObject.put(entry2.getKey(), entry2.getValue());
                }
                COSHttpRequestHead.VALUE.getClass();
                requestBodyBuild = RequestBody.create(MediaType.parse("application/json"), jSONObject.toString());
            } else {
                MultipartBody.Builder type = new MultipartBody.Builder().setType(MediaType.parse(this.httpRequest.getContentType()));
                for (Map.Entry<String, String> entry3 : this.httpRequest.getBodys().entrySet()) {
                    type = type.addFormDataPart(entry3.getKey(), entry3.getValue());
                }
                if (this.httpRequest.isUploadFlag()) {
                    if (this.httpRequest.getDataFile() != null) {
                        type = type.addPart(Headers.of(c.f80446j, "form-data; name=\"" + this.httpRequest.getFileContent() + a.f97579g), new SimpleUploadRequestBody(this.httpRequest.getDataFile(), (String) null));
                    }
                    if (this.httpRequest.getDataByte() != null) {
                        type = type.addPart(Headers.of(c.f80446j, "form-data; name=\"" + this.httpRequest.getFileContent() + a.f97579g), new SimpleUploadRequestBody(this.httpRequest.getDataByte(), (String) null));
                    }
                    if (this.httpRequest.getDataStream() != null) {
                        type = type.addPart(Headers.of(c.f80446j, "form-data; name=\"" + this.httpRequest.getFileContent() + a.f97579g), new SimpleUploadRequestBody(this.httpRequest.getDataStream(), null, this.httpRequest.getLength()));
                    }
                }
                requestBodyBuild = type.build();
            }
            this.callTask = this.okHttpClient.newCall(builderUrl.post(requestBodyBuild).build());
            HttpResponse httpResponse = new HttpResponse(this.callTask.execute());
            httpResponse.setOperateType(this.httpRequest.getOperatorType());
            COSResult cOSResult = HttpResponseHandler.parse(httpResponse);
            if (this.httpRequest.getListener() != null) {
                if (cOSResult.code == 0) {
                    this.httpRequest.getListener().onSuccess(this.httpRequest.getRequest(), cOSResult);
                } else {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), cOSResult);
                }
            }
            ITaskStateListener iTaskStateListener = this.taskStateListener;
            if (iTaskStateListener != null) {
                iTaskStateListener.onSendFinish();
            }
            QLog.w(TAG, "completed");
            return cOSResult;
        } catch (Exception e10) {
            if (this.isCancelled) {
                ITaskStateListener iTaskStateListener2 = this.taskStateListener;
                if (iTaskStateListener2 != null) {
                    iTaskStateListener2.onCancel();
                }
                HttpResponse httpResponse2 = new HttpResponse("{code:" + Const.ERROR_CLIENT_EXCEPTION.getCode() + ",message:任务取消成功}");
                httpResponse2.setOperateType(this.httpRequest.getOperatorType());
                COSResult cOSResult2 = HttpResponseHandler.parse(httpResponse2);
                if (this.httpRequest.getListener() != null) {
                    ((IUploadTaskListener) this.httpRequest.getListener()).onCancel(this.httpRequest.getRequest(), cOSResult2);
                }
                QLog.w(TAG, " task " + this.httpRequest.getRequest().getRequestId() + "  is canceled");
                return cOSResult2;
            }
            if (COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e10)) {
                ITaskStateListener iTaskStateListener3 = this.taskStateListener;
                if (iTaskStateListener3 != null) {
                    iTaskStateListener3.onRetry();
                }
                this.currentRetryCount++;
                QLog.w(TAG, e10.getMessage() + ";retry =" + this.currentRetryCount, e10);
                return doPostRequest();
            }
            ITaskStateListener iTaskStateListener4 = this.taskStateListener;
            if (iTaskStateListener4 != null) {
                iTaskStateListener4.onFail();
            }
            HttpResponse httpResponse3 = new HttpResponse("{code:" + Const.ERROR_OTHER_EXCEPTION.getCode() + ",message:" + e10.getMessage().replace(" ", "") + "}");
            httpResponse3.setOperateType(this.httpRequest.getOperatorType());
            COSResult cOSResult3 = HttpResponseHandler.parse(httpResponse3);
            if (this.httpRequest.getListener() != null) {
                this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), cOSResult3);
            }
            QLog.w(TAG, e10.getMessage(), e10);
            return cOSResult3;
        }
    }

    protected class SimpleUploadRequestBody extends RequestBody {
        private final int SEGMENT_SIZE;
        private String contentType;
        private byte[] dataByte;
        private File dataFile;
        private InputStream dataStream;
        private long totalLength;

        public SimpleUploadRequestBody(File file, String str) {
            this.SEGMENT_SIZE = 2048;
            this.dataStream = null;
            this.dataByte = null;
            this.contentType = "text/plain";
            this.dataFile = file;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = file.length();
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.totalLength;
        }

        @Override // okhttp3.RequestBody
        /* JADX INFO: renamed from: contentType */
        public MediaType getContentType() {
            return MediaType.parse(this.contentType);
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            Source source;
            AutoCloseable autoCloseable = null;
            try {
                try {
                    InputStream inputStream = this.dataStream;
                    if (inputStream != null) {
                        source = Okio.source(inputStream);
                    } else if (this.dataByte != null) {
                        source = Okio.source(new ByteArrayInputStream(this.dataByte));
                    } else {
                        File file = this.dataFile;
                        if (file == null) {
                            throw new IllegalArgumentException("数据来源为null");
                        }
                        source = Okio.source(file);
                    }
                    long j10 = 0;
                    while (true) {
                        long j11 = this.totalLength;
                        if (j10 >= j11) {
                            break;
                        }
                        long j12 = source.read(bufferedSink.getBufferField(), Math.min(j11 - j10, 2048L));
                        if (j12 == -1) {
                            break;
                        }
                        j10 += j12;
                        bufferedSink.flush();
                        if (UploadTask.this.httpRequest.getListener() != null && !UploadTask.this.httpRequest.isSliceUpload()) {
                            ((IUploadTaskListener) UploadTask.this.httpRequest.getListener()).onProgress(UploadTask.this.httpRequest.getRequest(), j10, this.totalLength);
                        }
                    }
                    if (source != null) {
                        source.close();
                    }
                } catch (Exception e10) {
                    if (UploadTask.this.isCancelled) {
                        QLog.w(UploadTask.TAG, "task: " + UploadTask.this.httpRequest.getRequest().getRequestId() + " is cancelled");
                    } else {
                        QLog.w(UploadTask.TAG, e10.getMessage(), e10);
                    }
                    throw e10;
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    autoCloseable.close();
                }
                throw th;
            }
        }

        public SimpleUploadRequestBody(byte[] bArr, String str) {
            this.SEGMENT_SIZE = 2048;
            this.dataFile = null;
            this.dataStream = null;
            this.contentType = "text/plain";
            this.dataByte = bArr;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = bArr.length;
        }

        public SimpleUploadRequestBody(InputStream inputStream, String str, long j10) {
            this.SEGMENT_SIZE = 2048;
            this.dataFile = null;
            this.dataByte = null;
            this.contentType = "text/plain";
            this.dataStream = inputStream;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = j10;
        }
    }
}
