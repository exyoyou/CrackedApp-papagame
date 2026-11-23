package com.byazt.zv;

import android.text.TextUtils;
import android.util.Base64;
import com.byazt.aas.my;
import com.byazt.fiq.sp;
import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2512, 20})
public class c {
    public static void c(sp spVar, int i10, String str, int i11) throws Exception {
        if (spVar == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        if (i11 != 2 && i11 != 3) {
            String[] strArrC = my.c(true, com.byazt.vxy.c.n());
            jSONObject.put("ipv4List", strArrC[0]);
            jSONObject.put("ipv6List", strArrC[1]);
        }
        jSONObject.put("networkType", String.valueOf(i10));
        jSONObject.put("packageName", str);
        String string = jSONObject.toString();
        byte[] bArrC = c(16);
        String strC = c(bArrC, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkzi87lcyX1t/OSjlmjmj\nUFTAb0Y0wPZ79j10sjVrDtV+lMZXz/hOalITFyXRpmS8g8I1H3AlhihQQsierIFa\nQj5omUsXhzvNO+4DorkMJ14n1o1sfL0iOLTrzydghuUpyspj0M8v5bJTBbLv8DGM\nreKtJ8sbIYC5aj8pAdxn+YTnZ4Rhp/pNRbmIAlxs4Btu3whJt/RTfEASgsDRaTgO\nr9Rlj2YDiyEM4T3d0LsLjNed7B0Ogulzj6OzvHj+foIyb+YEEn6C5F9r+uNY2l2i\nYlHfaizd1HKfISrcAseJu6lGKRP0I3mv538Twqg1u0DFV6waQ9gwgOhq4ORCiNpd\nIQIDAQAB");
        String strC2 = c(string.getBytes(), bArrC);
        spVar.c("sdkSecret", strC);
        spVar.c("sdkData", strC2);
    }

    public static String c(byte[] bArr, byte[] bArr2) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, new SecretKeySpec(bArr2, "AES"), new GCMParameterSpec(128, Arrays.copyOf(bArr2, 12)));
        return Base64.encodeToString(cipher.doFinal(bArr), 2);
    }

    public static String c(byte[] bArr, String str) throws Exception {
        if (bArr == null || TextUtils.isEmpty(str)) {
            return null;
        }
        RSAPublicKey rSAPublicKeyC = c(str);
        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
        cipher.init(1, rSAPublicKeyC);
        return Base64.encodeToString(c(bArr, cipher, (rSAPublicKeyC.getModulus().bitLength() / 8) - 66), 2);
    }

    private static RSAPublicKey c(String str) throws Exception {
        return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
    }

    private static byte[] c(byte[] bArr, Cipher cipher, int i10) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            int length = bArr.length;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                int i13 = length - i11;
                if (i13 > 0) {
                    byte[] bArrDoFinal = cipher.doFinal(bArr, i11, Math.min(i13, i10));
                    byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
                    i12++;
                    i11 = i12 * i10;
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static byte[] c(int i10) {
        byte[] bArr = new byte[i10];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }
}
