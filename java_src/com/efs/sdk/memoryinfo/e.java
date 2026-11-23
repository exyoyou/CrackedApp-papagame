package com.efs.sdk.memoryinfo;

import android.content.Context;
import android.text.TextUtils;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import com.umeng.analytics.pro.bm;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
class e {
    final List<EfsJSONLog> B = new ArrayList();
    volatile boolean C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EfsReporter f26489a;

    e(final Context context, EfsReporter efsReporter) {
        this.f26489a = efsReporter;
        String uMId = UMUtils.getUMId(context);
        this.C = !TextUtils.isEmpty(uMId);
        if (!this.C) {
            ImprintHandler.getImprintService(context).registImprintCallback(bm.f84404g, new UMImprintChangeCallback() { // from class: com.efs.sdk.memoryinfo.e.1
                @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
                public final void onImprintValueChanged(String str, String str2) {
                    try {
                        if (bm.f84404g.equals(str)) {
                            HashMap map = new HashMap(1);
                            map.put(UMCrash.KEY_HEADER_UMID, str2);
                            e.this.f26489a.addPublicParams(map);
                            synchronized (e.class) {
                                e.b(e.this);
                            }
                            Iterator it2 = e.this.B.iterator();
                            while (it2.hasNext()) {
                                e.this.a((EfsJSONLog) it2.next());
                            }
                            new StringBuilder("send cache:").append(e.this.B.size());
                            boolean z10 = a.DEBUG;
                            e.this.B.clear();
                            ImprintHandler.getImprintService(context).unregistImprintCallback(bm.f84404g, this);
                        }
                    } catch (Throwable th) {
                        f.a("umid ", th);
                    }
                }
            });
            return;
        }
        HashMap map = new HashMap(1);
        map.put(UMCrash.KEY_HEADER_UMID, uMId);
        efsReporter.addPublicParams(map);
    }

    static /* synthetic */ boolean b(e eVar) {
        eVar.C = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(EfsJSONLog efsJSONLog) {
        try {
            this.f26489a.send(efsJSONLog);
        } catch (Throwable th) {
            f.a("send", th);
        }
    }
}
