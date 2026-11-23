package com.czhj.wire.okio;

import com.alipay.security.mobile.module.commonutils.crypto.c;
import com.kuaishou.weapon.p0.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes9.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final byte[] f25922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    transient int f25923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient String f25924d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final char[] f25921a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ByteString EMPTY = of(new byte[0]);

    ByteString(byte[] bArr) {
        this.f25922b = bArr;
    }

    private static int a(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (c10 < 'a' || c10 > 'f') {
            c11 = 'A';
            if (c10 < 'A' || c10 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c10);
            }
        }
        return (c10 - c11) + 10;
    }

    public static ByteString decodeBase64(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] bArrDecode = Base64.decode(str);
        if (bArrDecode != null) {
            return new ByteString(bArrDecode);
        }
        return null;
    }

    public static ByteString decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((a(str.charAt(i11)) << 4) + a(str.charAt(i11 + 1)));
        }
        return of(bArr);
    }

    public static ByteString encodeString(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        if (charset != null) {
            return new ByteString(str.getBytes(charset));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public static ByteString encodeUtf8(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        ByteString byteString = new ByteString(str.getBytes(Util.UTF_8));
        byteString.f25924d = str;
        return byteString;
    }

    public static ByteString of(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("data == null");
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return new ByteString(bArr);
    }

    public static ByteString read(InputStream inputStream, int i10) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i10);
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = inputStream.read(bArr, i11, i10 - i11);
            if (i12 == -1) {
                throw new EOFException();
            }
            i11 += i12;
        }
        return new ByteString(bArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString byteString = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField(t.f74887l);
            declaredField.setAccessible(true);
            declaredField.set(this, byteString.f25922b);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f25922b.length);
        objectOutputStream.write(this.f25922b);
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.f25922b).asReadOnlyBuffer();
    }

    public String base64() {
        return Base64.encode(this.f25922b);
    }

    public String base64Url() {
        return Base64.encodeUrl(this.f25922b);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int iMin = Math.min(size, size2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int i11 = getByte(i10) & 255;
            int i12 = byteString.getByte(i10) & 255;
            if (i11 != i12) {
                return i11 < i12 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public final boolean endsWith(ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int size = byteString.size();
            byte[] bArr = this.f25922b;
            if (size == bArr.length && byteString.rangeEquals(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte getByte(int i10) {
        return this.f25922b[i10];
    }

    public int hashCode() {
        int i10 = this.f25923c;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.f25922b);
        this.f25923c = iHashCode;
        return iHashCode;
    }

    public String hex() {
        byte[] bArr = this.f25922b;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f25921a;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public ByteString hmacSha1(ByteString byteString) {
        return a(c.f7275a, byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return a("HmacSHA256", byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        return a("HmacSHA512", byteString);
    }

    public final int indexOf(ByteString byteString) {
        return indexOf(byteString.a(), 0);
    }

    public final int lastIndexOf(ByteString byteString) {
        return lastIndexOf(byteString.a(), size());
    }

    public ByteString md5() {
        return a("MD5");
    }

    public boolean rangeEquals(int i10, ByteString byteString, int i11, int i12) {
        return byteString.rangeEquals(i11, this.f25922b, i10, i12);
    }

    public ByteString sha1() {
        return a("SHA-1");
    }

    public ByteString sha256() {
        return a("SHA-256");
    }

    public ByteString sha512() {
        return a("SHA-512");
    }

    public int size() {
        return this.f25922b.length;
    }

    public final boolean startsWith(ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public String string(Charset charset) {
        if (charset != null) {
            return new String(this.f25922b, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public ByteString substring(int i10) {
        return substring(i10, this.f25922b.length);
    }

    public ByteString toAsciiLowercase() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f25922b;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArr2.length; i11++) {
                    byte b11 = bArr2[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArr2[i11] = (byte) (b11 + 32);
                    }
                }
                return new ByteString(bArr2);
            }
            i10++;
        }
    }

    public ByteString toAsciiUppercase() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f25922b;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 97 && b10 <= 122) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < bArr2.length; i11++) {
                    byte b11 = bArr2[i11];
                    if (b11 >= 97 && b11 <= 122) {
                        bArr2[i11] = (byte) (b11 - 32);
                    }
                }
                return new ByteString(bArr2);
            }
            i10++;
        }
    }

    public byte[] toByteArray() {
        return (byte[]) this.f25922b.clone();
    }

    public String toString() {
        StringBuilder sb2;
        StringBuilder sb3;
        if (this.f25922b.length == 0) {
            return "[size=0]";
        }
        String strUtf8 = utf8();
        int iA = a(strUtf8, 64);
        if (iA == -1) {
            if (this.f25922b.length <= 64) {
                sb3 = new StringBuilder();
                sb3.append("[hex=");
                sb3.append(hex());
                sb3.append("]");
            } else {
                sb3 = new StringBuilder();
                sb3.append("[size=");
                sb3.append(this.f25922b.length);
                sb3.append(" hex=");
                sb3.append(substring(0, 64).hex());
                sb3.append("…]");
            }
            return sb3.toString();
        }
        String strReplace = strUtf8.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iA < strUtf8.length()) {
            sb2 = new StringBuilder();
            sb2.append("[size=");
            sb2.append(this.f25922b.length);
            sb2.append(" text=");
            sb2.append(strReplace);
            sb2.append("…]");
        } else {
            sb2 = new StringBuilder();
            sb2.append("[text=");
            sb2.append(strReplace);
            sb2.append("]");
        }
        return sb2.toString();
    }

    public String utf8() {
        String str = this.f25924d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f25922b, Util.UTF_8);
        this.f25924d = str2;
        return str2;
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        outputStream.write(this.f25922b);
    }

    static int a(String str, int i10) {
        int length = str.length();
        int iCharCount = 0;
        int i11 = 0;
        while (iCharCount < length) {
            if (i11 == i10) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i11++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    public static ByteString of(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public final int indexOf(ByteString byteString, int i10) {
        return indexOf(byteString.a(), i10);
    }

    public final int lastIndexOf(ByteString byteString, int i10) {
        return lastIndexOf(byteString.a(), i10);
    }

    public boolean rangeEquals(int i10, byte[] bArr, int i11, int i12) {
        if (i10 >= 0) {
            byte[] bArr2 = this.f25922b;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && Util.arrayRangeEquals(bArr2, i10, bArr, i11, i12)) {
                return true;
            }
        }
        return false;
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public ByteString substring(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f25922b;
        if (i11 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f25922b.length + ")");
        }
        int i12 = i11 - i10;
        if (i12 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i10 == 0 && i11 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10, bArr2, 0, i12);
        return new ByteString(bArr2);
    }

    private ByteString a(String str) {
        try {
            return of(MessageDigest.getInstance(str).digest(this.f25922b));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static ByteString of(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        Util.checkOffsetAndCount(bArr.length, i10, i11);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new ByteString(bArr2);
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    private ByteString a(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            return of(mac.doFinal(this.f25922b));
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new AssertionError(e11);
        }
    }

    public int indexOf(byte[] bArr, int i10) {
        int length = this.f25922b.length - bArr.length;
        for (int iMax = Math.max(i10, 0); iMax <= length; iMax++) {
            if (Util.arrayRangeEquals(this.f25922b, iMax, bArr, 0, bArr.length)) {
                return iMax;
            }
        }
        return -1;
    }

    public int lastIndexOf(byte[] bArr, int i10) {
        for (int iMin = Math.min(i10, this.f25922b.length - bArr.length); iMin >= 0; iMin--) {
            if (Util.arrayRangeEquals(this.f25922b, iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    void a(Buffer buffer) {
        byte[] bArr = this.f25922b;
        buffer.write(bArr, 0, bArr.length);
    }

    byte[] a() {
        return this.f25922b;
    }
}
