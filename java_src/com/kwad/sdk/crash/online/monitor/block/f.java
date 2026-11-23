package com.kwad.sdk.crash.online.monitor.block;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.kwad.sdk.crash.online.monitor.block.report.BlockReportAction;
import com.kwad.sdk.crash.report.h;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean MQ() {
        int iQA = QA();
        Context context = ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext();
        if (context == null) {
            return false;
        }
        long size = com.kwad.sdk.crash.online.monitor.block.report.a.cx(context).size();
        com.kwad.sdk.core.d.c.d("perfMonitor.Reporter", "size:" + size + " limit:" + iQA);
        return size >= ((long) iQA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int QA() {
        com.kwad.sdk.crash.online.monitor.a.a aVarQy = e.Qy();
        if (aVarQy != null) {
            return aVarQy.bfu;
        }
        return 20;
    }

    public static void a(String str, long j10, long j11, String str2, String str3, boolean z10) {
        try {
            i(b(str, j10, j11, str2, str3), false);
        } catch (Throwable unused) {
        }
    }

    @Nullable
    private static String b(String str, long j10, long j11, String str2, String str3) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            str = gy(b.gw(str));
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            if (j11 == 0) {
                j11 = 2000;
            }
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.w("perfMonitor.Reporter", Log.getStackTraceString(e10));
        }
        return c(str, j10, j11, str2, str3).toJson().toString();
    }

    private static BlockEvent c(String str, long j10, long j11, String str2, String str3) {
        BlockEvent blockEvent = new BlockEvent();
        blockEvent.blockDuration = j11;
        blockEvent.currentActivity = str2;
        blockEvent.processName = str3;
        BlockEvent.a aVar = new BlockEvent.a();
        aVar.beZ = str;
        if (j10 == 0) {
            j10 = System.currentTimeMillis();
        }
        aVar.beX = j10;
        aVar.repeatCount = (int) (j11 / blockEvent.blockLoopInterval);
        blockEvent.stackTraceSample.add(aVar);
        return blockEvent;
    }

    public static void gA(String str) {
        try {
            d dVar = new d();
            dVar.errorMsg = str;
            dVar.bfh = a.Qx();
            com.kwad.sdk.commercial.c.q(dVar);
        } catch (Exception unused) {
        }
        com.kwad.sdk.core.d.c.w("perfMonitor.Reporter", str);
    }

    private static String gy(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            boolean zStartsWith = str.startsWith(" \n");
            com.kwad.sdk.core.d.c.d("perfMonitor.Reporter", "oldVersion:" + zStartsWith);
            if (zStartsWith) {
                if (str.contains("at ")) {
                    str = str.substring(str.indexOf("at "));
                }
                str = str.replaceAll(":", "\\.") + "\n";
            }
            String strReplaceAll = str.replaceAll("at ", "").replaceAll(" ", "");
            if (strReplaceAll.contains("\n")) {
                strReplaceAll = strReplaceAll.replaceAll("\n", "\n\tat ");
            }
            return "\n\tat " + (strReplaceAll + "_").replaceAll("\n\tat _", "\n");
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.w("perfMonitor.Reporter", Log.getStackTraceString(e10));
            return str;
        }
    }

    public static void gz(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.kwad.sdk.core.d.c.d("perfMonitor.Reporter", "reportPrinterName:" + str);
        if (e.Qz()) {
            d dVar = new d();
            dVar.bff = str;
            dVar.bfh = a.Qx();
            com.kwad.sdk.commercial.c.q(dVar);
        }
    }

    private static void i(final String str, final boolean z10) {
        i.execute(new bi() { // from class: com.kwad.sdk.crash.online.monitor.block.f.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (z10 || f.QA() == 1) {
                    com.kwad.sdk.core.d.c.d("perfMonitor.Reporter", "report now :" + str);
                    h.ak("perf-block", str);
                    return;
                }
                BlockReportAction blockReportAction = new BlockReportAction(str);
                com.kwad.sdk.core.d.c.d("perfMonitor.Reporter", "write to db :" + blockReportAction.toJson().toString());
                final Context context = ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getContext();
                if (context == null) {
                    return;
                }
                com.kwad.sdk.crash.online.monitor.block.report.a.cx(context).o(blockReportAction);
                if (f.MQ()) {
                    final List<com.kwad.sdk.core.report.e> listMY = com.kwad.sdk.crash.online.monitor.block.report.a.cx(context).MY();
                    ArrayList arrayList = new ArrayList();
                    Iterator<com.kwad.sdk.core.report.e> it2 = listMY.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(((BlockReportAction) it2.next()).msg);
                    }
                    h.a("perf-block", arrayList, new com.kwad.sdk.crash.report.request.b.a() { // from class: com.kwad.sdk.crash.online.monitor.block.f.1.1
                        @Override // com.kwad.sdk.crash.report.request.b.a
                        public final void onError(int i10, String str2) {
                            com.kwad.sdk.core.d.c.w("perfMonitor.Reporter", "errorCode:" + i10 + " errorMsg:" + str2);
                        }

                        @Override // com.kwad.sdk.crash.report.request.b.a
                        public final void onSuccess() {
                            com.kwad.sdk.crash.online.monitor.block.report.a.cx(context).H(listMY);
                        }
                    });
                }
            }
        });
    }
}
