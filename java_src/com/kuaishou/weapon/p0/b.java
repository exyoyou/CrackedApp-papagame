package com.kuaishou.weapon.p0;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f74477a = "AES/CBC/NoPadding";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f74478b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f74479c = "a3NyaXNrY3RsYnVzaW5zc3Z4cHprd3NwYWlvcXBrc3M=";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f74480d = "AES/CBC/PKCS5Padding";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f74481e = "AES";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f74482f = "AES/CBC/PKCS7Padding";

    public static byte[] a(String str, String str2, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), f74481e);
        Cipher cipher = Cipher.getInstance(f74480d);
        cipher.init(1, secretKeySpec, new IvParameterSpec(str2.getBytes()));
        return cipher.doFinal(bArr);
    }

    public static byte[] b(String str, String str2, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), f74481e);
        Cipher cipher = Cipher.getInstance(f74480d);
        cipher.init(2, secretKeySpec, new IvParameterSpec(str.getBytes()));
        return cipher.doFinal(bArr);
    }

    public static int c(String str, String str2, byte[] bArr) {
        CipherInputStream cipherInputStream;
        FileInputStream fileInputStream;
        try {
            String str3 = new String(bArr);
            if (str3.length() < 16) {
                int length = str3.length();
                StringBuilder sb2 = new StringBuilder(str3);
                for (int i10 = 0; i10 < 16 - length; i10++) {
                    sb2.append("0");
                }
                str3 = sb2.toString();
            } else if (str3.length() > 16) {
                str3 = str3.substring(0, 16);
            }
            FileOutputStream fileOutputStream = null;
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(str2);
                    try {
                        SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(), f74481e);
                        Cipher cipher = Cipher.getInstance(f74480d);
                        byte[] bArr2 = new byte[16];
                        for (int i11 = 0; i11 < 16; i11++) {
                            bArr2[i11] = 0;
                        }
                        cipher.init(2, secretKeySpec, new IvParameterSpec(bArr2));
                        cipherInputStream = new CipherInputStream(fileInputStream, cipher);
                        try {
                            byte[] bArr3 = new byte[1024];
                            while (true) {
                                int i12 = cipherInputStream.read(bArr3);
                                if (i12 == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr3, 0, i12);
                            }
                            cipherInputStream.close();
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused) {
                            }
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                        } catch (Throwable unused3) {
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused4) {
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (cipherInputStream != null) {
                            }
                            return 0;
                        }
                    } catch (Throwable unused6) {
                        cipherInputStream = null;
                    }
                } catch (Throwable unused7) {
                    cipherInputStream = null;
                }
            } catch (Throwable unused8) {
                cipherInputStream = null;
                fileInputStream = null;
            }
            try {
                cipherInputStream.close();
            } catch (IOException unused9) {
            }
            return 0;
        } catch (Throwable unused10) {
            return -1;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, boolean z10) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, f74481e);
            Cipher cipher = Cipher.getInstance(f74480d);
            byte[] bArr3 = new byte[16];
            for (int i10 = 0; i10 < 16; i10++) {
                bArr3[i10] = 0;
            }
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            if (z10) {
                byte[] bArr4 = new byte[bArr2.length - 16];
                System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length - 16);
                bArr2 = bArr4;
            }
            return cipher.doFinal(bArr2);
        } catch (Throwable th) {
            System.out.println(th.getMessage());
            return null;
        }
    }
}
