package v;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97510a = "RSA";

    public static byte[] a(String str, String str2) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] byteArray = null;
        byteArray = null;
        byteArray = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(f97510a).generatePublic(new X509EncodedKeySpec(a.d(str2)));
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(1, publicKeyGeneratePublic);
                byte[] bytes = str.getBytes("UTF-8");
                int blockSize = cipher.getBlockSize();
                byteArrayOutputStream = new ByteArrayOutputStream();
                for (int i10 = 0; i10 < bytes.length; i10 += blockSize) {
                    try {
                        byteArrayOutputStream.write(cipher.doFinal(bytes, i10, bytes.length - i10 < blockSize ? bytes.length - i10 : blockSize));
                    } catch (Exception unused) {
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        return byteArray;
                    } catch (Throwable th) {
                        th = th;
                        byteArrayOutputStream2 = byteArrayOutputStream;
                        if (byteArrayOutputStream2 != null) {
                            try {
                                byteArrayOutputStream2.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (IOException unused3) {
            }
        } catch (Exception unused4) {
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return byteArray;
    }

    private static PublicKey b(String str, String str2) throws Exception {
        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(a.d(str2)));
    }
}
