package com.baidu.passbqt.common;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
class Security {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f8299a = "Security";

    static class AES {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f8300a = "UTF-8";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String f8301b = "AES/CBC/NoPadding";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f8302c = "AES";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f8303d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f8304e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f8305f;

        public AES() {
            this(f8302c, "AES/CBC/NoPadding", "UTF-8");
        }

        public byte[] a(String str, String str2, String str3) throws Exception {
            if (str == null || str.length() == 0) {
                throw new Exception("Empty string");
            }
            try {
                IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes(this.f8303d));
                SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(), this.f8305f);
                Cipher cipher = Cipher.getInstance(this.f8304e);
                cipher.init(1, secretKeySpec, ivParameterSpec);
                return cipher.doFinal(a(str).getBytes());
            } catch (NoSuchAlgorithmException e10) {
                Log.a(e10);
                return null;
            } catch (NoSuchPaddingException e11) {
                Log.a(e11);
                return null;
            }
        }

        public AES(String str, String str2, String str3) {
            this.f8305f = str;
            this.f8304e = str2;
            this.f8303d = str3;
        }

        public byte[] a(byte[] bArr, String str, String str2) throws Exception {
            if (bArr != null && bArr.length != 0) {
                byte[] bArr2 = new byte[0];
                try {
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(str.getBytes(this.f8303d));
                    SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), this.f8305f);
                    Cipher cipher = Cipher.getInstance(this.f8304e);
                    cipher.init(2, secretKeySpec, ivParameterSpec);
                    return cipher.doFinal(bArr);
                } catch (Throwable th) {
                    Log.a(th);
                    return bArr2;
                }
            }
            throw new Exception("Empty string");
        }

        private String a(String str) {
            int length = 16 - (str.getBytes().length % 16);
            for (int i10 = 0; i10 < length; i10++) {
                str = str + ' ';
            }
            return str;
        }
    }

    Security() {
    }

    public String a(byte[] bArr, boolean z10) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr);
            return a(messageDigest.digest(), "", z10);
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    private String a(byte[] bArr, String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        try {
            for (byte b10 : bArr) {
                String hexString = Integer.toHexString(b10 & 255);
                if (z10) {
                    hexString = hexString.toUpperCase();
                }
                if (hexString.length() == 1) {
                    sb2.append("0");
                }
                sb2.append(hexString);
                sb2.append(str);
            }
        } catch (Exception unused) {
            Log.d(f8299a, "toHexString is error");
        }
        return sb2.toString();
    }

    public String a(byte[] bArr) {
        int i10;
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int length = bArr.length * 8;
        int i11 = 0;
        int i12 = 6;
        int i13 = 0;
        int i14 = 0;
        byte b10 = 0;
        while (true) {
            if (i11 > 0 && i12 > 0) {
                if (i13 >= 0 && i13 < bArr.length - 1) {
                    b10 = (byte) (((bArr[i13] & 255) << i12) | ((bArr[i13 + 1] & 255) >> (8 - i12)));
                }
                b10 = (byte) (b10 & Utf8.REPLACEMENT_BYTE);
                i11 = 8 - i12;
                i12 = 6 - i11;
            } else if (i11 == 0) {
                if (i13 >= 0 && i13 < bArr.length) {
                    b10 = (byte) ((bArr[i13] & 255) >> (8 - i12));
                }
                i11 = 2;
                i12 = 4;
            } else if (i12 == 0) {
                if (i13 >= 0 && i13 < bArr.length) {
                    b10 = (byte) (bArr[i13] & Utf8.REPLACEMENT_BYTE);
                }
                i11 = 0;
                i12 = 6;
            }
            sb2.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(b10));
            i14 += 6;
            int i15 = i14 / 8;
            i10 = length - i14;
            if (i10 < 6) {
                break;
            }
            i13 = i15;
        }
        if (i10 > 0) {
            sb2.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((byte) ((bArr[bArr.length - 1] << (6 - i10)) & 63)));
        }
        int i16 = length % 3;
        for (int i17 = 0; i17 < i16; i17++) {
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
        }
        return sb2.toString();
    }
}
