package com.baidu.oauth.sdkbqt.a;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f8090a = "UTF-8";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f8091b = "AES/CBC/NoPadding";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f8092c = "AES";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f8094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f8095f;

    public a() {
        this(f8092c, "AES/CBC/NoPadding", "UTF-8");
    }

    public byte[] a(String str, String str2, String str3) throws Exception {
        if (str == null || str.length() == 0) {
            throw new Exception("Empty string");
        }
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str3.getBytes(this.f8093d));
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), this.f8095f);
            Cipher cipher = Cipher.getInstance(this.f8094e);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(a(str).getBytes());
        } catch (NoSuchAlgorithmException e10) {
            d.d(d.f8141a, e10.toString());
            return null;
        }
    }

    public a(String str, String str2) {
        this(str, str2, "UTF-8");
    }

    public a(String str, String str2, String str3) {
        this.f8095f = str;
        this.f8094e = str2;
        this.f8093d = str3;
    }

    public byte[] a(byte[] bArr, String str, String str2) throws Exception {
        if (bArr != null && bArr.length != 0) {
            byte[] bArr2 = new byte[0];
            try {
                IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes(this.f8093d));
                SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), this.f8095f);
                Cipher cipher = Cipher.getInstance(this.f8094e);
                cipher.init(2, secretKeySpec, ivParameterSpec);
                return cipher.doFinal(bArr);
            } catch (Throwable th) {
                d.d(d.f8141a, th.toString());
                return bArr2;
            }
        }
        throw new Exception("Empty string");
    }

    private static String a(String str) {
        int length = 16 - (str.getBytes().length % 16);
        for (int i10 = 0; i10 < length; i10++) {
            str = str + ' ';
        }
        return str;
    }
}
