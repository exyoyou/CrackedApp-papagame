package cn.com.chinatelecom.account.api.d;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f900a = "l";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static byte[] f901b = {68, 64, 94, com.sigmob.sdk.archives.tar.e.I, 69, BinaryMemcacheOpcodes.GATK, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.Q};

    public static String a(byte[] bArr) {
        try {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                bArr2[i10] = bArr[i10];
                for (byte b10 : f901b) {
                    bArr2[i10] = (byte) (b10 ^ bArr2[i10]);
                }
            }
            return new String(bArr2);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
