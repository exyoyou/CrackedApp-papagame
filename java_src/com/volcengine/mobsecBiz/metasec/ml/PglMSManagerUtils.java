package com.volcengine.mobsecBiz.metasec.ml;

import android.content.Context;
import com.volcengine.mobsecBiz.matrix.pgla;
import ms.bz.bd.c.Pgl.p0;
import ms.bz.bd.c.Pgl.pblz;
import ms.bz.bd.c.Pgl.q0;

/* JADX INFO: loaded from: classes9.dex */
public final class PglMSManagerUtils {
    private PglMSManagerUtils() {
    }

    public static synchronized PglMSManager get(String str) {
        p0 p0VarTt;
        p0VarTt = q0.tt(str);
        return p0VarTt != null ? new PglMSManager(p0VarTt) : null;
    }

    public static synchronized boolean init(Context context, PglMSConfig pglMSConfig) {
        return q0.c(context, pglMSConfig.a());
    }

    public static synchronized void initToken(String str) {
        q0.c(str);
    }

    public static void pause() {
        int i10 = q0.f94456c;
        int i11 = pblz.f94453c;
        pgla.a(67108868, 0, 0L, null, null);
    }

    public static void resume() {
        int i10 = q0.f94456c;
        int i11 = pblz.f94453c;
        pgla.a(67108869, 0, 0L, null, null);
    }

    public static String versionInfo() {
        int i10 = q0.f94456c;
        int i11 = pblz.f94453c;
        return (String) pgla.a(67108867, 0, 0L, null, null);
    }
}
