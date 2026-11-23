package cn.fly.tools.utils;

import android.text.TextUtils;
import android.util.Base64;
import cn.fly.commons.C1293r;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.util.zip.CRC32;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes7.dex */
public class Data implements PublicMemberKeeper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal<Cipher> f2131b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadLocal<Cipher> f2132c = new ThreadLocal<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<MessageDigest> f2130a = new ThreadLocal<MessageDigest>() { // from class: cn.fly.tools.utils.Data.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MessageDigest initialValue() {
            try {
                return MessageDigest.getInstance(cn.fly.commons.a.m.a("0039idgmij"));
            } catch (Throwable th) {
                try {
                    FlyLog.getInstance().w(th);
                    return null;
                } catch (Throwable unused) {
                    return null;
                }
            }
        }
    };

    public static String AES128Decode(String str, byte[] bArr) throws Throwable {
        if (str == null || bArr == null) {
            return null;
        }
        return new String(AES128Decode(str.getBytes("UTF-8"), bArr), "UTF-8").trim();
    }

    public static byte[] AES128Encode(String str, String str2) throws Throwable {
        if (str == null || str2 == null) {
            return null;
        }
        byte[] bytes = str.getBytes("UTF-8");
        byte[] bArr = new byte[16];
        System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
        return AES128Encode(bArr, str2);
    }

    public static String AES128PaddingDecode(String str, String str2) throws Throwable {
        if (str == null || str2 == null) {
            return null;
        }
        return AES128PaddingDecode(str, Base64.decode(str2, 0));
    }

    public static String Base64AES(String str, String str2) {
        try {
            String strEncodeToString = Base64.encodeToString(AES128Encode(str2, str), 0);
            return strEncodeToString.contains("\n") ? strEncodeToString.replace("\n", "") : strEncodeToString;
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    public static String CRC32(byte[] bArr) throws Throwable {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr);
        long value = crc32.getValue();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("%02x", Integer.valueOf(((byte) (value >>> 56)) & 255)));
        sb2.append(String.format("%02x", Integer.valueOf(((byte) (value >>> 48)) & 255)));
        sb2.append(String.format("%02x", Integer.valueOf(((byte) (value >>> 40)) & 255)));
        sb2.append(String.format("%02x", Integer.valueOf(((byte) (value >>> 32)) & 255)));
        sb2.append(String.format("%02x", Integer.valueOf(((byte) (value >>> 24)) & 255)));
        sb2.append(String.format("%02x", Integer.valueOf(((byte) (value >>> 16)) & 255)));
        sb2.append(String.format("%02x", Integer.valueOf(((byte) (value >>> 8)) & 255)));
        sb2.append(String.format("%02x", Integer.valueOf(((byte) value) & 255)));
        while (sb2.charAt(0) == '0') {
            sb2 = sb2.deleteCharAt(0);
        }
        return sb2.toString().toLowerCase();
    }

    public static byte[] EncodeNoPadding(String str, String str2) throws Throwable {
        if (str == null || str2 == null) {
            return null;
        }
        byte[] bytes = str.getBytes("UTF-8");
        byte[] bArr = new byte[16];
        System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
        int length = 16 - (str2.length() % 16);
        StringBuilder sb2 = new StringBuilder(str2);
        for (int i10 = 0; i10 < length; i10++) {
            sb2.append(" ");
        }
        byte[] bytes2 = sb2.toString().getBytes("UTF-8");
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, cn.fly.commons.a.m.a("0031gehjfm"));
        try {
            Cipher cipherB = b();
            cipherB.init(1, secretKeySpec);
            return cipherB.doFinal(bytes2);
        } catch (Throwable th) {
            try {
                f2132c.remove();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public static String MD5(String str) {
        byte[] bArrRawMD5;
        if (str == null || (bArrRawMD5 = rawMD5(str)) == null) {
            return null;
        }
        return bytesToHexFaster(bArrRawMD5);
    }

    public static byte[] SHA1(String str) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return SHA1(str.getBytes("utf-8"));
    }

    private static Cipher a() throws Throwable {
        ThreadLocal<Cipher> threadLocal = f2131b;
        Cipher cipher = threadLocal.get();
        if (cipher == null) {
            cipher = getCipher(cn.fly.commons.a.m.a("003?gehjfm") + cn.fly.commons.a.m.a("003mHhjfe") + cn.fly.commons.a.m.a("008Lgk*mDhmjdfefmjlhm") + cn.fly.commons.a.m.a("006e<ededej$fCfk"), cn.fly.commons.a.m.a("002Rgkfe"));
            if (cipher != null) {
                threadLocal.set(cipher);
            }
        }
        return cipher;
    }

    private static Cipher b() throws Throwable {
        ThreadLocal<Cipher> threadLocal = f2132c;
        Cipher cipher = threadLocal.get();
        if (cipher == null) {
            cipher = getCipher(cn.fly.commons.a.m.a("003Ggehjfm") + cn.fly.commons.a.m.a("003m7hjfe") + cn.fly.commons.a.m.a("005VgkPmMfhelhm") + cn.fly.commons.a.m.a("006eTededejEf4fk"), cn.fly.commons.a.m.a("0025gkfe"));
            if (cipher != null) {
                threadLocal.set(cipher);
            }
        }
        return cipher;
    }

    public static String byteToHex(byte[] bArr) {
        return byteToHex(bArr, 0, bArr.length);
    }

    public static String bytesToHexFaster(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            cArr2[i10] = cArr[(b10 >>> 4) & 15];
            int i11 = i10 + 1;
            cArr2[i11] = cArr[b10 & 15];
            i10 = i11 + 1;
        }
        return new String(cArr2);
    }

    public static Cipher getCipher(String str, String str2) throws Throwable {
        Cipher cipher = null;
        if (!TextUtils.isEmpty(str2)) {
            try {
                Provider provider = Security.getProvider(str2);
                if (provider != null) {
                    cipher = Cipher.getInstance(str, provider);
                }
            } catch (Throwable unused) {
            }
        }
        return cipher == null ? Cipher.getInstance(str, str2) : cipher;
    }

    public static byte[] paddingDecode(byte[] bArr, byte[] bArr2) throws Throwable {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, cn.fly.commons.a.m.a("0032gehjfm"));
        try {
            Cipher cipherA = a();
            cipherA.init(2, secretKeySpec);
            return cipherA.doFinal(bArr2);
        } catch (Throwable th) {
            try {
                f2131b.remove();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public static byte[] rawMD5(String str) {
        if (str == null) {
            return null;
        }
        try {
            return rawMD5(str.getBytes("utf-8"));
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    public static String urlEncode(String str) {
        try {
            return urlEncode(str, "utf-8");
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    public static String byteToHex(byte[] bArr, int i10, int i11) {
        StringBuffer stringBuffer = new StringBuffer();
        if (bArr == null) {
            return stringBuffer.toString();
        }
        while (i10 < i11) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i10])));
            i10++;
        }
        return stringBuffer.toString();
    }

    public static String AES128PaddingDecode(String str, byte[] bArr) throws Throwable {
        if (str == null || bArr == null) {
            return null;
        }
        return AES128PaddingDecode(rawMD5(str), bArr);
    }

    public static String MD5(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return MD5(bArr, 0, bArr.length);
    }

    public static byte[] rawMD5(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return rawMD5(bArr, 0, bArr.length);
    }

    public static String urlEncode(String str, String str2) throws Throwable {
        String strEncode = TextUtils.isEmpty(str) ? "" : URLEncoder.encode(str, str2);
        return TextUtils.isEmpty(strEncode) ? strEncode : strEncode.replace("+", "%20");
    }

    public static byte[] AES128Decode(byte[] bArr, byte[] bArr2) throws Throwable {
        return AES128Decode(bArr, bArr2, true);
    }

    public static byte[] AES128Encode(byte[] bArr, String str) throws Throwable {
        if (bArr == null || str == null) {
            return null;
        }
        return AES128Encode(bArr, str.getBytes("UTF-8"));
    }

    public static String MD5(byte[] bArr, int i10, int i11) {
        byte[] bArrRawMD5;
        if (bArr == null || (bArrRawMD5 = rawMD5(bArr, i10, i11)) == null) {
            return null;
        }
        return bytesToHexFaster(bArrRawMD5);
    }

    public static byte[] SHA1(byte[] bArr) throws Throwable {
        MessageDigest messageDigest = MessageDigest.getInstance(cn.fly.commons.a.m.a("0059fmglgeilig"));
        messageDigest.update(bArr);
        return messageDigest.digest();
    }

    public static byte[] rawMD5(byte[] bArr, int i10, int i11) {
        ByteArrayInputStream byteArrayInputStream;
        byte[] bArrRawMD5 = null;
        if (bArr == null) {
            return null;
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr, i10, i11);
            try {
                bArrRawMD5 = rawMD5(byteArrayInputStream);
                C1293r.a(byteArrayInputStream);
            } catch (Throwable th) {
                th = th;
                try {
                    FlyLog.getInstance().w(th);
                    C1293r.a(byteArrayInputStream);
                } catch (Throwable th2) {
                    C1293r.a(byteArrayInputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayInputStream = null;
        }
        return bArrRawMD5;
    }

    public static byte[] AES128Decode(byte[] bArr, byte[] bArr2, boolean z10) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        if (z10) {
            byte[] bArr3 = new byte[16];
            System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
            bArr = bArr3;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, cn.fly.commons.a.m.a("003Wgehjfm"));
        try {
            Cipher cipherB = b();
            cipherB.init(2, secretKeySpec);
            byte[] bArr4 = new byte[cipherB.getOutputSize(bArr2.length)];
            cipherB.doFinal(bArr4, cipherB.update(bArr2, 0, bArr2.length, bArr4, 0));
            return bArr4;
        } catch (Throwable th) {
            try {
                f2132c.remove();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public static String AES128PaddingDecode(byte[] bArr, byte[] bArr2) throws Throwable {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        return new String(paddingDecode(bArr3, bArr2), "UTF-8").trim();
    }

    public static byte[] AES128Encode(byte[] bArr, byte[] bArr2) throws Throwable {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, cn.fly.commons.a.m.a("003<gehjfm"));
        try {
            Cipher cipherA = a();
            cipherA.init(1, secretKeySpec);
            byte[] bArr3 = new byte[cipherA.getOutputSize(bArr2.length)];
            cipherA.doFinal(bArr3, cipherA.update(bArr2, 0, bArr2.length, bArr3, 0));
            return bArr3;
        } catch (Throwable th) {
            try {
                f2131b.remove();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public static String MD5(File file) {
        FileInputStream fileInputStream;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArrRawMD5 = rawMD5(fileInputStream);
                C1293r.a(fileInputStream);
                if (bArrRawMD5 == null) {
                    return null;
                }
                return bytesToHexFaster(bArrRawMD5);
            } catch (Throwable th) {
                th = th;
                try {
                    FlyLog.getInstance().w(th);
                    C1293r.a(fileInputStream);
                    return null;
                } catch (Throwable th2) {
                    C1293r.a(fileInputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static byte[] rawMD5(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            ThreadLocal<MessageDigest> threadLocal = f2130a;
            MessageDigest messageDigest = threadLocal.get();
            if (messageDigest == null) {
                messageDigest = MessageDigest.getInstance(cn.fly.commons.a.m.a("003:idgmij"));
                threadLocal.set(messageDigest);
            }
            messageDigest.reset();
            byte[] bArr = new byte[1024];
            int i10 = inputStream.read(bArr);
            while (i10 != -1) {
                messageDigest.update(bArr, 0, i10);
                i10 = inputStream.read(bArr);
            }
            return messageDigest.digest();
        } catch (Throwable th) {
            try {
                FlyLog.getInstance().w(th);
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static void AES128Decode(String str, InputStream inputStream, OutputStream outputStream) throws Throwable {
        if (str == null) {
            return;
        }
        AES128Decode(str.getBytes("UTF-8"), inputStream, outputStream);
    }

    public static void AES128Decode(byte[] bArr, InputStream inputStream, OutputStream outputStream) throws Throwable {
        if (bArr == null || inputStream == null || outputStream == null) {
            return;
        }
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, 16));
        CipherInputStream cipherInputStream = null;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, cn.fly.commons.a.m.a("003Zgehjfm"));
            Cipher cipherA = a();
            cipherA.init(2, secretKeySpec);
            CipherInputStream cipherInputStream2 = new CipherInputStream(inputStream, cipherA);
            try {
                byte[] bArr3 = new byte[1024];
                for (int i10 = cipherInputStream2.read(bArr3); i10 != -1; i10 = cipherInputStream2.read(bArr3)) {
                    outputStream.write(bArr3, 0, i10);
                }
                outputStream.flush();
                C1293r.a(cipherInputStream2);
            } catch (Throwable th) {
                th = th;
                cipherInputStream = cipherInputStream2;
                try {
                    f2131b.remove();
                } catch (Throwable unused) {
                }
                try {
                    throw th;
                } catch (Throwable th2) {
                    C1293r.a(cipherInputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
