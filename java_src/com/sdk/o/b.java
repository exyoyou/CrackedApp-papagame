package com.sdk.o;

import com.sdk.f.d;
import com.sdk.p.c;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.sdk.h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f78567a = 0;

    static {
        boolean z10 = d.f78521a;
    }

    public static String a(String str, String str2) throws Exception {
        RSAPublicKey rSAPublicKey = (RSAPublicKey) a.a(str2);
        if (com.sdk.r.a.a(str).booleanValue()) {
            throw new Exception("rsaAes key is null");
        }
        byte[] bArrA = c.a(str);
        if (rSAPublicKey == null) {
            throw new Exception("解密公钥为空, 请设置");
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, rSAPublicKey);
            return new String(cipher.doFinal(bArrA), Charset.defaultCharset()).trim();
        } catch (InvalidKeyException unused) {
            throw new InvalidKeyException("解密公钥非法,请检查");
        } catch (NoSuchAlgorithmException unused2) {
            throw new NoSuchAlgorithmException("无此解密算法");
        } catch (BadPaddingException unused3) {
            throw new BadPaddingException("密文数据已损坏");
        } catch (IllegalBlockSizeException unused4) {
            throw new IllegalBlockSizeException("密文长度非法");
        } catch (NoSuchPaddingException unused5) {
            throw new NoSuchPaddingException("解密出错！不支持该填充机制");
        }
    }
}
