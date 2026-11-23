package cn.sharesdk.framework.utils;

/* JADX INFO: loaded from: classes7.dex */
public class d extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f2718a = {'+'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f2719b = net.lingala.zip4j.crypto.PBKDF2.a.f94571a.toCharArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f2720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean[] f2721d;

    public d(String str, boolean z10) {
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        if (z10 && str.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        if (str.contains("%")) {
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        }
        this.f2720c = z10;
        this.f2721d = a(str);
    }

    private static boolean[] a(String str) {
        char[] charArray = str.toCharArray();
        int iMax = 122;
        for (char c10 : charArray) {
            iMax = Math.max((int) c10, iMax);
        }
        boolean[] zArr = new boolean[iMax + 1];
        for (int i10 = 48; i10 <= 57; i10++) {
            zArr[i10] = true;
        }
        for (int i11 = 65; i11 <= 90; i11++) {
            zArr[i11] = true;
        }
        for (int i12 = 97; i12 <= 122; i12++) {
            zArr[i12] = true;
        }
        for (char c11 : charArray) {
            zArr[c11] = true;
        }
        return zArr;
    }

    @Override // cn.sharesdk.framework.utils.l, cn.sharesdk.framework.utils.Escaper
    public String escape(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            boolean[] zArr = this.f2721d;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                return a(str, i10);
            }
        }
        return str;
    }

    @Override // cn.sharesdk.framework.utils.l
    protected int a(CharSequence charSequence, int i10, int i11) {
        while (i10 < i11) {
            char cCharAt = charSequence.charAt(i10);
            boolean[] zArr = this.f2721d;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                break;
            }
            i10++;
        }
        return i10;
    }

    @Override // cn.sharesdk.framework.utils.l
    protected char[] a(int i10) {
        boolean[] zArr = this.f2721d;
        if (i10 < zArr.length && zArr[i10]) {
            return null;
        }
        if (i10 == 32 && this.f2720c) {
            return f2718a;
        }
        if (i10 <= 127) {
            char[] cArr = f2719b;
            return new char[]{'%', cArr[i10 >>> 4], cArr[i10 & 15]};
        }
        if (i10 <= 2047) {
            char[] cArr2 = f2719b;
            char[] cArr3 = {'%', cArr2[(i >>> 4) | 12], cArr2[i & 15], '%', cArr2[(i & 3) | 8], cArr2[i10 & 15]};
            int i11 = i10 >>> 4;
            int i12 = i11 >>> 2;
            return cArr3;
        }
        if (i10 <= 65535) {
            char[] cArr4 = f2719b;
            char[] cArr5 = {'%', 'E', cArr4[i >>> 2], '%', cArr4[(i & 3) | 8], cArr4[i & 15], '%', cArr4[(i & 3) | 8], cArr4[i10 & 15]};
            int i13 = i10 >>> 4;
            int i14 = i13 >>> 2;
            int i15 = i14 >>> 4;
            return cArr5;
        }
        if (i10 <= 1114111) {
            char[] cArr6 = f2719b;
            char[] cArr7 = {'%', 'F', cArr6[(i >>> 2) & 7], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i10 & 15]};
            int i16 = i10 >>> 4;
            int i17 = i16 >>> 2;
            int i18 = i17 >>> 4;
            int i19 = i18 >>> 2;
            int i20 = i19 >>> 4;
            return cArr7;
        }
        throw new IllegalArgumentException("Invalid unicode character value " + i10);
    }
}
