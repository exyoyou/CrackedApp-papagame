package ms.bz.bd.c.Pgl;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes.dex */
final class u0 extends pblz.pgla {
    u0() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        boolean zTt;
        try {
            zTt = y0.tt(pblw.c().tt(), str, obj.toString());
        } catch (Throwable unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f12c0e", new byte[]{112, com.sigmob.sdk.archives.tar.e.J, 71});
            zTt = false;
        }
        if (zTt) {
            return (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5744ef", new byte[]{11, BinaryMemcacheOpcodes.GATQ});
        }
        return null;
    }
}
