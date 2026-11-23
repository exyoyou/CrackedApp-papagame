package com.tencent.cos.task;

import com.sigmob.sdk.downloader.core.c;
import com.tencent.cos.COSConfig;
import com.tencent.cos.common.COSHttpRequestHead;
import com.tencent.cos.common.COSHttpRequstBody;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.cos.common.Const;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.PutObjectRequest;
import com.tencent.cos.model.PutObjectResult;
import com.tencent.cos.network.COSRetryHandler;
import com.tencent.cos.network.HttpRequest;
import com.tencent.cos.network.HttpResponse;
import com.tencent.cos.network.HttpResponseHandler;
import com.tencent.cos.task.listener.ITaskStateListener;
import com.tencent.cos.task.listener.IUploadTaskListener;
import com.tencent.cos.task.slice.FileSlicePart;
import com.tencent.cos.task.slice.SlicePart;
import com.tencent.cos.utils.FileUtils;
import com.tencent.cos.utils.QLog;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
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
public class SliceUploadTask extends Task {
    private static final String TAG = "com.tencent.cos.task.SliceUploadTask";

    public SliceUploadTask(HttpRequest httpRequest, COSConfig cOSConfig, OkHttpClient okHttpClient) {
        super(httpRequest, cOSConfig, okHttpClient);
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doGetRequest() {
        return null;
    }

    @Override // com.tencent.cos.task.Task
    public COSResult doPostRequest() throws Throwable {
        FileSlicePart fileSlicePart = new FileSlicePart();
        int i10 = 0;
        this.isCancelled = false;
        try {
            PutObjectRequest putObjectRequest = (PutObjectRequest) this.httpRequest.getRequest();
            String srcPath = putObjectRequest.getSrcPath();
            String str = putObjectRequest.getsha();
            String str2 = fileSlicePart.getDirPath() + File.separator + FileUtils.getFileName(srcPath) + ".tmp";
            File file = new File(str2);
            while (true) {
                if (!file.exists()) {
                    QLog.w(TAG, "开始分片上传");
                    PutObjectResult putObjectResult = (PutObjectResult) sliceUpload(this.httpRequest, 0L, 0L);
                    int i11 = putObjectResult.code;
                    if (i11 != 0) {
                        if (this.httpRequest.getListener() != null) {
                            this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), putObjectResult);
                        }
                        return putObjectResult;
                    }
                    if (i11 != 0 || putObjectResult.session != null) {
                        prepareFileSlice(putObjectRequest, putObjectResult, fileSlicePart);
                        fileSlicePart.saveFileSlicePart(str2);
                        break;
                    }
                    if (this.httpRequest.getListener() != null) {
                        this.httpRequest.getListener().onSuccess(this.httpRequest.getRequest(), putObjectResult);
                    }
                    return putObjectResult;
                }
                fileSlicePart.loadFileSlicePart(str2);
                if (fileSlicePart.slice_init_flag) {
                    break;
                }
                String str3 = srcPath;
                fileSlicePart.deleteFile(str2);
                srcPath = str3;
            }
            QLog.w(TAG, "开始上传data分片");
            String str4 = fileSlicePart.session;
            long filesize = putObjectRequest.getFilesize();
            String str5 = str;
            while (i10 < fileSlicePart.sliceParts.size()) {
                if (!fileSlicePart.sliceParts.get(i10).getOverFlag()) {
                    long offset = fileSlicePart.sliceParts.get(i10).getOffset();
                    int sliceSize = fileSlicePart.sliceParts.get(i10).getSliceSize();
                    String str6 = fileSlicePart.sha;
                    long j10 = offset;
                    while (j10 < filesize) {
                        HttpRequest httpRequest = this.httpRequest;
                        byte[] fileContentByte = FileUtils.getFileContentByte(srcPath, j10, sliceSize);
                        long j11 = j10;
                        String str7 = srcPath;
                        int i12 = i10;
                        HttpRequest httpRequestUploadSliceDataRequset_4 = uploadSliceDataRequset_4(httpRequest, fileContentByte, str4, j10, str6);
                        this.httpRequest = httpRequestUploadSliceDataRequset_4;
                        PutObjectResult putObjectResult2 = (PutObjectResult) sliceUpload(httpRequestUploadSliceDataRequset_4, j11, filesize);
                        if (putObjectResult2.code != 0) {
                            if (this.httpRequest.getListener() != null) {
                                this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), putObjectResult2);
                            }
                            ITaskStateListener iTaskStateListener = this.taskStateListener;
                            if (iTaskStateListener != null) {
                                iTaskStateListener.onFail();
                            }
                            return putObjectResult2;
                        }
                        j10 = j11 + ((long) sliceSize);
                        fileSlicePart.updateSlicePart(i12, true);
                        fileSlicePart.saveFileSlicePart(str2);
                        i10 = i12 + 1;
                        srcPath = str7;
                    }
                    str5 = str6;
                    srcPath = srcPath;
                }
            }
            String str8 = TAG;
            QLog.w(str8, "上传finish分片");
            HttpRequest httpRequestUploadSliceFinishRequset_4 = uploadSliceFinishRequset_4(this.httpRequest, str4, filesize, str5);
            this.httpRequest = httpRequestUploadSliceFinishRequset_4;
            PutObjectResult putObjectResult3 = (PutObjectResult) sliceUpload(httpRequestUploadSliceFinishRequset_4, 0L, 0L);
            if (putObjectResult3.code != 0) {
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), putObjectResult3);
                }
                ITaskStateListener iTaskStateListener2 = this.taskStateListener;
                if (iTaskStateListener2 != null) {
                    iTaskStateListener2.onFail();
                }
                return putObjectResult3;
            }
            QLog.w(str8, "上传list分片");
            HttpRequest httpRequestUploadSliceListRequset_4 = uploadSliceListRequset_4(this.httpRequest);
            this.httpRequest = httpRequestUploadSliceListRequset_4;
            PutObjectResult putObjectResult4 = (PutObjectResult) sliceUpload(httpRequestUploadSliceListRequset_4, 0L, 0L);
            if (putObjectResult4.code == 0) {
                if (this.httpRequest.getListener() != null) {
                    this.httpRequest.getListener().onSuccess(this.httpRequest.getRequest(), putObjectResult4);
                }
            } else if (this.httpRequest.getListener() != null) {
                this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), putObjectResult4);
            }
            ITaskStateListener iTaskStateListener3 = this.taskStateListener;
            if (iTaskStateListener3 != null) {
                iTaskStateListener3.onSendFinish();
            }
            fileSlicePart.deleteFile(str2);
            return putObjectResult4;
        } catch (Exception e10) {
            if (this.isCancelled) {
                ITaskStateListener iTaskStateListener4 = this.taskStateListener;
                if (iTaskStateListener4 != null) {
                    iTaskStateListener4.onCancel();
                }
                HttpResponse httpResponse = new HttpResponse("{code:" + Const.ERROR_CLIENT_EXCEPTION.getCode() + ",message:任务取消成功}");
                httpResponse.setOperateType(this.httpRequest.getOperatorType());
                COSResult cOSResult = HttpResponseHandler.parse(httpResponse);
                if (this.httpRequest.getListener() != null) {
                    ((IUploadTaskListener) this.httpRequest.getListener()).onCancel(this.httpRequest.getRequest(), cOSResult);
                }
                QLog.w(TAG, " task " + this.httpRequest.getRequest().getRequestId() + "  is canceled");
                return cOSResult;
            }
            if (COSRetryHandler.retryRequest(this.currentRetryCount, this.config.getMaxRetryCount(), e10)) {
                ITaskStateListener iTaskStateListener5 = this.taskStateListener;
                if (iTaskStateListener5 != null) {
                    iTaskStateListener5.onRetry();
                }
                this.currentRetryCount++;
                QLog.w(TAG, e10.getMessage() + ";retry =" + this.currentRetryCount, e10);
                return doGetRequest();
            }
            ITaskStateListener iTaskStateListener6 = this.taskStateListener;
            if (iTaskStateListener6 != null) {
                iTaskStateListener6.onFail();
            }
            HttpResponse httpResponse2 = new HttpResponse("{code:" + Const.ERROR_OTHER_EXCEPTION.getCode() + ",message:" + e10.getMessage() + "}");
            httpResponse2.setOperateType(this.httpRequest.getOperatorType());
            COSResult cOSResult2 = HttpResponseHandler.parse(httpResponse2);
            if (this.httpRequest.getListener() != null) {
                this.httpRequest.getListener().onFailed(this.httpRequest.getRequest(), cOSResult2);
            }
            QLog.w(TAG, e10.getMessage(), e10);
            return cOSResult2;
        }
    }

    protected void prepareFileSlice(PutObjectRequest putObjectRequest, PutObjectResult putObjectResult, FileSlicePart fileSlicePart) {
        fileSlicePart.appid = putObjectRequest.getAppid();
        fileSlicePart.bucket = putObjectRequest.getBucket();
        fileSlicePart.cosPath = putObjectRequest.getCosPath();
        fileSlicePart.srcPath = putObjectRequest.getSrcPath();
        fileSlicePart.biz_attr = putObjectRequest.getBiz_attr();
        fileSlicePart.insertOnly = putObjectRequest.getInsertOnly();
        fileSlicePart.sha = putObjectRequest.getsha();
        fileSlicePart.sign = putObjectRequest.getSign();
        fileSlicePart.requestId = putObjectRequest.getRequestId();
        fileSlicePart.sliceSize = putObjectResult.slice_size;
        fileSlicePart.session = putObjectResult.session;
        fileSlicePart.slice_init_flag = true;
        long filesize = putObjectRequest.getFilesize();
        ArrayList<SlicePart> arrayList = new ArrayList<>();
        int i10 = fileSlicePart.sliceSize;
        int i11 = (int) ((filesize + ((long) (i10 - 1))) / ((long) i10));
        for (int i12 = 0; i12 < i11; i12++) {
            SlicePart slicePart = new SlicePart();
            slicePart.setOffset(fileSlicePart.sliceSize * i12);
            slicePart.setSliceSize(fileSlicePart.sliceSize);
            slicePart.setOverFlag(false);
            arrayList.add(i12, slicePart);
        }
        fileSlicePart.sliceParts = arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:46:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:49:0x0241  */
    /* JADX WARN: Code duplicated, block: B:51:0x024f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0253  */
    /* JADX WARN: Code duplicated, block: B:56:0x0280  */
    /* JADX WARN: Code duplicated, block: B:58:0x0284  */
    protected COSResult sliceUpload(HttpRequest httpRequest, long j10, long j11) {
        SliceUploadTask sliceUploadTask;
        ITaskStateListener iTaskStateListener;
        ITaskStateListener iTaskStateListener2;
        ITaskStateListener iTaskStateListener3;
        int i10;
        RequestBody requestBodyBuild;
        this.callTask = null;
        try {
            Request.Builder builderUrl = new Request.Builder().url(getDomainUrl(httpRequest));
            Request.Builder builderHeader = builderUrl;
            for (Map.Entry<String, String> entry : httpRequest.getHeaders().entrySet()) {
                builderHeader = builderHeader.header(entry.getKey(), entry.getValue());
            }
            String contentType = httpRequest.getContentType();
            COSHttpRequestHead.VALUE.getClass();
            if (contentType.equals("application/json")) {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry2 : httpRequest.getBodys().entrySet()) {
                    jSONObject.put(entry2.getKey(), entry2.getValue());
                }
                COSHttpRequestHead.VALUE.getClass();
                requestBodyBuild = RequestBody.create(MediaType.parse("application/json"), jSONObject.toString());
            } else {
                MultipartBody.Builder type = new MultipartBody.Builder().setType(MediaType.parse(httpRequest.getContentType()));
                for (Map.Entry<String, String> entry3 : httpRequest.getBodys().entrySet()) {
                    type = type.addFormDataPart(entry3.getKey(), entry3.getValue());
                }
                if (httpRequest.isUploadFlag()) {
                    try {
                        if (httpRequest.getDataFile() != null) {
                            QLog.w(TAG, "datafile");
                            i10 = 2;
                            type = type.addPart(Headers.of(c.f80446j, "form-data; name=\"" + httpRequest.getFileContent() + a.f97579g), new SimpleUploadRequestBody(httpRequest.getDataFile(), (String) null, j10, j11));
                        } else {
                            i10 = 2;
                        }
                        if (httpRequest.getDataByte() != null) {
                            QLog.w(TAG, "getDataByte");
                            String[] strArr = new String[i10];
                            strArr[0] = c.f80446j;
                            strArr[1] = "form-data; name=\"" + httpRequest.getFileContent() + a.f97579g;
                            type = type.addPart(Headers.of(strArr), new SimpleUploadRequestBody(httpRequest.getDataByte(), (String) null, j10, j11));
                        }
                        if (httpRequest.getDataStream() != null) {
                            QLog.w(TAG, "getDataStream");
                            String[] strArr2 = new String[i10];
                            strArr2[0] = c.f80446j;
                            strArr2[1] = "form-data; name=\"" + httpRequest.getFileContent() + a.f97579g;
                            type = type.addPart(Headers.of(strArr2), new SimpleUploadRequestBody(httpRequest.getDataStream(), null, httpRequest.getLength(), j10, j11));
                        }
                    } catch (Exception e10) {
                        e = e10;
                        sliceUploadTask = this;
                        if (sliceUploadTask.isCancelled) {
                            iTaskStateListener3 = sliceUploadTask.taskStateListener;
                            if (iTaskStateListener3 != null) {
                                iTaskStateListener3.onCancel();
                            }
                            HttpResponse httpResponse = new HttpResponse("{code:" + Const.ERROR_CLIENT_EXCEPTION.getCode() + ",message:任务取消成功}");
                            httpResponse.setOperateType(httpRequest.getOperatorType());
                            COSResult cOSResult = HttpResponseHandler.parse(httpResponse);
                            QLog.w(TAG, " task " + httpRequest.getRequest().getRequestId() + "  is canceled");
                            return cOSResult;
                        }
                        if (COSRetryHandler.retryRequest(sliceUploadTask.currentRetryCount, sliceUploadTask.config.getMaxRetryCount(), e)) {
                            iTaskStateListener2 = sliceUploadTask.taskStateListener;
                            if (iTaskStateListener2 != null) {
                                iTaskStateListener2.onRetry();
                            }
                            sliceUploadTask.currentRetryCount++;
                            QLog.w(TAG, e.getMessage() + ";retry =" + sliceUploadTask.currentRetryCount, e);
                            return sliceUpload(httpRequest, j10, j11);
                        }
                        iTaskStateListener = sliceUploadTask.taskStateListener;
                        if (iTaskStateListener != null) {
                            iTaskStateListener.onFail();
                        }
                        HttpResponse httpResponse2 = new HttpResponse("{code:" + Const.ERROR_OTHER_EXCEPTION.getCode() + ",message:" + e.getMessage().replace(" ", "") + "}");
                        httpResponse2.setOperateType(httpRequest.getOperatorType());
                        COSResult cOSResult2 = HttpResponseHandler.parse(httpResponse2);
                        QLog.w(TAG, e.getMessage(), e);
                        return cOSResult2;
                    }
                }
                requestBodyBuild = type.build();
            }
            sliceUploadTask = this;
            try {
                sliceUploadTask.callTask = sliceUploadTask.okHttpClient.newCall(builderHeader.post(requestBodyBuild).build());
                HttpResponse httpResponse3 = new HttpResponse(sliceUploadTask.callTask.execute());
                httpResponse3.setOperateType(httpRequest.getOperatorType());
                return HttpResponseHandler.parse(httpResponse3);
            } catch (Exception e11) {
                e = e11;
                if (sliceUploadTask.isCancelled) {
                    iTaskStateListener3 = sliceUploadTask.taskStateListener;
                    if (iTaskStateListener3 != null) {
                        iTaskStateListener3.onCancel();
                    }
                    HttpResponse httpResponse4 = new HttpResponse("{code:" + Const.ERROR_CLIENT_EXCEPTION.getCode() + ",message:任务取消成功}");
                    httpResponse4.setOperateType(httpRequest.getOperatorType());
                    COSResult cOSResult3 = HttpResponseHandler.parse(httpResponse4);
                    QLog.w(TAG, " task " + httpRequest.getRequest().getRequestId() + "  is canceled");
                    return cOSResult3;
                }
                if (COSRetryHandler.retryRequest(sliceUploadTask.currentRetryCount, sliceUploadTask.config.getMaxRetryCount(), e)) {
                    iTaskStateListener2 = sliceUploadTask.taskStateListener;
                    if (iTaskStateListener2 != null) {
                        iTaskStateListener2.onRetry();
                    }
                    sliceUploadTask.currentRetryCount++;
                    QLog.w(TAG, e.getMessage() + ";retry =" + sliceUploadTask.currentRetryCount, e);
                    return sliceUpload(httpRequest, j10, j11);
                }
                iTaskStateListener = sliceUploadTask.taskStateListener;
                if (iTaskStateListener != null) {
                    iTaskStateListener.onFail();
                }
                HttpResponse httpResponse5 = new HttpResponse("{code:" + Const.ERROR_OTHER_EXCEPTION.getCode() + ",message:" + e.getMessage().replace(" ", "") + "}");
                httpResponse5.setOperateType(httpRequest.getOperatorType());
                COSResult cOSResult4 = HttpResponseHandler.parse(httpResponse5);
                QLog.w(TAG, e.getMessage(), e);
                return cOSResult4;
            }
        } catch (Exception e12) {
            e = e12;
            sliceUploadTask = this;
        }
    }

    protected HttpRequest uploadSliceDataRequset_4(HttpRequest httpRequest, byte[] bArr, String str, long j10, String str2) {
        PutObjectRequest putObjectRequest = (PutObjectRequest) httpRequest.getRequest();
        putObjectRequest.setSliceFlag(true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        COSHttpRequstBody.KEY.getClass();
        COSHttpRequstBody.OP.getClass();
        linkedHashMap.put("op", "upload_slice_data");
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put("session", str);
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put("offset", String.valueOf(j10));
        if (str2 != null) {
            COSHttpRequstBody.KEY.getClass();
            linkedHashMap.put(COSHttpResponseKey.Data.SHA, str2);
        }
        putObjectRequest.setBodys(linkedHashMap);
        putObjectRequest.setDataByte(bArr);
        putObjectRequest.setDataFile(null);
        putObjectRequest.setDataInputStream(null);
        return new HttpRequest(putObjectRequest);
    }

    protected HttpRequest uploadSliceFinishRequset_4(HttpRequest httpRequest, String str, long j10, String str2) {
        PutObjectRequest putObjectRequest = (PutObjectRequest) httpRequest.getRequest();
        putObjectRequest.setSliceFlag(true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        COSHttpRequstBody.KEY.getClass();
        COSHttpRequstBody.OP.getClass();
        linkedHashMap.put("op", "upload_slice_finish");
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put("session", str);
        COSHttpRequstBody.KEY.getClass();
        linkedHashMap.put(COSHttpResponseKey.Data.FILESIZE, String.valueOf(j10));
        if (str2 != null) {
            COSHttpRequstBody.KEY.getClass();
            linkedHashMap.put(COSHttpResponseKey.Data.SHA, str2);
        }
        putObjectRequest.setBodys(linkedHashMap);
        putObjectRequest.setDataByte(null);
        putObjectRequest.setDataFile(null);
        putObjectRequest.setDataInputStream(null);
        return new HttpRequest(putObjectRequest);
    }

    protected HttpRequest uploadSliceListRequset_4(HttpRequest httpRequest) {
        PutObjectRequest putObjectRequest = (PutObjectRequest) httpRequest.getRequest();
        putObjectRequest.setSliceFlag(true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        COSHttpRequstBody.KEY.getClass();
        COSHttpRequstBody.OP.getClass();
        linkedHashMap.put("op", "upload_slice_list");
        putObjectRequest.setBodys(linkedHashMap);
        putObjectRequest.setDataByte(null);
        putObjectRequest.setDataFile(null);
        putObjectRequest.setDataInputStream(null);
        return new HttpRequest(putObjectRequest);
    }

    protected class SimpleUploadRequestBody extends RequestBody {
        private final int SEGMENT_SIZE;
        private String contentType;
        private byte[] dataByte;
        private File dataFile;
        private InputStream dataStream;
        private long fileLength;
        private long offset;
        private long totalLength;

        public SimpleUploadRequestBody(File file, String str, long j10, long j11) {
            this.SEGMENT_SIZE = 2048;
            this.dataStream = null;
            this.dataByte = null;
            this.contentType = "text/plain";
            this.dataFile = file;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = file.length();
            this.offset = j10;
            this.fileLength = j11;
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
                        if (SliceUploadTask.this.httpRequest.getListener() != null) {
                            ((IUploadTaskListener) SliceUploadTask.this.httpRequest.getListener()).onProgress(SliceUploadTask.this.httpRequest.getRequest(), this.offset + j10, this.fileLength);
                        }
                    }
                    if (source != null) {
                        source.close();
                    }
                } catch (Exception e10) {
                    if (SliceUploadTask.this.callTask.getCanceled() && (e10 instanceof CancellationException)) {
                        QLog.w(SliceUploadTask.TAG, "task: " + SliceUploadTask.this.httpRequest.getRequest().getRequestId() + " is cancelled");
                    } else {
                        QLog.w(SliceUploadTask.TAG, e10.getMessage(), e10);
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

        public SimpleUploadRequestBody(byte[] bArr, String str, long j10, long j11) {
            this.SEGMENT_SIZE = 2048;
            this.dataFile = null;
            this.dataStream = null;
            this.contentType = "text/plain";
            this.dataByte = bArr;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = bArr.length;
            this.offset = j10;
            this.fileLength = j11;
        }

        public SimpleUploadRequestBody(InputStream inputStream, String str, long j10, long j11, long j12) {
            this.SEGMENT_SIZE = 2048;
            this.dataFile = null;
            this.dataByte = null;
            this.contentType = "text/plain";
            this.dataStream = inputStream;
            if (str != null) {
                this.contentType = str;
            }
            this.totalLength = j10;
            this.offset = j11;
            this.fileLength = j12;
        }
    }
}
