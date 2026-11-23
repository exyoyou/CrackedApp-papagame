package com.kwad.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.sdk.service.ServiceProvider;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class ah {
    private static AtomicInteger bpq = new AtomicInteger(0);
    private static volatile boolean bpr = false;
    private static volatile boolean bps;

    private static int US() {
        com.kwad.sdk.service.a.h hVar = (com.kwad.sdk.service.a.h) ServiceProvider.get(com.kwad.sdk.service.a.h.class);
        if (hVar == null) {
            com.kwad.sdk.core.d.c.w("Ks_UnionHelper", "sdkConfigProvider == null");
            return 0;
        }
        int iFT = hVar.FT();
        com.kwad.sdk.core.d.c.d("Ks_UnionHelper", "config mode:" + iFT);
        return iFT;
    }

    private static void UT() {
        if (bpr) {
            return;
        }
        bpq.set(UW());
        bps = bq.m("kssdk_kv_mode", "downgrade", false);
        bpr = true;
    }

    public static void UU() {
        if (UX() || US() == 0) {
            return;
        }
        i.execute(new bi() { // from class: com.kwad.sdk.utils.ah.3
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.utils.b.a aVarUV = ah.UV();
                if (aVarUV == null) {
                    return;
                }
                ah.c(aVarUV);
                com.kwad.sdk.utils.b.b bVar = (com.kwad.sdk.utils.b.b) ServiceProvider.get(com.kwad.sdk.utils.b.b.class);
                if (bVar != null) {
                    bVar.a(aVarUV);
                }
            }
        });
    }

    @WorkerThread
    public static com.kwad.sdk.utils.b.a UV() {
        com.kwad.sdk.utils.b.a aVar = new com.kwad.sdk.utils.b.a();
        SharedPreferences sharedPreferencesM40if = bq.m40if("ksadsdk_kv_perf");
        if (sharedPreferencesM40if == null) {
            return null;
        }
        try {
            Map<String, ?> all = sharedPreferencesM40if.getAll();
            if (all == null) {
                return null;
            }
            Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
            int iIntValue = 0;
            while (it2.hasNext()) {
                iIntValue += ((Integer) it2.next().getValue()).intValue();
            }
            aVar.bsH = iIntValue;
            SharedPreferences.Editor editorEdit = sharedPreferencesM40if.edit();
            Iterator<Map.Entry<String, ?>> it3 = all.entrySet().iterator();
            while (it3.hasNext()) {
                editorEdit.putInt(it3.next().getKey(), 0);
            }
            editorEdit.apply();
            d(aVar);
            e(aVar);
        } catch (Throwable unused) {
        }
        return aVar;
    }

    private static int UW() {
        int iB = bq.b("kssdk_kv_mode", "mode", 0);
        com.kwad.sdk.core.d.c.d("Ks_UnionHelper", "local mode:" + iB);
        return iB;
    }

    private static boolean UX() {
        UT();
        return bpq.get() == 0;
    }

    private static boolean UY() {
        return Build.VERSION.SDK_INT > 23;
    }

    private static int UZ() {
        UT();
        int iUS = (bps || !UY()) ? 0 : US();
        com.kwad.sdk.core.d.c.d("Ks_UnionHelper", "targetMode:" + iUS);
        return iUS;
    }

    public static void Va() {
        UT();
        int i10 = bpq.get();
        int iUZ = UZ();
        boolean z10 = i10 != iUZ;
        com.kwad.sdk.core.d.c.d("Ks_UnionHelper", "needTransfer:" + z10);
        if (z10) {
            transfer(iUZ);
        }
    }

    private static void Vb() {
        i.execute(new bi() { // from class: com.kwad.sdk.utils.ah.4
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                try {
                    Context context = ai.getContext();
                    if (context == null) {
                        return;
                    }
                    Iterator<String> it2 = com.kwad.sdk.j.a.aGc.iterator();
                    while (it2.hasNext()) {
                        ah.Y(context, it2.next());
                    }
                } catch (Exception e10) {
                    com.kwad.sdk.core.d.c.e("Ks_UnionHelper", Log.getStackTraceString(e10));
                }
                ah.fV(0);
                ah.bpq.set(0);
            }
        });
    }

    private static void Vc() {
        com.kwad.sdk.core.d.c.d("Ks_UnionHelper", "transferToKv");
        i.execute(new bi() { // from class: com.kwad.sdk.utils.ah.5
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                try {
                    Context context = ai.getContext();
                    if (context != null) {
                        Iterator<String> it2 = com.kwad.sdk.j.a.aGc.iterator();
                        while (it2.hasNext()) {
                            ah.X(context, it2.next());
                        }
                        ah.fV(1);
                        ah.bpq.set(1);
                    }
                } catch (Exception e10) {
                    com.kwad.sdk.core.d.c.e("Ks_UnionHelper", Log.getStackTraceString(e10));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void X(Context context, String str) {
        SharedPreferences sharedPreferencesM40if;
        com.kwad.sdk.utils.a.c cVarAF = com.kwad.sdk.utils.a.e.aF(context, str);
        if ("ksadsdk_splash_preload_id_list".equals(str) && (sharedPreferencesM40if = bq.m40if(str)) == null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesM40if.edit();
            if (editorEdit != null) {
                editorEdit.remove("kv_to_sp_transfer_flag").remove("sp_to_kv_transfer_flag").apply();
                return;
            }
            return;
        }
        if (cVarAF.contains("sp_to_kv_transfer_flag")) {
            return;
        }
        SharedPreferences sharedPreferencesM40if2 = bq.m40if(str);
        if (sharedPreferencesM40if2 == null) {
            cVarAF.putBoolean("sp_to_kv_transfer_flag", true);
            return;
        }
        cVarAF.putAll(sharedPreferencesM40if2.getAll());
        cVarAF.putBoolean("sp_to_kv_transfer_flag", true);
        bq.az(str, "kv_to_sp_transfer_flag");
        a(str, cVarAF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Y(Context context, String str) {
        SharedPreferences sharedPreferencesM40if = bq.m40if(str);
        if (sharedPreferencesM40if == null) {
            return;
        }
        if ("ksadsdk_splash_preload_id_list".equals(str)) {
            SharedPreferences.Editor editorEdit = sharedPreferencesM40if.edit();
            if (editorEdit != null) {
                editorEdit.remove("kv_to_sp_transfer_flag").remove("sp_to_kv_transfer_flag").apply();
                return;
            }
            return;
        }
        if (sharedPreferencesM40if.contains("kv_to_sp_transfer_flag")) {
            return;
        }
        com.kwad.sdk.utils.a.c cVarAF = com.kwad.sdk.utils.a.e.aF(context, str);
        Map<String, Object> all = cVarAF.getAll();
        if (all.isEmpty()) {
            bq.l(str, "kv_to_sp_transfer_flag", true);
            return;
        }
        bq.a(str, all);
        bq.l(str, "kv_to_sp_transfer_flag", true);
        cVarAF.remove("sp_to_kv_transfer_flag");
        cVarAF.release();
    }

    private static void a(String str, com.kwad.sdk.utils.a.c cVar) {
        if (com.kwad.sdk.j.a.aGd.contains(str)) {
            return;
        }
        cVar.release();
    }

    @WorkerThread
    public static void aw(final String str, final String str2) {
        i.execute(new bi() { // from class: com.kwad.sdk.utils.ah.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                try {
                    int iB = bq.b("ksadsdk_kv_perf", str, 0);
                    if (TextUtils.isEmpty(str2)) {
                        bq.az("ksadsdk_kv_perf", str);
                    } else {
                        bq.a("ksadsdk_kv_perf", str, iB + 1);
                    }
                } catch (Exception e10) {
                    bq.az("ksadsdk_kv_perf", str);
                    ServiceProvider.reportSdkCaughtException(e10);
                }
            }
        });
    }

    public static void ax(final String str, final String str2) {
        i.execute(new bi() { // from class: com.kwad.sdk.utils.ah.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                SharedPreferences sharedPreferencesM40if = bq.m40if("ksadsdk_kv_perf");
                if (sharedPreferencesM40if != null && sharedPreferencesM40if.contains(str)) {
                    if (TextUtils.isEmpty(str2)) {
                        bq.a("ksadsdk_kv_perf_failed", str, bq.b("ksadsdk_kv_perf_failed", str, 0) + 1);
                    } else {
                        bq.a("ksadsdk_kv_perf_success", str, bq.b("ksadsdk_kv_perf_success", str, 0) + 1);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(@NonNull com.kwad.sdk.utils.b.a aVar) {
        int i10 = aVar.bsI;
        if (((double) i10) / ((double) (i10 + aVar.bsJ)) > 0.10000000149011612d) {
            bps = true;
            com.kwad.sdk.core.d.c.d("Ks_UnionHelper", "need downgrade");
            bq.l("kssdk_kv_mode", "downgrade", true);
        }
        if (bps) {
            Va();
        }
    }

    private static void d(com.kwad.sdk.utils.b.a aVar) {
        SharedPreferences sharedPreferencesM40if = bq.m40if("ksadsdk_kv_perf_failed");
        int iIntValue = 0;
        if (sharedPreferencesM40if == null) {
            aVar.bsI = 0;
            return;
        }
        Map<String, ?> all = sharedPreferencesM40if.getAll();
        if (all != null) {
            Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
            while (it2.hasNext()) {
                iIntValue += ((Integer) it2.next().getValue()).intValue();
            }
        }
        aVar.bsI = iIntValue;
        SharedPreferences.Editor editorEdit = sharedPreferencesM40if.edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    private static void e(com.kwad.sdk.utils.b.a aVar) {
        SharedPreferences sharedPreferencesM40if = bq.m40if("ksadsdk_kv_perf_success");
        int iIntValue = 0;
        if (sharedPreferencesM40if == null) {
            aVar.bsJ = 0;
            return;
        }
        Map<String, ?> all = sharedPreferencesM40if.getAll();
        if (all != null) {
            Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
            while (it2.hasNext()) {
                iIntValue += ((Integer) it2.next().getValue()).intValue();
            }
        }
        aVar.bsJ = iIntValue;
        SharedPreferences.Editor editorEdit = sharedPreferencesM40if.edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    static void fV(int i10) {
        bq.a("kssdk_kv_mode", "mode", i10);
    }

    private static boolean hM(String str) {
        return com.kwad.sdk.j.a.aGc.contains(str);
    }

    public static boolean hN(String str) {
        boolean z10 = UX() || !hM(str);
        com.kwad.sdk.core.d.c.d("Ks_UnionHelper", "shouldUseModeSp:" + z10);
        return z10;
    }

    private static void transfer(int i10) {
        if (i10 == 0) {
            Vb();
        } else if (i10 == 1) {
            Vc();
        }
    }
}
