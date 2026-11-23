package com.sdk.q;

import com.sdk.p.e;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a {
    @Override // com.sdk.q.a
    public String a(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        int i10 = com.sdk.o.b.f78567a;
        PublicKey publicKeyA = com.sdk.o.a.a(str);
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKeyA);
        return com.sdk.p.c.a(cipher.doFinal(str2.getBytes(Charset.defaultCharset()))).toString();
    }

    @Override // com.sdk.q.a
    public String b(String str, String str2) throws Exception {
        String strSubstring = str.substring(0, 16);
        String strSubstring2 = str.substring(16);
        String str3 = com.sdk.p.a.f78568a;
        if (str2 != null) {
            try {
                if (str2.length() != 0 && str2.trim().length() != 0) {
                    if (strSubstring == null) {
                        throw new Exception("decrypt key is null");
                    }
                    if (strSubstring.length() != 16) {
                        throw new Exception("decrypt key length error");
                    }
                    if (strSubstring2.length() != 16) {
                        throw new Exception(" iv decrypt key length error");
                    }
                    byte[] bArrA = com.sdk.p.c.a(str2);
                    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                    cipher.init(2, new SecretKeySpec(strSubstring.getBytes("utf-8"), "AES"), new IvParameterSpec(strSubstring2.getBytes("utf-8")));
                    return new String(cipher.doFinal(bArrA), "utf-8");
                }
            } catch (Exception e10) {
                throw new Exception("decrypt errot", e10);
            }
        }
        return null;
    }

    @Override // com.sdk.q.a
    public String a(String str) {
        String str2 = e.f78575a;
        if (com.sdk.r.a.a(str).booleanValue()) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(Charset.defaultCharset()));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                String hexString = Integer.toHexString(b10 & 255);
                if (hexString.length() == 1) {
                    sb2.append("0");
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        } catch (Exception e10) {
            com.sdk.h.a.a(e.f78575a, "encrypt", e10.getMessage(), e.f78576b);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    @Override // com.sdk.q.a
    public String a(String str, String str2, String str3) {
        String str4;
        String str5 = com.sdk.p.a.f78568a;
        String strA = null;
        if (str3 != null) {
            try {
                if (str3.length() == 0 || str3.trim().length() == 0) {
                    str4 = "encrypt content is null";
                } else if (str == null) {
                    str4 = "encrypt key is null";
                } else if (str.length() != 16) {
                    str4 = "encrypt key length error";
                } else if (str2.length() != 16) {
                    str4 = "ivStr length error";
                } else {
                    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                    cipher.init(1, new SecretKeySpec(str.getBytes("utf-8"), "AES"), new IvParameterSpec(str2.getBytes("utf-8")));
                    strA = com.sdk.p.c.a(cipher.doFinal(str3.getBytes("utf-8")));
                }
                com.sdk.h.a.a(str5, "EncryptCbcIv", str4, com.sdk.p.a.f78569b);
            } catch (Exception e10) {
                com.sdk.h.a.a(com.sdk.p.a.f78568a, "EncryptCbcIv", e10.getMessage(), com.sdk.p.a.f78569b);
            }
        } else {
            str4 = "encrypt content is null";
            com.sdk.h.a.a(str5, "EncryptCbcIv", str4, com.sdk.p.a.f78569b);
        }
        return strA;
    }
}
