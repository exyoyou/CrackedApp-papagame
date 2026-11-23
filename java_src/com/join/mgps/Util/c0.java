package com.join.mgps.Util;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes4.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f49522a = "cf9b337069cb5dec34d1b3f266306bd8";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f49523b = "01234567";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f49524c = "utf-8";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final char[] f49525a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

        private static int a(char c10) {
            int i10;
            if (c10 >= 'A' && c10 <= 'Z') {
                return c10 - 'A';
            }
            if (c10 >= 'a' && c10 <= 'z') {
                i10 = c10 - 'a';
            } else {
                if (c10 < '0' || c10 > '9') {
                    if (c10 == '+') {
                        return 62;
                    }
                    if (c10 == '/') {
                        return 63;
                    }
                    if (c10 == '=') {
                        return 0;
                    }
                    throw new RuntimeException("unexpected code: " + c10);
                }
                i10 = (c10 - '0') + 26;
            }
            return i10 + 26;
        }

        private static void b(String s10, OutputStream os) throws IOException {
            int length = s10.length();
            int i10 = 0;
            while (true) {
                if (i10 < length && s10.charAt(i10) <= ' ') {
                    i10++;
                } else {
                    if (i10 == length) {
                        return;
                    }
                    int i11 = i10 + 2;
                    int i12 = i10 + 3;
                    int iA = (a(s10.charAt(i10)) << 18) + (a(s10.charAt(i10 + 1)) << 12) + (a(s10.charAt(i11)) << 6) + a(s10.charAt(i12));
                    os.write((iA >> 16) & 255);
                    if (s10.charAt(i11) == '=') {
                        return;
                    }
                    os.write((iA >> 8) & 255);
                    if (s10.charAt(i12) == '=') {
                        return;
                    }
                    os.write(iA & 255);
                    i10 += 4;
                }
            }
        }

        public static byte[] c(String s10) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                b(s10, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e10) {
                    System.err.println("Error while decoding BASE64: " + e10.toString());
                }
                return byteArray;
            } catch (IOException unused) {
                throw new RuntimeException();
            }
        }

        public static String d(byte[] data) {
            int length = data.length;
            StringBuffer stringBuffer = new StringBuffer((data.length * 3) / 2);
            int i10 = length - 3;
            int i11 = 0;
            loop0: while (true) {
                int i12 = 0;
                while (true) {
                    if (i11 > i10) {
                        break loop0;
                    }
                    int i13 = ((data[i11] & 255) << 16) | ((data[i11 + 1] & 255) << 8) | (data[i11 + 2] & 255);
                    char[] cArr = f49525a;
                    stringBuffer.append(cArr[(i13 >> 18) & 63]);
                    stringBuffer.append(cArr[(i13 >> 12) & 63]);
                    stringBuffer.append(cArr[(i13 >> 6) & 63]);
                    stringBuffer.append(cArr[i13 & 63]);
                    i11 += 3;
                    int i14 = i12 + 1;
                    if (i12 >= 14) {
                        break;
                    }
                    i12 = i14;
                }
                stringBuffer.append(" ");
            }
            int i15 = 0 + length;
            if (i11 == i15 - 2) {
                int i16 = ((data[i11 + 1] & 255) << 8) | ((data[i11] & 255) << 16);
                char[] cArr2 = f49525a;
                stringBuffer.append(cArr2[(i16 >> 18) & 63]);
                stringBuffer.append(cArr2[(i16 >> 12) & 63]);
                stringBuffer.append(cArr2[(i16 >> 6) & 63]);
                stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            } else if (i11 == i15 - 1) {
                int i17 = (data[i11] & 255) << 16;
                char[] cArr3 = f49525a;
                stringBuffer.append(cArr3[(i17 >> 18) & 63]);
                stringBuffer.append(cArr3[(i17 >> 12) & 63]);
                stringBuffer.append("==");
            }
            return stringBuffer.toString();
        }
    }

    public static String a(String encryptText) throws Exception {
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("desede").generateSecret(new DESedeKeySpec(f49522a.getBytes()));
        Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
        cipher.init(2, secretKeyGenerateSecret, new IvParameterSpec(f49523b.getBytes()));
        return new String(cipher.doFinal(a.c(encryptText)), f49524c);
    }

    public static String b(String plainText) throws Exception {
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("desede").generateSecret(new DESedeKeySpec(f49522a.getBytes()));
        Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
        cipher.init(1, secretKeyGenerateSecret, new IvParameterSpec(f49523b.getBytes()));
        return a.d(cipher.doFinal(plainText.getBytes(f49524c)));
    }

    public static String c(String str) {
        try {
            byte[] bytes = str.getBytes(net.lingala.zip4j.util.e.A0);
            int length = bytes.length + (8 - (bytes.length % 8));
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            for (int length2 = bytes.length; length2 < length; length2++) {
                bArr[length2] = 0;
            }
            return new String(bArr, net.lingala.zip4j.util.e.A0);
        } catch (UnsupportedEncodingException unused) {
            System.out.println("Crypter.padding UnsupportedEncodingException");
            return null;
        }
    }
}
