package ms.bz.bd.c.Pgl;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class s0 extends pblz.pgla {
    s0() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        Context contextTt = pblw.c().tt();
        return contextTt != null ? contextTt.getPackageName() : "";
    }
}
