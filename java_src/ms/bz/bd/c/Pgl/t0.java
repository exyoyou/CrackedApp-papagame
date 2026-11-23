package ms.bz.bd.c.Pgl;

import com.byazt.nys.tt;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
final class t0 extends pblz.pgla {
    t0() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        File file = new File(tt.c(pblw.c().tt()), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ecaf88", new byte[]{HttpConstants.COLON, 108, 1, BinaryMemcacheOpcodes.DECREMENTQ, 6, HttpConstants.SEMICOLON, com.sigmob.sdk.archives.tar.e.T}));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }
}
