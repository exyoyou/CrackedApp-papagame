package com.bykv.vk.component.ttvideo.mediakit.downloader;

import android.annotation.SuppressLint;
import com.byazt.gqp.a;
import com.byazt.gqp.m;
import com.byazt.gqp.t;
import com.byazt.gqp.tt;
import com.byazt.gqp.u;
import com.byazt.gqp.yp;
import com.byazt.gqp.z;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class AVMDLHttpExcutor {
    private static final String TAG = "AVMDLHttpExcutor";
    private static t okHttpClient;

    public static String buildRangeHeader(long j10, long j11) {
        String strFormRangeStrBySize = formRangeStrBySize(j10, j11);
        if (strFormRangeStrBySize == null) {
            return null;
        }
        return "bytes=".concat(strFormRangeStrBySize);
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static AVMDLResponse excute(AVMDLRequest aVMDLRequest, int i10) throws Exception {
        yp.c cVar = new yp.c();
        cVar.c(aVMDLRequest.urls[i10]);
        cVar.c("GET", (z) null);
        cVar.c(toOkHttpHeaders(aVMDLRequest));
        tt ttVarC = getOkHttpClient().c(cVar.tt());
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            m mVarTt = ttVarC.tt();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            aVMDLRequest.mCurlUrlIndex = i10;
            String.format("http open cost time:%d url:%s", Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis), aVMDLRequest.urls[i10]);
            return new AVMDLResponse(aVMDLRequest, mVarTt, ttVarC);
        } catch (Exception e10) {
            AVMDLLog.e(TAG, "request exception is " + e10.getLocalizedMessage());
            throw e10;
        }
    }

    public static String formRangeStrByPos(long j10, long j11) {
        if (j10 >= 0 && j11 > 0) {
            return j10 + "-" + j11;
        }
        if (j10 >= 0) {
            return j10 + "-";
        }
        if (j10 >= 0 || j11 <= 0) {
            return null;
        }
        return "-".concat(String.valueOf(j11));
    }

    public static String formRangeStrBySize(long j10, long j11) {
        return formRangeStrByPos(j10, j11 > 0 ? (j11 + j10) - 1 : -1L);
    }

    private static synchronized t getOkHttpClient() {
        long j10;
        if (okHttpClient == null) {
            AVMDLDataLoaderConfigure config = AVMDLDataLoader.getInstance().getConfig();
            long j11 = 10000;
            if (config != null) {
                int i10 = config.mOpenTimeOut;
                long j12 = i10 > 0 ? i10 * 1000 : 10000L;
                int i11 = config.mRWTimeOut;
                j11 = j12;
                j10 = i11 > 0 ? i11 * 1000 : 10000L;
            } else {
                j10 = 10000;
            }
            t.c cVar = new t.c();
            cVar.c(Collections.singletonList(u.HTTP_1_1));
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            cVar.c(j11, timeUnit).tt(j10, timeUnit).ve(j10, timeUnit);
            okHttpClient = cVar.c();
        }
        return okHttpClient;
    }

    private static a toOkHttpHeaders(AVMDLRequest aVMDLRequest) {
        a.c cVar = new a.c();
        HashMap<String, String> map = aVMDLRequest.headers;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                entry.getKey();
                entry.getValue();
                cVar.tt(entry.getKey(), entry.getValue());
            }
        }
        String strBuildRangeHeader = buildRangeHeader(aVMDLRequest.reqOff, aVMDLRequest.size);
        if (strBuildRangeHeader != null) {
            cVar.tt("Range", strBuildRangeHeader);
        }
        cVar.tt("Accept-Encoding", "identity");
        return cVar.c();
    }
}
