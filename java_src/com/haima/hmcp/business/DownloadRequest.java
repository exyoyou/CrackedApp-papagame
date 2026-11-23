package com.haima.hmcp.business;

import android.text.TextUtils;
import android.util.Log;
import com.haima.hmcp.utils.LogUtil;
import com.haima.hmcp.volley.AuthFailureError;
import com.haima.hmcp.volley.Header;
import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.ParseError;
import com.haima.hmcp.volley.Request;
import com.haima.hmcp.volley.Response;
import com.haima.hmcp.volley.ServerError;
import com.haima.hmcp.volley.toolbox.ByteArrayPool;
import com.haima.hmcp.volley.toolbox.HttpHeaderParser;
import com.haima.hmcp.volley.toolbox.HttpResponse;
import com.haima.hmcp.volley.toolbox.NetworkUtility;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadRequest extends Request<byte[]> {
    public static final String[] CONTENT_LIST_DEFAULT = {"application/octet-stream", "image/jpeg"};
    public static final String CONTENT_TYPE_JPEG = "image/jpeg";
    public static final String CONTENT_TYPE_STREAM = "application/octet-stream";
    public static final String FILTER_TAG = "download-file: ";
    private static final String HEADER_CONTENT_LENGTH = "Content-Length";
    private static final String HEADER_CONTENT_RANGE = "Content-Range";
    private static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final int READ_BUFFER = 6144;
    private static final String STREAM_TYPE = "application/octet-stream";
    private static final String TAG = "DownloadRequest";
    public List<String> mContentTypeList;
    private long mDownloadedSize;
    private String mFilePath;
    private long mFileSize;
    private long mInterval;
    private DownloadResponseListener mListener;

    public DownloadRequest(DownloadFileInfo downloadFileInfo, String str, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        if (downloadFileInfo != null) {
            this.mDownloadedSize = downloadFileInfo.getDownloadedSize();
            this.mFileSize = downloadFileInfo.getFileSize();
            this.mFilePath = downloadFileInfo.getFilePath();
            this.mInterval = downloadFileInfo.getInterval();
        }
    }

    private long getFileSize(HashMap<String, String> map) {
        String[] strArrSplit;
        long j10 = 0;
        if (!map.containsKey("Content-Range")) {
            return 0L;
        }
        String str = map.get("Content-Range");
        if (TextUtils.isEmpty(str) || !str.startsWith("bytes")) {
            return 0L;
        }
        String strTrim = str.replace("bytes", "").trim();
        String[] strArrSplit2 = strTrim.split(e.F0);
        if (strArrSplit2 != null && strTrim.length() == 2 && (strArrSplit = strArrSplit2[0].split("-")) != null && strArrSplit.length == 2) {
            j10 = Long.parseLong(strArrSplit[1]);
            String str2 = "file break-point=" + this.mDownloadedSize + "; response break-point=" + Long.parseLong(strArrSplit[0]);
            LogUtil.d(TAG, "download-file: " + str2);
        }
        int iIndexOf = strTrim.indexOf(e.F0);
        if (iIndexOf <= 0) {
            return j10;
        }
        try {
            return Long.parseLong(strTrim.substring(iIndexOf + 1));
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    private boolean isSupport(String str) {
        if (this.mContentTypeList.size() == 1 && "all".equals(this.mContentTypeList.get(0))) {
            return true;
        }
        return this.mContentTypeList.contains(str);
    }

    private HashMap<String, String> parseHeaders(HttpResponse httpResponse) {
        HashMap<String, String> map = new HashMap<>();
        List<Header> headers = httpResponse.getHeaders();
        StringBuffer stringBuffer = new StringBuffer();
        for (Header header : headers) {
            String name = header.getName();
            String value = header.getValue();
            map.put(name, value);
            String str = "header: " + name + "; value: " + value;
            stringBuffer.append("[");
            stringBuffer.append(str);
            stringBuffer.append("]");
            LogUtil.d(TAG, "download-file: " + str);
        }
        if (this.mListener != null) {
            LogUtil.d(TAG, "download-file: download response headers: " + ((Object) stringBuffer));
            this.mListener.onHeaders(map);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.haima.hmcp.volley.Request
    public void deliverResponse(byte[] bArr) {
    }

    @Override // com.haima.hmcp.volley.Request
    public Map<String, String> getHeaders() throws AuthFailureError {
        HashMap map = new HashMap();
        map.put("Range", "bytes=" + this.mDownloadedSize + "-");
        LogUtil.d(TAG, "download-file: request Range bytes=" + this.mDownloadedSize + "-");
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:128:0x0304 A[Catch: IOException -> 0x0356, TryCatch #4 {IOException -> 0x0356, blocks: (B:109:0x0291, B:111:0x02a2, B:112:0x02ab, B:114:0x02b1, B:126:0x02d1, B:128:0x0304, B:130:0x030a, B:132:0x0310, B:134:0x0314, B:135:0x0317, B:137:0x031b, B:139:0x0348, B:143:0x0355, B:140:0x034e, B:142:0x0352, B:125:0x02cc, B:123:0x02c8), top: B:171:0x01e0, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0352 A[Catch: IOException -> 0x0356, TryCatch #4 {IOException -> 0x0356, blocks: (B:109:0x0291, B:111:0x02a2, B:112:0x02ab, B:114:0x02b1, B:126:0x02d1, B:128:0x0304, B:130:0x030a, B:132:0x0310, B:134:0x0314, B:135:0x0317, B:137:0x031b, B:139:0x0348, B:143:0x0355, B:140:0x034e, B:142:0x0352, B:125:0x02cc, B:123:0x02c8), top: B:171:0x01e0, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x038b  */
    /* JADX WARN: Code duplicated, block: B:169:0x02c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:? A[Catch: IOException -> 0x0356, SYNTHETIC, TRY_LEAVE, TryCatch #4 {IOException -> 0x0356, blocks: (B:109:0x0291, B:111:0x02a2, B:112:0x02ab, B:114:0x02b1, B:126:0x02d1, B:128:0x0304, B:130:0x030a, B:132:0x0310, B:134:0x0314, B:135:0x0317, B:137:0x031b, B:139:0x0348, B:143:0x0355, B:140:0x034e, B:142:0x0352, B:125:0x02cc, B:123:0x02c8), top: B:171:0x01e0, inners: #3 }] */
    @Override // com.haima.hmcp.volley.Request
    public byte[] handleResponse(HttpResponse httpResponse, ByteArrayPool byteArrayPool) throws Throwable {
        String str;
        String str2;
        DownloadResponseListener downloadResponseListener;
        String str3;
        String str4;
        DownloadResponseListener downloadResponseListener2;
        String str5;
        String str6;
        String str7 = "An incomplete file";
        String str8 = ", fileSize=";
        String str9 = "complete download size is not match with source file size, downloadSize=";
        String str10 = TAG;
        LogUtil.d(str10, "download-file: content-type list: " + this.mContentTypeList);
        HashMap<String, String> headers = parseHeaders(httpResponse);
        int statusCode = httpResponse.getStatusCode();
        if (!(statusCode == 206)) {
            String str11 = "error response status code: " + statusCode;
            LogUtil.d(str10, "download-file: " + str11);
            DownloadResponseListener downloadResponseListener3 = this.mListener;
            if (downloadResponseListener3 != null) {
                downloadResponseListener3.onError(1006, "Bad response", str11);
            }
            cancel();
            byte[] bArr = new byte[0];
            try {
                try {
                    try {
                        return NetworkUtility.responseToBytes(httpResponse, byteArrayPool);
                    } catch (Throwable unused) {
                        return bArr;
                    }
                } catch (ServerError e10) {
                    e10.printStackTrace();
                    return bArr;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
                return bArr;
            }
        }
        if (!isSupport(headers.get("Content-Type"))) {
            String str12 = "not support file type: " + headers.get("Content-Type");
            LogUtil.d(str10, "download-file: " + str12);
            DownloadResponseListener downloadResponseListener4 = this.mListener;
            if (downloadResponseListener4 != null) {
                downloadResponseListener4.onError(1006, "Bad response", str12);
            }
            cancel();
            byte[] bArr2 = new byte[0];
            try {
                try {
                    return NetworkUtility.responseToBytes(httpResponse, byteArrayPool);
                } catch (Throwable unused2) {
                    return bArr2;
                }
            } catch (ServerError e12) {
                e12.printStackTrace();
                return bArr2;
            } catch (IOException e13) {
                e13.printStackTrace();
                return bArr2;
            }
        }
        LogUtil.d(str10, "download-file: " + headers.get("Content-Type") + " is support");
        String str13 = "download-file: ";
        if (this.mFileSize != getFileSize(headers)) {
            LogUtil.d(str10, str13 + "file size is not match when download response");
            DownloadResponseListener downloadResponseListener5 = this.mListener;
            if (downloadResponseListener5 != null) {
                downloadResponseListener5.onError(1006, "Data error", "file size is not match when download response");
            }
            cancel();
            return new byte[0];
        }
        String str14 = this.mFilePath;
        if (TextUtils.isEmpty(str14)) {
            LogUtil.d(str10, str13 + "download temp file name is null when download response");
            DownloadResponseListener downloadResponseListener6 = this.mListener;
            if (downloadResponseListener6 != null) {
                downloadResponseListener6.onError(1003, "I/O error", "download temp file name is null when download response");
            }
            cancel();
            return new byte[0];
        }
        File file = new File(str14);
        file.setWritable(true);
        try {
            if (file.exists()) {
                LogUtil.d(str10, str13 + str14 + " exists");
            } else if (file.canWrite()) {
                file.createNewFile();
                LogUtil.d(str10, str13 + str14 + " not exists and create file");
            } else {
                LogUtil.d(str10, str13 + str14 + " not exists and can not write");
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str14, e.f94694e0);
                long j10 = this.mDownloadedSize;
                str = "IO error";
                try {
                    if (j10 > 0) {
                        randomAccessFile.seek(j10);
                    } else {
                        randomAccessFile.setLength(0L);
                        j10 = 0;
                    }
                    DownloadResponseListener downloadResponseListener7 = this.mListener;
                    if (downloadResponseListener7 != null) {
                        downloadResponseListener7.onSuccess();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    InputStream content = httpResponse.getContent();
                    try {
                        try {
                            byte[] bArr3 = new byte[READ_BUFFER];
                            while (true) {
                                try {
                                    int i10 = content.read(bArr3);
                                    str5 = str13;
                                    if (i10 == -1) {
                                        str3 = str8;
                                        str6 = str9;
                                        break;
                                    }
                                    try {
                                        randomAccessFile.write(bArr3, 0, i10);
                                        str3 = str8;
                                        j10 += (long) i10;
                                        try {
                                            DownloadResponseListener downloadResponseListener8 = this.mListener;
                                            str6 = str9;
                                            if (downloadResponseListener8 != null) {
                                                try {
                                                    downloadResponseListener8.onProgress(this.mFileSize, j10);
                                                } catch (Throwable th) {
                                                    th = th;
                                                    str7 = "An incomplete file";
                                                    str9 = str5;
                                                    str4 = str6;
                                                    if (content != null) {
                                                        try {
                                                            content.close();
                                                        } catch (Exception unused3) {
                                                            LogUtil.e(TAG, "download-file: Error occured when calling InputStream.close");
                                                        }
                                                    }
                                                    randomAccessFile.close();
                                                    long jCurrentTimeMillis2 = (System.currentTimeMillis() - jCurrentTimeMillis) / 1000;
                                                    String str15 = TAG;
                                                    LogUtil.e(str15, "download-file: download cost: " + jCurrentTimeMillis2 + "s, file size=" + this.mFileSize + "; download size=" + j10);
                                                    if (this.mFileSize != j10 || isCanceled()) {
                                                        downloadResponseListener2 = this.mListener;
                                                        if (downloadResponseListener2 == null) {
                                                            throw th;
                                                        }
                                                        downloadResponseListener2.onFinish();
                                                        throw th;
                                                    }
                                                    long j11 = this.mInterval;
                                                    if (j11 != -1) {
                                                        DownloadResponseListener downloadResponseListener9 = this.mListener;
                                                        if (downloadResponseListener9 != null) {
                                                            downloadResponseListener9.onRetry(j11);
                                                        }
                                                        return new byte[0];
                                                    }
                                                    String str16 = str4 + j10 + str3 + this.mFileSize;
                                                    LogUtil.d(str15, str9 + str16);
                                                    DownloadResponseListener downloadResponseListener10 = this.mListener;
                                                    if (downloadResponseListener10 == null) {
                                                        throw th;
                                                    }
                                                    downloadResponseListener10.onError(1003, str7, str16);
                                                    throw th;
                                                }
                                            }
                                            if (isCanceled()) {
                                                break;
                                            }
                                            str8 = str3;
                                            str13 = str5;
                                            str9 = str6;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            str6 = str9;
                                            str7 = "An incomplete file";
                                            str9 = str5;
                                            str4 = str6;
                                            if (content != null) {
                                                content.close();
                                            }
                                            randomAccessFile.close();
                                            long jCurrentTimeMillis3 = (System.currentTimeMillis() - jCurrentTimeMillis) / 1000;
                                            String str17 = TAG;
                                            LogUtil.e(str17, "download-file: download cost: " + jCurrentTimeMillis3 + "s, file size=" + this.mFileSize + "; download size=" + j10);
                                            if (this.mFileSize != j10) {
                                            }
                                            downloadResponseListener2 = this.mListener;
                                            if (downloadResponseListener2 == null) {
                                                throw th;
                                            }
                                            downloadResponseListener2.onFinish();
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        str3 = str8;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    str7 = "An incomplete file";
                                    String str18 = str13;
                                    str3 = str8;
                                    str4 = str9;
                                    str9 = str18;
                                    if (content != null) {
                                        content.close();
                                    }
                                    randomAccessFile.close();
                                    long jCurrentTimeMillis4 = (System.currentTimeMillis() - jCurrentTimeMillis) / 1000;
                                    String str19 = TAG;
                                    LogUtil.e(str19, "download-file: download cost: " + jCurrentTimeMillis4 + "s, file size=" + this.mFileSize + "; download size=" + j10);
                                    if (this.mFileSize != j10) {
                                    }
                                    downloadResponseListener2 = this.mListener;
                                    if (downloadResponseListener2 == null) {
                                        throw th;
                                    }
                                    downloadResponseListener2.onFinish();
                                    throw th;
                                }
                            }
                            try {
                                try {
                                    content.close();
                                } catch (IOException e14) {
                                    e = e14;
                                    str9 = str5;
                                    str2 = "download response io exception: " + Log.getStackTraceString(e);
                                    LogUtil.d(TAG, str9 + str2);
                                    downloadResponseListener = this.mListener;
                                    if (downloadResponseListener != null) {
                                        downloadResponseListener.onError(1003, str, str2);
                                    }
                                }
                            } catch (Exception unused4) {
                                LogUtil.e(TAG, "download-file: Error occured when calling InputStream.close");
                            }
                            randomAccessFile.close();
                            long jCurrentTimeMillis5 = (System.currentTimeMillis() - jCurrentTimeMillis) / 1000;
                            String str20 = TAG;
                            LogUtil.e(str20, "download-file: download cost: " + jCurrentTimeMillis5 + "s, file size=" + this.mFileSize + "; download size=" + j10);
                            if (this.mFileSize == j10 || isCanceled()) {
                                DownloadResponseListener downloadResponseListener11 = this.mListener;
                                if (downloadResponseListener11 != null) {
                                    downloadResponseListener11.onFinish();
                                }
                            } else {
                                long j12 = this.mInterval;
                                if (j12 != -1) {
                                    DownloadResponseListener downloadResponseListener12 = this.mListener;
                                    if (downloadResponseListener12 != null) {
                                        downloadResponseListener12.onRetry(j12);
                                    }
                                    return new byte[0];
                                }
                                String str21 = str6 + j10 + str3 + this.mFileSize;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(str5);
                                sb2.append(str21);
                                LogUtil.d(str20, sb2.toString());
                                DownloadResponseListener downloadResponseListener13 = this.mListener;
                                if (downloadResponseListener13 != null) {
                                    downloadResponseListener13.onError(1003, "An incomplete file", str21);
                                }
                            }
                        } catch (IOException e15) {
                            e = e15;
                            str2 = "download response io exception: " + Log.getStackTraceString(e);
                            LogUtil.d(TAG, str9 + str2);
                            downloadResponseListener = this.mListener;
                            if (downloadResponseListener != null) {
                                downloadResponseListener.onError(1003, str, str2);
                            }
                            return new byte[0];
                        }
                        return new byte[0];
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (IOException e16) {
                    e = e16;
                    str9 = str13;
                    str2 = "download response io exception: " + Log.getStackTraceString(e);
                    LogUtil.d(TAG, str9 + str2);
                    downloadResponseListener = this.mListener;
                    if (downloadResponseListener != null) {
                        downloadResponseListener.onError(1003, str, str2);
                    }
                    return new byte[0];
                }
            } catch (IOException e17) {
                e = e17;
                str = "IO error";
            }
        } catch (IOException e18) {
            String str22 = "create tmp file exception: " + Log.getStackTraceString(e18);
            LogUtil.d(TAG, str13 + str22);
            DownloadResponseListener downloadResponseListener14 = this.mListener;
            if (downloadResponseListener14 != null) {
                downloadResponseListener14.onError(1003, "IO error", str22);
            }
            return new byte[0];
        }
    }

    @Override // com.haima.hmcp.volley.Request
    public boolean isDownloadRequest() {
        return true;
    }

    @Override // com.haima.hmcp.volley.Request
    protected Response<byte[]> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            byte[] bArr = networkResponse.data;
            return bArr == null ? Response.error(new ParseError(networkResponse)) : Response.success(bArr, HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (OutOfMemoryError e10) {
            return Response.error(new ParseError(e10));
        }
    }

    public void setConfig(List<String> list) {
        if (list != null) {
            this.mContentTypeList = list;
        } else {
            this.mContentTypeList = new ArrayList(Arrays.asList(CONTENT_LIST_DEFAULT));
        }
    }

    public void setListener(DownloadResponseListener downloadResponseListener) {
        this.mListener = downloadResponseListener;
    }
}
