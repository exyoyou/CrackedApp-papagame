package com.efs.sdk.memoryinfo;

import android.content.Context;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;

/* JADX INFO: loaded from: classes9.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final EfsReporter f26460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f26461b = false;
    final Context mContext;

    public b(Context context, EfsReporter efsReporter) {
        this.mContext = context.getApplicationContext();
        this.f26460a = efsReporter;
    }

    static /* synthetic */ void a(b bVar, e eVar, String str) {
        c cVar = new c(bVar.mContext);
        EfsJSONLog efsJSONLog = new EfsJSONLog("memperf");
        efsJSONLog.put("w_pgid", str);
        efsJSONLog.put("crver", "0.0.4.umeng");
        efsJSONLog.put("k_st", cVar.bg);
        efsJSONLog.put("w_url", cVar.activity);
        efsJSONLog.put("wl_tpss", Long.valueOf(cVar.f26476n));
        efsJSONLog.put("wl_jpss", Long.valueOf(cVar.f26477o));
        efsJSONLog.put("wl_npss", Long.valueOf(cVar.f26478p));
        efsJSONLog.put("wl_heap", Long.valueOf(cVar.f26479q));
        efsJSONLog.put("wf_heap_used_rate", Float.valueOf(cVar.f26480r));
        efsJSONLog.put("wl_graphics", Long.valueOf(cVar.f26481s));
        efsJSONLog.put("wl_vmsize", Long.valueOf(cVar.f26482t));
        synchronized (e.class) {
            if (eVar.C) {
                eVar.a(efsJSONLog);
            } else {
                eVar.B.add(efsJSONLog);
            }
        }
    }
}
