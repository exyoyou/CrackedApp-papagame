package com.byazt.na;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 662, 15})
public class uj implements Serializable, Comparable<uj> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f17053c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final Charset tt = Charset.forName("UTF-8");
    public static final uj ve = c(new byte[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient String f17054a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public transient int f17055n;
    public final byte[] uj;

    public uj(byte[] bArr) {
        this.uj = bArr;
    }

    public static uj c(byte... bArr) {
        if (bArr != null) {
            return new uj((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof uj) {
            uj ujVar = (uj) obj;
            int iVe = ujVar.ve();
            byte[] bArr = this.uj;
            if (iVe == bArr.length && ujVar.c(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.f17055n;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.uj);
        this.f17055n = iHashCode;
        return iHashCode;
    }

    public String toString() {
        if (this.uj.length == 0) {
            return "[size=0]";
        }
        String strC = c();
        int iC = c(strC, 64);
        if (iC == -1) {
            if (this.uj.length <= 64) {
                return "[hex=" + tt() + "]";
            }
            return "[size=" + this.uj.length + " hex=" + c(0, 64).tt() + "…]";
        }
        String strReplace = strC.substring(0, iC).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iC >= strC.length()) {
            return "[text=" + strReplace + "]";
        }
        return "[size=" + this.uj.length + " text=" + strReplace + "…]";
    }

    public String tt() {
        byte[] bArr = this.uj;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f17053c;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public byte[] uj() {
        return (byte[]) this.uj.clone();
    }

    public int ve() {
        return this.uj.length;
    }

    public String c() {
        String str = this.f17054a;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.uj, tt);
        this.f17054a = str2;
        return str2;
    }

    public static uj c(String str) {
        if (str != null) {
            uj ujVar = new uj(str.getBytes(da.f17051c));
            ujVar.f17054a = str;
            return ujVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public uj c(int i10, int i11) {
        if (i10 >= 0) {
            byte[] bArr = this.uj;
            if (i11 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.uj.length + ")");
            }
            int i12 = i11 - i10;
            if (i12 >= 0) {
                if (i10 == 0 && i11 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, i10, bArr2, 0, i12);
                return new uj(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public byte c(int i10) {
        return this.uj[i10];
    }

    public boolean c(int i10, uj ujVar, int i11, int i12) {
        return ujVar.c(i11, this.uj, i10, i12);
    }

    public boolean c(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0) {
            return false;
        }
        byte[] bArr2 = this.uj;
        return i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && da.c(bArr2, i10, bArr, i11, i12);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(uj ujVar) {
        int iVe = ve();
        int iVe2 = ujVar.ve();
        int iMin = Math.min(iVe, iVe2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iC = c(i10) & 255;
            int iC2 = ujVar.c(i10) & 255;
            if (iC != iC2) {
                return iC < iC2 ? -1 : 1;
            }
        }
        if (iVe == iVe2) {
            return 0;
        }
        return iVe < iVe2 ? -1 : 1;
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
