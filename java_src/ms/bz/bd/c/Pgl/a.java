package ms.bz.bd.c.Pgl;

import com.byazt.nys.tt;
import io.netty.handler.codec.http.HttpConstants;
import java.io.File;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
final class a extends pblz.pgla {
    a() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        File file = new File(tt.c(pblw.c().tt()), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "80778f", new byte[]{com.sigmob.sdk.archives.tar.e.T, Utf8.REPLACEMENT_BYTE, 87, 71, 6, 101, HttpConstants.COLON}));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }
}
