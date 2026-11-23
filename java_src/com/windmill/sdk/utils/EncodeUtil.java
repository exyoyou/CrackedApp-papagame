package com.windmill.sdk.utils;

import android.util.Base64;
import com.windmill.sdk.base.WMLogUtil;
import java.net.URLEncoder;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;

/* JADX INFO: loaded from: classes8.dex */
public class EncodeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f87341a = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBALjMT+wA6DuUbhfoa6y048s5MXW+8F6nq6LsoaZ1cCuRt08KSFhgy0bjwujKVLKymgQRQQaFRHEjavi3Wwo/PocCAwEAAQ==";

    public static byte[] encrypt1(String message, PublicKey publicKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(1, publicKey);
        return cipher.doFinal(message.getBytes("UTF-8"));
    }

    public static byte[] encrypt2(String message, PublicKey publicKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKey);
        return cipher.doFinal(message.getBytes("UTF-8"));
    }

    public static byte[] encrypt3(String message, byte[] publicKeyBytes) throws Exception {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(publicKeyBytes));
        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWITHSHA-256ANDMGF1PADDING");
        cipher.init(1, publicKeyGeneratePublic, new OAEPParameterSpec("SHA-256", "MGF1", new MGF1ParameterSpec("SHA-1"), PSource.PSpecified.DEFAULT));
        return cipher.doFinal(message.getBytes("UTF-8"));
    }

    public static String getEncodePrice(String price) {
        try {
            WMLogUtil.i("-------s2sWinSendUrl 加密前price " + price);
            String strEncodeToString = Base64.encodeToString(encrypt2(price, readPublicKeyFromPemFile()), 2);
            WMLogUtil.i("-----enc0 " + strEncodeToString.trim());
            String strEncode = URLEncoder.encode(strEncodeToString.trim());
            WMLogUtil.i("----Encrypted--URLEncoder : " + strEncode);
            return strEncode;
        } catch (Exception e10) {
            e10.printStackTrace();
            return price;
        }
    }

    public static PublicKey readPublicKeyFromPemFile() throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(f87341a, 0)));
    }
}
