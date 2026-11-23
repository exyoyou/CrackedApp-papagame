package ms.bz.bd.c.Pgl;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.BufferedInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class pbly extends pblz.pgla {
    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(int i10, int i11, long j10, String str, Object obj) throws Throwable {
        if (!g1.c((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ebec9c", new byte[]{117, 110, BinaryMemcacheOpcodes.ADDQ, 5, 9, 125, 98, 13, BinaryMemcacheOpcodes.GATKQ, com.sigmob.sdk.archives.tar.e.N, 102, 109, 31, 4, BinaryMemcacheOpcodes.INCREMENTQ, 125, 105, 77, 122, 26, 90, 84, com.sigmob.sdk.archives.tar.e.K, 37, 40, 81, 82}))) {
            return null;
        }
        switch (i10) {
            case 196609:
                Object[] objArr = (Object[]) obj;
                return c(str, (byte[]) objArr[0], (String) objArr[1], (String) objArr[2]);
            case 196610:
                Object[] objArr2 = (Object[]) obj;
                return c(str, (String) objArr2[0], (String) objArr2[1]);
            case 196611:
                Object[] objArr3 = (Object[]) obj;
                return tt(str, (String) objArr3[0], (String) objArr3[1]);
            default:
                return super.c(i10, i11, j10, str, obj);
        }
    }

    public abstract Object[] c(String str, String str2, String str3);

    public abstract Object[] c(String str, byte[] bArr, String str2, String str3);

    public abstract Object[] tt(String str, String str2, String str3);

    protected static void c(BufferedInputStream bufferedInputStream) {
        if (bufferedInputStream != null) {
            try {
                bufferedInputStream.close();
            } catch (IOException unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "89a9c1", new byte[]{BinaryMemcacheOpcodes.GATKQ, 56, 45, 78, 85});
            }
        }
    }

    protected static void c(DataOutputStream dataOutputStream) {
        if (dataOutputStream != null) {
            try {
                dataOutputStream.close();
            } catch (IOException unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4633b1", new byte[]{40, com.sigmob.sdk.archives.tar.e.O, ByteCompanionObject.MAX_VALUE, 68, 82});
            }
        }
    }
}
