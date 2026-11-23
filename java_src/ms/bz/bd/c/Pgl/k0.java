package ms.bz.bd.c.Pgl;

import android.content.Context;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.reflect.Method;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
final class k0 extends pblz.pgla {
    k0() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        double dDoubleValue;
        Context contextTt = pblw.c().tt();
        try {
            Class<?> cls = Class.forName(new String(pblr.c((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "922ed4", new byte[]{126, 99, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.QUITQ, 13, 39, 104, BinaryMemcacheOpcodes.DECREMENTQ, com.sigmob.sdk.archives.tar.e.M, 100, 126, com.sigmob.sdk.archives.tar.e.M, BinaryMemcacheOpcodes.QUITQ, 69, 12, 113, 108, BinaryMemcacheOpcodes.INCREMENTQ, com.sigmob.sdk.archives.tar.e.M, 108, 126, 100, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, 13, 122, 108, BinaryMemcacheOpcodes.DECREMENTQ, com.sigmob.sdk.archives.tar.e.L, 97, 126, 101, BinaryMemcacheOpcodes.DECREMENTQ, 67, 13, 38, 108, 66, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, 122, com.sigmob.sdk.archives.tar.e.M, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.QUITQ, 12, 112, 104, BinaryMemcacheOpcodes.DECREMENTQ, com.sigmob.sdk.archives.tar.e.N, 101, 126, com.sigmob.sdk.archives.tar.e.N, BinaryMemcacheOpcodes.DECREMENTQ, 70, 13, 118, 109, 65, com.sigmob.sdk.archives.tar.e.N, 101, ByteCompanionObject.MAX_VALUE, 98, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.QUITQ, 13, 117, 108, 74, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, 126, 101}))));
            Object objNewInstance = cls.getConstructor(Context.class).newInstance(contextTt);
            Method declaredMethod = cls.getDeclaredMethod(new String(pblr.c((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "81e6d5", new byte[]{ByteCompanionObject.MAX_VALUE, 100, 64, BinaryMemcacheOpcodes.QUITQ, 12, 118, 111, 65, 99, com.sigmob.sdk.archives.tar.e.H, ByteCompanionObject.MAX_VALUE, 102, 65, 16, 13, 115, 109, 71, 98, com.sigmob.sdk.archives.tar.e.K, 124, 99, 64, 68, 12, 117, 109, 69, 99, com.sigmob.sdk.archives.tar.e.L}))), String.class);
            declaredMethod.setAccessible(true);
            dDoubleValue = ((Double) declaredMethod.invoke(objNewInstance, new String(pblr.c((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3a6d16", new byte[]{116, com.sigmob.sdk.archives.tar.e.I, BinaryMemcacheOpcodes.REPLACEQ, 65, 89, 117, com.sigmob.sdk.archives.tar.e.T, BinaryMemcacheOpcodes.DELETEQ, com.sigmob.sdk.archives.tar.e.I, 97, 117, com.sigmob.sdk.archives.tar.e.I, BinaryMemcacheOpcodes.ADDQ, 73, 92, BinaryMemcacheOpcodes.GATKQ, 102, BinaryMemcacheOpcodes.REPLACEQ, com.sigmob.sdk.archives.tar.e.I, 101, 117, com.sigmob.sdk.archives.tar.e.K, BinaryMemcacheOpcodes.REPLACEQ, 65, com.sigmob.sdk.archives.tar.e.S, 114, 102, BinaryMemcacheOpcodes.APPENDQ, com.sigmob.sdk.archives.tar.e.H, 96, 117, HttpConstants.COLON}))))).doubleValue();
        } catch (Throwable unused) {
            dDoubleValue = 0.0d;
        }
        return Integer.toString((int) dDoubleValue);
    }
}
