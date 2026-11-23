package com.byakv.z;

import com.byazt.bzd.sp;
import com.byazt.yv.da;

/* JADX INFO: loaded from: classes6.dex */
public class TTEncryptUtils {
    static {
        try {
            sp.c("tobEmbedEncrypt");
        } catch (UnsatisfiedLinkError e10) {
            da.tt(e10);
        }
    }

    public static byte[] c(byte[] bArr, int i10) {
        try {
            return ttEncrypt(bArr, i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static native String clientPackedBase64(byte[] bArr, int i10);

    public static native byte[] clientUnpackedBase64(String str);

    public static native String getDA0Result(String str);

    public static native int[] getDI0Result(String[] strArr);

    public static byte[] tt(byte[] bArr, int i10) {
        try {
            return ttDecrypt(bArr, i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static native byte[] ttDecrypt(byte[] bArr, int i10);

    private static native byte[] ttEncrypt(byte[] bArr, int i10);
}
