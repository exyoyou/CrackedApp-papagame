package com.alipay.security.mobile.module.commonutils.crypto;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7275a = "HmacSHA1";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7276b = "HMAC-SHA-1";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7277c = "RAW";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f7278d = e.d("7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648");

    private c() {
    }

    private static String a(String str) throws InvalidKeyException {
        Mac mac;
        if (c0.a.b(str)) {
            return null;
        }
        try {
            try {
                mac = Mac.getInstance(f7275a);
            } catch (NoSuchAlgorithmException | Exception unused) {
                return null;
            }
        } catch (NoSuchAlgorithmException unused2) {
            mac = Mac.getInstance(f7276b);
        }
        mac.init(new SecretKeySpec(f7278d, f7277c));
        byte[] bArrDoFinal = mac.doFinal(str.getBytes("UTF-8"));
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 16; i10++) {
            sb2.append(String.format("%02x", Byte.valueOf(bArrDoFinal[i10])));
        }
        return sb2.toString();
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac;
        try {
            mac = Mac.getInstance(f7275a);
        } catch (NoSuchAlgorithmException unused) {
            mac = Mac.getInstance(f7276b);
        }
        mac.init(new SecretKeySpec(bArr2, f7277c));
        return mac.doFinal(bArr);
    }
}
