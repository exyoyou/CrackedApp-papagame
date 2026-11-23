package com.kwad.sdk.m;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.q;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static final String TAG = "Ranger_" + b.class.getSimpleName();
    private List<com.kwad.sdk.m.a.a> bmI;

    static class a {
        private static final b bmM = new b();
    }

    private static void E(int i10, String str) {
        ai.h("ksadsdk_perf_ranger_v2", "aggregation_version" + ("_" + i10), str);
    }

    private boolean T(List<String> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<String> it2 = list.iterator();
        boolean z10 = true;
        while (it2.hasNext()) {
            boolean zHv = false;
            for (String str : hw(it2.next())) {
                zHv = hv(str);
                if (zHv) {
                    break;
                }
            }
            z10 &= zHv;
        }
        return z10;
    }

    public static b TD() {
        return a.bmM;
    }

    private void TE() {
        long jUD = q.UD();
        if (jUD <= 0) {
            return;
        }
        ba(jUD);
    }

    private static void TG() {
        ai.a("ksadsdk_perf_ranger_v2", "ks_launch_delay", 0L);
    }

    private static void ba(long j10) {
        ai.a("ksadsdk_perf_ranger_v2", "ks_launch_delay", j10);
    }

    private static void fD(int i10) {
        ai.a("ksadsdk_perf_ranger_v2", "aggregation_sdk" + ("_" + i10), 1);
    }

    private static boolean fE(int i10) {
        StringBuilder sb2 = new StringBuilder("aggregation_sdk");
        sb2.append("_" + i10);
        return ai.b("ksadsdk_perf_ranger_v2", sb2.toString(), -1) == 1;
    }

    private static com.kwad.sdk.m.b.a.a fF(int i10) {
        com.kwad.sdk.m.b.a.a aVar = new com.kwad.sdk.m.b.a.a();
        String str = "_" + i10;
        aVar.fN(i10);
        aVar.hz(ai.i("ksadsdk_perf_ranger_v2", "aggregation_version" + str, ""));
        aVar.fO(ai.b("ksadsdk_perf_ranger_v2", "crash_times" + str, 0));
        aVar.fP(ai.b("ksadsdk_perf_ranger_v2", "call_ks_union_times" + str, 0));
        aVar.bb(ai.b("ksadsdk_perf_ranger_v2", "ks_launch_delay", -1L));
        aVar.bc(ai.b("ksadsdk_perf_ranger_v2", "aggregation_launch_delay" + str, -1L));
        return aVar;
    }

    private static void fG(int i10) {
        ai.h("ksadsdk_perf_ranger_v2", "aggregation_version" + ("_" + i10), "");
    }

    public static void fH(int i10) {
        String str = "_" + i10;
        ai.a("ksadsdk_perf_ranger_v2", "crash_times" + str, ai.b("ksadsdk_perf_ranger_v2", "crash_times" + str, -1) + 1);
    }

    private static void fI(int i10) {
        ai.a("ksadsdk_perf_ranger_v2", "crash_times" + ("_" + i10), 0);
    }

    public static void fJ(int i10) {
        String str = "_" + i10;
        ai.a("ksadsdk_perf_ranger_v2", "call_ks_union_times" + str, ai.b("ksadsdk_perf_ranger_v2", "call_ks_union_times" + str, -1) + 1);
    }

    private static void fK(int i10) {
        ai.a("ksadsdk_perf_ranger_v2", "call_ks_union_times" + ("_" + i10), 0);
    }

    private static void fL(int i10) {
        ai.a("ksadsdk_perf_ranger_v2", "aggregation_launch_delay" + ("_" + i10), 0L);
    }

    private static boolean hv(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static String[] hw(String str) {
        return str.contains("_") ? str.split("_") : new String[]{str};
    }

    public final void TF() {
        boolean z10 = false;
        for (int i10 = 0; i10 < this.bmI.size(); i10++) {
            com.kwad.sdk.m.a.a aVar = this.bmI.get(i10);
            if (fE(aVar.bmZ)) {
                com.kwad.sdk.commercial.c.v(fF(aVar.bmZ));
                z10 = true;
            }
        }
        if (z10) {
            return;
        }
        com.kwad.sdk.commercial.c.v(fF(-1));
    }

    public final void clearAll() {
        for (int i10 = 0; i10 < this.bmI.size(); i10++) {
            fG(i10);
            fI(i10);
            fK(i10);
            TG();
            fL(i10);
        }
    }

    public final void hx(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        GlobalThreadPools.NX().execute(new Runnable() { // from class: com.kwad.sdk.m.b.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (b.this.bmI != null && !b.this.bmI.isEmpty()) {
                        for (com.kwad.sdk.m.a.a aVar : b.this.bmI) {
                            if (b.b(str, aVar.bnc)) {
                                b.fH(aVar.bmZ);
                            }
                        }
                    }
                } catch (Exception e10) {
                    com.kwad.sdk.core.d.c.w(b.TAG, Log.getStackTraceString(e10));
                }
            }
        });
    }

    public final void start() {
        TE();
        List<com.kwad.sdk.m.a.a> list = this.bmI;
        if (list == null) {
            com.kwad.sdk.core.d.c.w(TAG, "aggregationCheckConfigList is null");
            return;
        }
        for (com.kwad.sdk.m.a.a aVar : list) {
            try {
                if (T(aVar.bna)) {
                    fD(aVar.bmZ);
                }
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.w(TAG, Log.getStackTraceString(e10));
            }
            try {
                if (aVar.bnb != null) {
                    a(aVar);
                }
            } catch (Exception e11) {
                com.kwad.sdk.core.d.c.w(TAG, Log.getStackTraceString(e11));
            }
        }
    }

    private void a(com.kwad.sdk.m.a.a aVar) {
        String strA = c.TI().a(aVar.bnb);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        E(aVar.bmZ, strA);
    }

    public final void b(d dVar) {
        List<com.kwad.sdk.m.a.a> list = dVar.bmI;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.bmI = list;
    }

    public final void c(final StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            return;
        }
        GlobalThreadPools.NX().execute(new Runnable() { // from class: com.kwad.sdk.m.b.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (b.this.bmI != null && !b.this.bmI.isEmpty()) {
                        for (com.kwad.sdk.m.a.a aVar : b.this.bmI) {
                            if (b.a(stackTraceElementArr, aVar.bnd)) {
                                b.fJ(aVar.bmZ);
                            }
                        }
                    }
                } catch (Exception e10) {
                    com.kwad.sdk.core.d.c.w(b.TAG, Log.getStackTraceString(e10));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static boolean a(StackTraceElement[] stackTraceElementArr, List<String> list) {
        boolean z10;
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<String> it2 = list.iterator();
        do {
            z10 = true;
            if (!it2.hasNext()) {
                return true;
            }
            String next = it2.next();
            int length = stackTraceElementArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z10 = false;
                    break;
                }
                if (q.a(stackTraceElementArr[i10]).contains(next)) {
                    break;
                }
                i10++;
            }
        } while (z10);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str, List<String> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!str.contains(it2.next())) {
                return false;
            }
        }
        return true;
    }
}
