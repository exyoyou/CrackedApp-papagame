package com.byazt.ogz;

import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1190, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f17786c = new AtomicInteger(com.byazt.nys.tt.tt(gt.getContext(), "sync_switch", 0).getInt("status", 1));
    public static com.byazt.omf.ve tt;
    public static PluginValueSet ve;

    public static boolean c() {
        return f17786c.get() == 1;
    }

    public static void c(int i10) {
        com.byazt.omf.ve veVar;
        if (i10 == 1 || i10 == 2) {
            com.byazt.nys.tt.tt(gt.getContext(), "sync_switch", 0).edit().putInt("status", i10).apply();
            AtomicInteger atomicInteger = f17786c;
            int i11 = atomicInteger.get();
            atomicInteger.set(i10);
            if (i11 != 2 || i10 != 1 || (veVar = tt) == null || veVar.isInitSuccess()) {
                return;
            }
            try {
                tt.init(gt.getContext(), ve, new com.byazt.fb.ve(n0.c.a(ve.objectValue(15, n0.a.a()))));
                tt = null;
                ve = null;
            } catch (Throwable th) {
                m.ve("SdkSwitch", "init sdk error", th);
            }
        }
    }
}
