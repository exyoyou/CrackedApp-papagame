package com.kwad.sdk.core.a;

import java.io.ByteArrayOutputStream;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    private static byte[] a(byte[] bArr, Cipher cipher, int i10) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                int length = bArr.length;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    int i13 = length - i11;
                    if (i13 <= 0) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        return byteArray;
                    }
                    byte[] bArrDoFinal = cipher.doFinal(bArr, i11, Math.min(i13, i10));
                    byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
                    i12++;
                    i11 = i12 * i10;
                    com.kwad.sdk.core.d.c.printStackTrace(e);
                    return new byte[0];
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
            return new byte[0];
        }
    }

    public static byte[] e(byte[] bArr, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (str == null || str.isEmpty()) {
            return null;
        }
        RSAPublicKey rSAPublicKeyEH = eH(str);
        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
        cipher.init(1, rSAPublicKeyEH);
        return a(bArr, cipher, (rSAPublicKeyEH.getModulus().bitLength() / 8) - 66);
    }

    private static RSAPublicKey eH(String str) {
        return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(c.LP().decode(str)));
    }
}
