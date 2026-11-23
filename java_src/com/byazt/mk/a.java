package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 34})
public class a implements Serializable, Comparable<a> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f16913c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final a tt = c(new byte[0]);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public transient String f16914n;
    public transient int uj;
    public final byte[] ve;

    public a(byte[] bArr) {
        this.ve = bArr;
    }

    public static a c(byte... bArr) {
        if (bArr != null) {
            return new a((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public a a() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.ve;
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
                return new a(bArr2);
            }
            i10++;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            int iSp = aVar.sp();
            byte[] bArr = this.ve;
            if (iSp == bArr.length && aVar.c(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.uj;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.ve);
        this.uj = iHashCode;
        return iHashCode;
    }

    public String n() {
        byte[] bArr = this.ve;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f16913c;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public int sp() {
        return this.ve.length;
    }

    public String toString() {
        if (this.ve.length == 0) {
            return "[size=0]";
        }
        String strC = c();
        int iC = c(strC, 64);
        if (iC == -1) {
            if (this.ve.length <= 64) {
                return "[hex=" + n() + "]";
            }
            return "[size=" + this.ve.length + " hex=" + c(0, 64).n() + "…]";
        }
        String strReplace = strC.substring(0, iC).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iC >= strC.length()) {
            return "[text=" + strReplace + "]";
        }
        return "[size=" + this.ve.length + " text=" + strReplace + "…]";
    }

    public String tt() {
        return tt.c(this.ve);
    }

    public a uj() {
        return ve("SHA-256");
    }

    public a ve() {
        return ve("SHA-1");
    }

    public byte[] x() {
        return (byte[]) this.ve.clone();
    }

    public static a tt(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((c(str.charAt(i11)) << 4) + c(str.charAt(i11 + 1)));
        }
        return c(bArr);
    }

    private a ve(String str) {
        try {
            return c(MessageDigest.getInstance(str).digest(this.ve));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static a c(String str) {
        if (str != null) {
            a aVar = new a(str.getBytes(rl.f16926c));
            aVar.f16914n = str;
            return aVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public String c() {
        String str = this.f16914n;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.ve, rl.f16926c);
        this.f16914n = str2;
        return str2;
    }

    private static int c(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (c10 < 'a' || c10 > 'f') {
            c11 = 'A';
            if (c10 < 'A' || c10 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: ".concat(String.valueOf(c10)));
            }
        }
        return (c10 - c11) + 10;
    }

    public a c(int i10, int i11) {
        if (i10 >= 0) {
            byte[] bArr = this.ve;
            if (i11 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.ve.length + ")");
            }
            int i12 = i11 - i10;
            if (i12 >= 0) {
                if (i10 == 0 && i11 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, i10, bArr2, 0, i12);
                return new a(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        int iSp = sp();
        int iSp2 = aVar.sp();
        int iMin = Math.min(iSp, iSp2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iC = c(i10) & 255;
            int iC2 = aVar.c(i10) & 255;
            if (iC != iC2) {
                return iC < iC2 ? -1 : 1;
            }
        }
        if (iSp == iSp2) {
            return 0;
        }
        return iSp < iSp2 ? -1 : 1;
    }

    public byte c(int i10) {
        return this.ve[i10];
    }

    public void c(ve veVar) {
        byte[] bArr = this.ve;
        veVar.ve(bArr, 0, bArr.length);
    }

    public boolean c(int i10, a aVar, int i11, int i12) {
        return aVar.c(i11, this.ve, i10, i12);
    }

    public boolean c(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0) {
            return false;
        }
        byte[] bArr2 = this.ve;
        return i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && rl.c(bArr2, i10, bArr, i11, i12);
    }

    public final boolean c(a aVar) {
        return c(0, aVar, 0, aVar.sp());
    }

    public static int c(String str, int i10) {
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
}
