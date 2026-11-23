package ms.bz.bd.c.Pgl;

import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public final class pbli {
    public static boolean c() {
        return c((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0494bf", new byte[]{34, 57, 71, 14, 95, 104, 39, 16, 108, 101, 47, com.sigmob.sdk.archives.tar.e.M, 79, 14, 91, 99, com.sigmob.sdk.archives.tar.e.J, BinaryMemcacheOpcodes.FLUSHQ, ByteCompanionObject.MAX_VALUE, 107, com.sigmob.sdk.archives.tar.e.K, 61, 4, 67, 82, 99, com.sigmob.sdk.archives.tar.e.N, 91, 123, 96, 42, HttpConstants.SEMICOLON, 69, 78, 84, 101, 60, 7, 38, 84, 38, HttpConstants.COLON, 121, 100, 118, 92, 60, 27, 97, 112, 46, BinaryMemcacheOpcodes.GATKQ, ByteCompanionObject.MAX_VALUE, 84, 84, 125, 32}));
    }

    private static boolean c(String... strArr) {
        boolean z10;
        boolean z11 = true;
        for (String str : strArr) {
            try {
                Class.forName(str);
                z10 = true;
            } catch (Throwable unused) {
                z10 = false;
            }
            z11 &= z10;
            if (!z11) {
                break;
            }
        }
        return z11;
    }
}
