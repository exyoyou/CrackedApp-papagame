package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
final class t extends pblz.pgla {
    t() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    protected final Object c(long j10, String str, Object obj) throws Throwable {
        Context contextTt = pblw.c().tt();
        if (contextTt != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) contextTt.getSystemService((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7b00dc", new byte[]{37, 111, 77, 74, 94, 119, 32, 74, 119, 105, com.sigmob.sdk.archives.tar.e.J, 121}));
                Method declaredMethod = connectivityManager.getClass().getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "712c29", new byte[]{BinaryMemcacheOpcodes.SASL_AUTH, com.sigmob.sdk.archives.tar.e.N, 85, com.sigmob.sdk.archives.tar.e.N, 14, HttpConstants.COLON, 61, 6, 102, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATK, 39, 86, BinaryMemcacheOpcodes.FLUSHQ, 31, 37, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 101, 60}), new Class[0]);
                declaredMethod.setAccessible(true);
                NetworkInfo networkInfo = (NetworkInfo) declaredMethod.invoke(connectivityManager, new Object[0]);
                if (networkInfo != null) {
                    Method declaredMethod2 = networkInfo.getClass().getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b1a2d9", new byte[]{122, 32, com.sigmob.sdk.archives.tar.e.K, 80, 90, 39, 109, BinaryMemcacheOpcodes.SETQ, com.sigmob.sdk.archives.tar.e.J, 110, 118}), new Class[0]);
                    declaredMethod2.setAccessible(true);
                    return Boolean.valueOf(((Boolean) declaredMethod2.invoke(networkInfo, new Object[0])).booleanValue());
                }
            } catch (Throwable unused) {
            }
        }
        return Boolean.FALSE;
    }
}
