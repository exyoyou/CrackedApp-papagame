package ms.bz.bd.c.Pgl;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
final class z extends pblz.pgla {
    z() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    protected final Object c(long j10, String str, Object obj) throws Throwable {
        try {
            Method method = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "457868", new byte[]{38, 56, 73, 2, 11, com.sigmob.sdk.archives.tar.e.N, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.SETQ, 98, 105, 43, com.sigmob.sdk.archives.tar.e.L, 65, 2, 4, 32, com.sigmob.sdk.archives.tar.e.M, 7, 99, 107, 107, BinaryMemcacheOpcodes.GATKQ, 65, 66, 26, 32, 37, 90, 107, 100, 107, 26, 119, 110})).getMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "2071bc", new byte[]{34}), new Class[0]);
            if (method != null) {
                return (Long) method.invoke(null, new Object[0]);
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
