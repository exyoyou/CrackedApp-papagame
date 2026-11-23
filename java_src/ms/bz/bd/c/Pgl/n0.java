package ms.bz.bd.c.Pgl;

import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
final class n0 extends pblz.pgla {
    n0() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        String id2;
        int rawOffset;
        try {
            TimeZone timeZone = TimeZone.getDefault();
            id2 = timeZone.getID();
            try {
                rawOffset = ((timeZone.getRawOffset() / 60) / 60) / 1000;
            } catch (Throwable unused) {
                rawOffset = 0;
            }
        } catch (Throwable unused2) {
            id2 = null;
        }
        return id2 + ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "62dc3d", new byte[]{107})) + rawOffset;
    }
}
