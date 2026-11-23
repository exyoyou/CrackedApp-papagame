package com.kwad.sdk.core.report;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class t {
    private static String aWG = Nm();
    private static long aWH = 0;
    private static Context aWI;

    public static String Ni() {
        com.kwad.sdk.core.d.c.d("ReportIdManager", ">> updateSessionId");
        String strNm = Nm();
        aWG = strNm;
        return strNm;
    }

    public static String Nj() {
        return aWG;
    }

    @WorkerThread
    public static long Nk() {
        long jBZ = bZ(aWI);
        b(aWI, 1 + jBZ);
        return jBZ;
    }

    public static long Nl() {
        return aWH;
    }

    private static String Nm() {
        return UUID.randomUUID().toString();
    }

    @WorkerThread
    private static boolean b(Context context, long j10) {
        if (context == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("ksadsdk_seq", 0).edit();
        editorEdit.putLong(RtspHeaders.Values.SEQ, j10);
        return editorEdit.commit();
    }

    @WorkerThread
    private static long bZ(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getSharedPreferences("ksadsdk_seq", 0)) == null) {
            return 0L;
        }
        return sharedPreferences.getLong(RtspHeaders.Values.SEQ, 1L);
    }

    public static void init(Context context) {
        aWI = context;
    }
}
