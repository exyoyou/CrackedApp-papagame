package cn.com.chinatelecom.account.api.a;

import com.sigmob.sdk.archives.tar.e;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f736a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f737b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static byte[] f738c = {68, 64, 94, e.I, e.J, e.Q};

    public static String a(byte[] bArr) {
        try {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                bArr2[i10] = bArr[i10];
                for (byte b10 : f738c) {
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
