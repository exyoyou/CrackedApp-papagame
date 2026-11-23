package ms.bz.bd.c.Pgl;

import android.util.SparseArray;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class pblz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f94453c = 0;
    private static final SparseArray<pgla> tt = new SparseArray<>();

    public static abstract class pgla {
        public Object c(int i10, int i11, long j10, String str, Object obj) throws Throwable {
            return c(j10, str, obj);
        }

        protected Object c(long j10, String str, Object obj) throws Throwable {
            return null;
        }
    }

    public static Object c(int i10, int i11, long j10, String str, Object obj) {
        pgla pglaVar = tt.get(i10);
        if (pglaVar == null) {
            throw new RuntimeException(String.format((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "90798e", new byte[]{39, 34, 4, 78, 8, 118, Utf8.REPLACEMENT_BYTE, 81, BinaryMemcacheOpcodes.GATK, 109, 104, HttpConstants.SEMICOLON, 87, 13, 14, 124, HttpConstants.COMMA, 16, 106, 96, HttpConstants.COMMA}), Integer.valueOf(i10)));
        }
        try {
            return pglaVar.c(i10, i11, j10, str, obj);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public static void c(int i10, pgla pglaVar) {
        SparseArray<pgla> sparseArray = tt;
        pgla pglaVar2 = sparseArray.get(i10);
        if (pglaVar2 != null) {
            throw new RuntimeException(String.format((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c6ad67", new byte[]{com.sigmob.sdk.archives.tar.e.O, 39, 82, BinaryMemcacheOpcodes.FLUSHQ, 8, BinaryMemcacheOpcodes.GATKQ, 32, BinaryMemcacheOpcodes.INCREMENTQ, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.I, 124, 116, 0, BinaryMemcacheOpcodes.INCREMENTQ, 14, 41, 115, 3, com.sigmob.sdk.archives.tar.e.M, 38, 60}), pglaVar2.toString()));
        }
        sparseArray.put(i10, pglaVar);
    }
}
