package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.android.dex.DexFormat;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.ref.SoftReference;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import okhttp3.HttpUrl;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes7.dex */
public final class v1 extends Writer {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadLocal<SoftReference<char[]>> f6765f = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected char[] f6766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f6767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Writer f6769e;

    public v1() {
        this((Writer) null);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0095 A[PHI: r5 r10
      0x0095: PHI (r5v25 int) = (r5v19 int), (r5v26 int) binds: [B:47:0x00c4, B:27:0x0093] A[DONT_GENERATE, DONT_INLINE]
      0x0095: PHI (r10v10 int) = (r10v5 int), (r10v11 int) binds: [B:47:0x00c4, B:27:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x0098 A[PHI: r5 r10 r11
      0x0098: PHI (r5v22 int) = (r5v19 int), (r5v21 int), (r5v26 int) binds: [B:47:0x00c4, B:39:0x00aa, B:27:0x0093] A[DONT_GENERATE, DONT_INLINE]
      0x0098: PHI (r10v7 int) = (r10v5 int), (r10v6 int), (r10v11 int) binds: [B:47:0x00c4, B:39:0x00aa, B:27:0x0093] A[DONT_GENERATE, DONT_INLINE]
      0x0098: PHI (r11v29 int) = (r11v3 int), (r11v27 int), (r11v3 int) binds: [B:47:0x00c4, B:39:0x00aa, B:27:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    private void g0(char c10, String str, String str2, boolean z10) {
        int length;
        int i10;
        int i11;
        int length2 = str.length();
        int i12 = this.f6767c;
        if (str2 == null) {
            i10 = i12 + length2 + 8;
            length = 4;
        } else {
            length = str2.length();
            i10 = i12 + length2 + length + 6;
        }
        int i13 = 0;
        if (i10 > this.f6766b.length) {
            if (this.f6769e != null) {
                m(c10);
                t0(str, ':', z10);
                t0(str2, (char) 0, z10);
                return;
            }
            e(i10);
        }
        char[] cArr = this.f6766b;
        int i14 = this.f6767c;
        cArr[i14] = c10;
        int i15 = i14 + 2;
        int i16 = i15 + length2;
        cArr[i14 + 1] = '\"';
        str.getChars(0, length2, cArr, i15);
        this.f6767c = i10;
        char[] cArr2 = this.f6766b;
        cArr2[i16] = '\"';
        int i17 = i16 + 1;
        int i18 = i17 + 1;
        cArr2[i17] = ':';
        if (str2 == null) {
            int i19 = i18 + 1;
            cArr2[i18] = 'n';
            int i20 = i19 + 1;
            cArr2[i19] = 'u';
            cArr2[i20] = 'l';
            cArr2[i20 + 1] = 'l';
            return;
        }
        int i21 = i18 + 1;
        cArr2[i18] = '\"';
        int i22 = i21 + length;
        str2.getChars(0, length, cArr2, i21);
        if (z10 && !g(SerializerFeature.DisableCheckSpecialChar)) {
            char c11 = 0;
            int i23 = -1;
            int i24 = -1;
            for (int i25 = i21; i25 < i22; i25++) {
                char c12 = this.f6766b[i25];
                if (c12 == 8232) {
                    i13++;
                    i10 += 4;
                    if (i23 == -1) {
                        i23 = i25;
                        i24 = i23;
                    } else {
                        i24 = i25;
                    }
                    c11 = c12;
                } else if (c12 >= ']') {
                    if (c12 >= 127 && c12 <= 160) {
                        if (i23 == -1) {
                            i23 = i25;
                        }
                        i13++;
                        i10 += 4;
                        i24 = i25;
                        c11 = c12;
                    }
                } else if (h(c12, this.f6768d)) {
                    i13++;
                    byte[] bArr = com.alibaba.fastjson.util.f.f6824d;
                    if (c12 < bArr.length && bArr[c12] == 4) {
                        i10 += 4;
                    }
                    if (i23 == -1) {
                        i23 = i25;
                        i24 = i23;
                    } else {
                        i24 = i25;
                    }
                    c11 = c12;
                }
            }
            if (i13 > 0) {
                int i26 = i10 + i13;
                if (i26 > this.f6766b.length) {
                    e(i26);
                }
                this.f6767c = i26;
                if (i13 == 1) {
                    if (c11 == 8232) {
                        int i27 = i24 + 1;
                        char[] cArr3 = this.f6766b;
                        System.arraycopy(cArr3, i27, cArr3, i24 + 6, (i22 - i24) - 1);
                        char[] cArr4 = this.f6766b;
                        cArr4[i24] = TokenParser.ESCAPE;
                        cArr4[i27] = 'u';
                        int i28 = i27 + 1;
                        cArr4[i28] = '2';
                        int i29 = i28 + 1;
                        cArr4[i29] = '0';
                        int i30 = i29 + 1;
                        cArr4[i30] = '2';
                        cArr4[i30 + 1] = '8';
                    } else {
                        byte[] bArr2 = com.alibaba.fastjson.util.f.f6824d;
                        if (c11 >= bArr2.length || bArr2[c11] != 4) {
                            int i31 = i24 + 1;
                            char[] cArr5 = this.f6766b;
                            System.arraycopy(cArr5, i31, cArr5, i24 + 2, (i22 - i24) - 1);
                            char[] cArr6 = this.f6766b;
                            cArr6[i24] = TokenParser.ESCAPE;
                            cArr6[i31] = com.alibaba.fastjson.util.f.f6826f[c11];
                        } else {
                            int i32 = i24 + 1;
                            char[] cArr7 = this.f6766b;
                            System.arraycopy(cArr7, i32, cArr7, i24 + 6, (i22 - i24) - 1);
                            char[] cArr8 = this.f6766b;
                            cArr8[i24] = TokenParser.ESCAPE;
                            int i33 = i32 + 1;
                            cArr8[i32] = 'u';
                            int i34 = i33 + 1;
                            char[] cArr9 = com.alibaba.fastjson.util.f.f6821a;
                            cArr8[i33] = cArr9[(c11 >>> '\f') & 15];
                            int i35 = i34 + 1;
                            cArr8[i34] = cArr9[(c11 >>> '\b') & 15];
                            cArr8[i35] = cArr9[(c11 >>> 4) & 15];
                            cArr8[i35 + 1] = cArr9[c11 & 15];
                        }
                    }
                } else if (i13 > 1) {
                    for (int i36 = i23 - i21; i36 < str2.length(); i36++) {
                        char cCharAt = str2.charAt(i36);
                        byte[] bArr3 = com.alibaba.fastjson.util.f.f6824d;
                        if ((cCharAt < bArr3.length && bArr3[cCharAt] != 0) || (cCharAt == '/' && g(SerializerFeature.WriteSlashAsSpecial))) {
                            char[] cArr10 = this.f6766b;
                            int i37 = i23 + 1;
                            cArr10[i23] = TokenParser.ESCAPE;
                            if (bArr3[cCharAt] == 4) {
                                int i38 = i37 + 1;
                                cArr10[i37] = 'u';
                                int i39 = i38 + 1;
                                char[] cArr11 = com.alibaba.fastjson.util.f.f6821a;
                                cArr10[i38] = cArr11[(cCharAt >>> '\f') & 15];
                                int i40 = i39 + 1;
                                cArr10[i39] = cArr11[(cCharAt >>> '\b') & 15];
                                int i41 = i40 + 1;
                                cArr10[i40] = cArr11[(cCharAt >>> 4) & 15];
                                i11 = i41 + 1;
                                cArr10[i41] = cArr11[cCharAt & 15];
                            } else {
                                i11 = i37 + 1;
                                cArr10[i37] = com.alibaba.fastjson.util.f.f6826f[cCharAt];
                            }
                            i23 = i11;
                        } else if (cCharAt == 8232) {
                            char[] cArr12 = this.f6766b;
                            int i42 = i23 + 1;
                            cArr12[i23] = TokenParser.ESCAPE;
                            int i43 = i42 + 1;
                            cArr12[i42] = 'u';
                            int i44 = i43 + 1;
                            char[] cArr13 = com.alibaba.fastjson.util.f.f6821a;
                            cArr12[i43] = cArr13[(cCharAt >>> '\f') & 15];
                            int i45 = i44 + 1;
                            cArr12[i44] = cArr13[(cCharAt >>> '\b') & 15];
                            int i46 = i45 + 1;
                            cArr12[i45] = cArr13[(cCharAt >>> 4) & 15];
                            cArr12[i46] = cArr13[cCharAt & 15];
                            i23 = i46 + 1;
                        } else {
                            this.f6766b[i23] = cCharAt;
                            i23++;
                        }
                    }
                }
            }
        }
        this.f6766b[this.f6767c - 1] = '\"';
    }

    static final boolean h(char c10, int i10) {
        if (c10 == ' ') {
            return false;
        }
        if (c10 == '/' && SerializerFeature.isEnabled(i10, SerializerFeature.WriteSlashAsSpecial)) {
            return true;
        }
        if (c10 <= '#' || c10 == '\\') {
            return c10 <= 31 || c10 == '\\' || c10 == '\"';
        }
        return false;
    }

    private void l0(String str) {
        byte[] bArr = com.alibaba.fastjson.util.f.f6824d;
        int length = str.length();
        boolean z10 = true;
        int i10 = this.f6767c + length + 1;
        int i11 = 0;
        if (i10 > this.f6766b.length) {
            if (this.f6769e != null) {
                if (length == 0) {
                    m('\"');
                    m('\"');
                    m(':');
                    return;
                }
                int i12 = 0;
                while (true) {
                    if (i12 < length) {
                        char cCharAt = str.charAt(i12);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i12++;
                        }
                    } else {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    m('\"');
                }
                while (i11 < length) {
                    char cCharAt2 = str.charAt(i11);
                    if (cCharAt2 >= bArr.length || bArr[cCharAt2] == 0) {
                        m(cCharAt2);
                    } else {
                        m(TokenParser.ESCAPE);
                        m(com.alibaba.fastjson.util.f.f6826f[cCharAt2]);
                    }
                    i11++;
                }
                if (z10) {
                    m('\"');
                }
                m(':');
                return;
            }
            e(i10);
        }
        if (length == 0) {
            int i13 = this.f6767c;
            if (i13 + 3 > this.f6766b.length) {
                e(i13 + 3);
            }
            char[] cArr = this.f6766b;
            int i14 = this.f6767c;
            int i15 = i14 + 1;
            cArr[i14] = '\"';
            int i16 = i15 + 1;
            cArr[i15] = '\"';
            this.f6767c = i16 + 1;
            cArr[i16] = ':';
            return;
        }
        int i17 = this.f6767c;
        int i18 = i17 + length;
        str.getChars(0, length, this.f6766b, i17);
        this.f6767c = i10;
        int i19 = i17;
        boolean z11 = false;
        while (i19 < i18) {
            char[] cArr2 = this.f6766b;
            char c10 = cArr2[i19];
            if (c10 < bArr.length && bArr[c10] != 0) {
                if (z11) {
                    i10++;
                    if (i10 > cArr2.length) {
                        e(i10);
                    }
                    this.f6767c = i10;
                    char[] cArr3 = this.f6766b;
                    int i20 = i19 + 1;
                    System.arraycopy(cArr3, i20, cArr3, i19 + 2, i18 - i19);
                    char[] cArr4 = this.f6766b;
                    cArr4[i19] = TokenParser.ESCAPE;
                    cArr4[i20] = com.alibaba.fastjson.util.f.f6826f[c10];
                    i18++;
                    i19 = i20;
                } else {
                    i10 += 3;
                    if (i10 > cArr2.length) {
                        e(i10);
                    }
                    this.f6767c = i10;
                    char[] cArr5 = this.f6766b;
                    int i21 = i19 + 1;
                    System.arraycopy(cArr5, i21, cArr5, i19 + 3, (i18 - i19) - 1);
                    char[] cArr6 = this.f6766b;
                    System.arraycopy(cArr6, i11, cArr6, 1, i19);
                    char[] cArr7 = this.f6766b;
                    cArr7[i17] = '\"';
                    cArr7[i21] = TokenParser.ESCAPE;
                    int i22 = i21 + 1;
                    cArr7[i22] = com.alibaba.fastjson.util.f.f6826f[c10];
                    i18 += 2;
                    cArr7[this.f6767c - 2] = '\"';
                    i19 = i22;
                    z11 = true;
                }
            }
            i19++;
            i11 = 0;
        }
        this.f6766b[this.f6767c - 1] = ':';
    }

    private void m0(String str) {
        byte[] bArr = com.alibaba.fastjson.util.f.f6825e;
        int length = str.length();
        boolean z10 = true;
        int i10 = this.f6767c + length + 1;
        int i11 = 0;
        if (i10 > this.f6766b.length) {
            if (this.f6769e != null) {
                if (length == 0) {
                    m('\'');
                    m('\'');
                    m(':');
                    return;
                }
                int i12 = 0;
                while (true) {
                    if (i12 < length) {
                        char cCharAt = str.charAt(i12);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i12++;
                        }
                    } else {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    m('\'');
                }
                while (i11 < length) {
                    char cCharAt2 = str.charAt(i11);
                    if (cCharAt2 >= bArr.length || bArr[cCharAt2] == 0) {
                        m(cCharAt2);
                    } else {
                        m(TokenParser.ESCAPE);
                        m(com.alibaba.fastjson.util.f.f6826f[cCharAt2]);
                    }
                    i11++;
                }
                if (z10) {
                    m('\'');
                }
                m(':');
                return;
            }
            e(i10);
        }
        if (length == 0) {
            int i13 = this.f6767c;
            if (i13 + 3 > this.f6766b.length) {
                e(i13 + 3);
            }
            char[] cArr = this.f6766b;
            int i14 = this.f6767c;
            int i15 = i14 + 1;
            cArr[i14] = '\'';
            int i16 = i15 + 1;
            cArr[i15] = '\'';
            this.f6767c = i16 + 1;
            cArr[i16] = ':';
            return;
        }
        int i17 = this.f6767c;
        int i18 = i17 + length;
        str.getChars(0, length, this.f6766b, i17);
        this.f6767c = i10;
        int i19 = i17;
        boolean z11 = false;
        while (i19 < i18) {
            char[] cArr2 = this.f6766b;
            char c10 = cArr2[i19];
            if (c10 < bArr.length && bArr[c10] != 0) {
                if (z11) {
                    i10++;
                    if (i10 > cArr2.length) {
                        e(i10);
                    }
                    this.f6767c = i10;
                    char[] cArr3 = this.f6766b;
                    int i20 = i19 + 1;
                    System.arraycopy(cArr3, i20, cArr3, i19 + 2, i18 - i19);
                    char[] cArr4 = this.f6766b;
                    cArr4[i19] = TokenParser.ESCAPE;
                    cArr4[i20] = com.alibaba.fastjson.util.f.f6826f[c10];
                    i18++;
                    i19 = i20;
                } else {
                    i10 += 3;
                    if (i10 > cArr2.length) {
                        e(i10);
                    }
                    this.f6767c = i10;
                    char[] cArr5 = this.f6766b;
                    int i21 = i19 + 1;
                    System.arraycopy(cArr5, i21, cArr5, i19 + 3, (i18 - i19) - 1);
                    char[] cArr6 = this.f6766b;
                    System.arraycopy(cArr6, i11, cArr6, 1, i19);
                    char[] cArr7 = this.f6766b;
                    cArr7[i17] = '\'';
                    cArr7[i21] = TokenParser.ESCAPE;
                    int i22 = i21 + 1;
                    cArr7[i22] = com.alibaba.fastjson.util.f.f6826f[c10];
                    i18 += 2;
                    cArr7[this.f6767c - 2] = '\'';
                    i19 = i22;
                    z11 = true;
                }
            }
            i19++;
            i11 = 0;
        }
        this.f6766b[i10 - 1] = ':';
    }

    private void s0(String str, char c10) {
        t0(str, c10, true);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x023a A[PHI: r4 r11
      0x023a: PHI (r4v33 int) = (r4v27 int), (r4v34 int) binds: [B:134:0x0269, B:114:0x0238] A[DONT_GENERATE, DONT_INLINE]
      0x023a: PHI (r11v18 int) = (r11v13 int), (r11v19 int) binds: [B:134:0x0269, B:114:0x0238] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:116:0x023d A[PHI: r4 r8 r11
      0x023d: PHI (r4v30 int) = (r4v27 int), (r4v29 int), (r4v34 int) binds: [B:134:0x0269, B:126:0x024f, B:114:0x0238] A[DONT_GENERATE, DONT_INLINE]
      0x023d: PHI (r8v16 int) = (r8v2 int), (r8v14 int), (r8v2 int) binds: [B:134:0x0269, B:126:0x024f, B:114:0x0238] A[DONT_GENERATE, DONT_INLINE]
      0x023d: PHI (r11v15 int) = (r11v13 int), (r11v14 int), (r11v19 int) binds: [B:134:0x0269, B:126:0x024f, B:114:0x0238] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd  */
    private void t0(String str, char c10, boolean z10) {
        int i10;
        if (str == null) {
            p0();
            if (c10 != 0) {
                m(c10);
                return;
            }
            return;
        }
        int length = str.length();
        int i11 = this.f6767c + length + 2;
        if (c10 != 0) {
            i11++;
        }
        char c11 = ' ';
        char c12 = '\r';
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                m('\"');
                int i12 = 0;
                while (i12 < str.length()) {
                    char cCharAt = str.charAt(i12);
                    if (!g(SerializerFeature.BrowserCompatible)) {
                        byte[] bArr = com.alibaba.fastjson.util.f.f6824d;
                        if ((cCharAt >= bArr.length || bArr[cCharAt] == 0) && !(cCharAt == '/' && g(SerializerFeature.WriteSlashAsSpecial))) {
                            m(cCharAt);
                        } else {
                            m(TokenParser.ESCAPE);
                            m(com.alibaba.fastjson.util.f.f6826f[cCharAt]);
                        }
                    } else if (cCharAt == '\b' || cCharAt == '\f' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t' || cCharAt == '\"' || cCharAt == '/' || cCharAt == '\\') {
                        m(TokenParser.ESCAPE);
                        m(com.alibaba.fastjson.util.f.f6826f[cCharAt]);
                    } else if (cCharAt < c11) {
                        m(TokenParser.ESCAPE);
                        m('u');
                        m('0');
                        m('0');
                        char[] cArr = com.alibaba.fastjson.util.f.f6827g;
                        int i13 = cCharAt * 2;
                        m(cArr[i13]);
                        m(cArr[i13 + 1]);
                    } else if (cCharAt >= 127) {
                        m(TokenParser.ESCAPE);
                        m('u');
                        char[] cArr2 = com.alibaba.fastjson.util.f.f6821a;
                        m(cArr2[(cCharAt >>> '\f') & 15]);
                        m(cArr2[(cCharAt >>> '\b') & 15]);
                        m(cArr2[(cCharAt >>> 4) & 15]);
                        m(cArr2[cCharAt & 15]);
                    } else {
                        m(cCharAt);
                    }
                    i12++;
                    c11 = ' ';
                }
                m('\"');
                if (c10 != 0) {
                    m(c10);
                    return;
                }
                return;
            }
            e(i11);
        }
        int i14 = this.f6767c;
        int i15 = i14 + 1;
        int i16 = i15 + length;
        char[] cArr3 = this.f6766b;
        cArr3[i14] = '\"';
        char c13 = 0;
        str.getChars(0, length, cArr3, i15);
        this.f6767c = i11;
        int i17 = -1;
        if (g(SerializerFeature.BrowserCompatible)) {
            for (int i18 = i15; i18 < i16; i18++) {
                char c14 = this.f6766b[i18];
                if (c14 == '\"' || c14 == '/' || c14 == '\\' || c14 == '\b' || c14 == '\f' || c14 == '\n' || c14 == '\r' || c14 == '\t') {
                    i11++;
                } else {
                    if (c14 < ' ' || c14 >= 127) {
                        i11 += 5;
                    }
                }
                i17 = i18;
            }
            if (i11 > this.f6766b.length) {
                e(i11);
            }
            this.f6767c = i11;
            while (i17 >= i15) {
                char[] cArr4 = this.f6766b;
                char c15 = cArr4[i17];
                if (c15 == '\b' || c15 == '\f' || c15 == '\n' || c15 == c12 || c15 == '\t') {
                    int i19 = i17 + 1;
                    System.arraycopy(cArr4, i19, cArr4, i17 + 2, (i16 - i17) - 1);
                    char[] cArr5 = this.f6766b;
                    cArr5[i17] = TokenParser.ESCAPE;
                    cArr5[i19] = com.alibaba.fastjson.util.f.f6826f[c15];
                } else {
                    if (c15 == '\"' || c15 == '/' || c15 == '\\') {
                        int i20 = i17 + 1;
                        System.arraycopy(cArr4, i20, cArr4, i17 + 2, (i16 - i17) - 1);
                        char[] cArr6 = this.f6766b;
                        cArr6[i17] = TokenParser.ESCAPE;
                        cArr6[i20] = c15;
                    } else {
                        if (c15 < ' ') {
                            int i21 = i17 + 1;
                            System.arraycopy(cArr4, i21, cArr4, i17 + 6, (i16 - i17) - 1);
                            char[] cArr7 = this.f6766b;
                            cArr7[i17] = TokenParser.ESCAPE;
                            cArr7[i21] = 'u';
                            cArr7[i17 + 2] = '0';
                            cArr7[i17 + 3] = '0';
                            char[] cArr8 = com.alibaba.fastjson.util.f.f6827g;
                            int i22 = c15 * 2;
                            cArr7[i17 + 4] = cArr8[i22];
                            cArr7[i17 + 5] = cArr8[i22 + 1];
                        } else if (c15 >= 127) {
                            int i23 = i17 + 1;
                            System.arraycopy(cArr4, i23, cArr4, i17 + 6, (i16 - i17) - 1);
                            char[] cArr9 = this.f6766b;
                            cArr9[i17] = TokenParser.ESCAPE;
                            cArr9[i23] = 'u';
                            char[] cArr10 = com.alibaba.fastjson.util.f.f6821a;
                            cArr9[i17 + 2] = cArr10[(c15 >>> '\f') & 15];
                            cArr9[i17 + 3] = cArr10[(c15 >>> '\b') & 15];
                            cArr9[i17 + 4] = cArr10[(c15 >>> 4) & 15];
                            cArr9[i17 + 5] = cArr10[c15 & 15];
                        }
                        i16 += 5;
                    }
                    i17--;
                    c12 = '\r';
                }
                i16++;
                i17--;
                c12 = '\r';
            }
            if (c10 == 0) {
                this.f6766b[this.f6767c - 1] = '\"';
                return;
            }
            char[] cArr11 = this.f6766b;
            int i24 = this.f6767c;
            cArr11[i24 - 2] = '\"';
            cArr11[i24 - 1] = c10;
            return;
        }
        if (z10) {
            int i25 = -1;
            int i26 = -1;
            int i27 = 0;
            for (int i28 = i15; i28 < i16; i28++) {
                char c16 = this.f6766b[i28];
                if (c16 == 8232) {
                    i27++;
                    i11 += 4;
                    if (i25 == -1) {
                        i25 = i28;
                        i26 = i25;
                    } else {
                        i26 = i28;
                    }
                    c13 = c16;
                } else if (c16 >= ']') {
                    if (c16 >= 127 && c16 <= 160) {
                        if (i25 == -1) {
                            i25 = i28;
                        }
                        i27++;
                        i11 += 4;
                        i26 = i28;
                        c13 = c16;
                    }
                } else if (h(c16, this.f6768d)) {
                    i27++;
                    byte[] bArr2 = com.alibaba.fastjson.util.f.f6824d;
                    if (c16 < bArr2.length && bArr2[c16] == 4) {
                        i11 += 4;
                    }
                    if (i25 == -1) {
                        i25 = i28;
                        i26 = i25;
                    } else {
                        i26 = i28;
                    }
                    c13 = c16;
                }
            }
            if (i27 > 0) {
                int i29 = i11 + i27;
                if (i29 > this.f6766b.length) {
                    e(i29);
                }
                this.f6767c = i29;
                if (i27 == 1) {
                    if (c13 == 8232) {
                        int i30 = i26 + 1;
                        char[] cArr12 = this.f6766b;
                        System.arraycopy(cArr12, i30, cArr12, i26 + 6, (i16 - i26) - 1);
                        char[] cArr13 = this.f6766b;
                        cArr13[i26] = TokenParser.ESCAPE;
                        cArr13[i30] = 'u';
                        int i31 = i30 + 1;
                        cArr13[i31] = '2';
                        int i32 = i31 + 1;
                        cArr13[i32] = '0';
                        int i33 = i32 + 1;
                        cArr13[i33] = '2';
                        cArr13[i33 + 1] = '8';
                    } else {
                        byte[] bArr3 = com.alibaba.fastjson.util.f.f6824d;
                        if (c13 >= bArr3.length || bArr3[c13] != 4) {
                            int i34 = i26 + 1;
                            char[] cArr14 = this.f6766b;
                            System.arraycopy(cArr14, i34, cArr14, i26 + 2, (i16 - i26) - 1);
                            char[] cArr15 = this.f6766b;
                            cArr15[i26] = TokenParser.ESCAPE;
                            cArr15[i34] = com.alibaba.fastjson.util.f.f6826f[c13];
                        } else {
                            int i35 = i26 + 1;
                            char[] cArr16 = this.f6766b;
                            System.arraycopy(cArr16, i35, cArr16, i26 + 6, (i16 - i26) - 1);
                            char[] cArr17 = this.f6766b;
                            cArr17[i26] = TokenParser.ESCAPE;
                            int i36 = i35 + 1;
                            cArr17[i35] = 'u';
                            int i37 = i36 + 1;
                            char[] cArr18 = com.alibaba.fastjson.util.f.f6821a;
                            cArr17[i36] = cArr18[(c13 >>> '\f') & 15];
                            int i38 = i37 + 1;
                            cArr17[i37] = cArr18[(c13 >>> '\b') & 15];
                            cArr17[i38] = cArr18[(c13 >>> 4) & 15];
                            cArr17[i38 + 1] = cArr18[c13 & 15];
                        }
                    }
                } else if (i27 > 1) {
                    for (int i39 = i25 - i15; i39 < str.length(); i39++) {
                        char cCharAt2 = str.charAt(i39);
                        byte[] bArr4 = com.alibaba.fastjson.util.f.f6824d;
                        if ((cCharAt2 < bArr4.length && bArr4[cCharAt2] != 0) || (cCharAt2 == '/' && g(SerializerFeature.WriteSlashAsSpecial))) {
                            char[] cArr19 = this.f6766b;
                            int i40 = i25 + 1;
                            cArr19[i25] = TokenParser.ESCAPE;
                            if (bArr4[cCharAt2] == 4) {
                                int i41 = i40 + 1;
                                cArr19[i40] = 'u';
                                int i42 = i41 + 1;
                                char[] cArr20 = com.alibaba.fastjson.util.f.f6821a;
                                cArr19[i41] = cArr20[(cCharAt2 >>> '\f') & 15];
                                int i43 = i42 + 1;
                                cArr19[i42] = cArr20[(cCharAt2 >>> '\b') & 15];
                                int i44 = i43 + 1;
                                cArr19[i43] = cArr20[(cCharAt2 >>> 4) & 15];
                                i10 = i44 + 1;
                                cArr19[i44] = cArr20[cCharAt2 & 15];
                            } else {
                                i10 = i40 + 1;
                                cArr19[i40] = com.alibaba.fastjson.util.f.f6826f[cCharAt2];
                            }
                            i25 = i10;
                        } else if (cCharAt2 == 8232) {
                            char[] cArr21 = this.f6766b;
                            int i45 = i25 + 1;
                            cArr21[i25] = TokenParser.ESCAPE;
                            int i46 = i45 + 1;
                            cArr21[i45] = 'u';
                            int i47 = i46 + 1;
                            char[] cArr22 = com.alibaba.fastjson.util.f.f6821a;
                            cArr21[i46] = cArr22[(cCharAt2 >>> '\f') & 15];
                            int i48 = i47 + 1;
                            cArr21[i47] = cArr22[(cCharAt2 >>> '\b') & 15];
                            int i49 = i48 + 1;
                            cArr21[i48] = cArr22[(cCharAt2 >>> 4) & 15];
                            i25 = i49 + 1;
                            cArr21[i49] = cArr22[cCharAt2 & 15];
                        } else {
                            this.f6766b[i25] = cCharAt2;
                            i25++;
                        }
                    }
                }
            }
        }
        if (c10 == 0) {
            this.f6766b[this.f6767c - 1] = '\"';
            return;
        }
        char[] cArr23 = this.f6766b;
        int i50 = this.f6767c;
        cArr23[i50 - 2] = '\"';
        cArr23[i50 - 1] = c10;
    }

    private void u0(String str) {
        int i10 = 0;
        if (str == null) {
            int i11 = this.f6767c + 4;
            if (i11 > this.f6766b.length) {
                e(i11);
            }
            "null".getChars(0, 4, this.f6766b, this.f6767c);
            this.f6767c = i11;
            return;
        }
        int length = str.length();
        int i12 = this.f6767c + length + 2;
        if (i12 > this.f6766b.length) {
            if (this.f6769e != null) {
                m('\'');
                while (i10 < str.length()) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && g(SerializerFeature.WriteSlashAsSpecial))) {
                        m(TokenParser.ESCAPE);
                        m(com.alibaba.fastjson.util.f.f6826f[cCharAt]);
                    } else {
                        m(cCharAt);
                    }
                    i10++;
                }
                m('\'');
                return;
            }
            e(i12);
        }
        int i13 = this.f6767c;
        int i14 = i13 + 1;
        int i15 = i14 + length;
        char[] cArr = this.f6766b;
        cArr[i13] = '\'';
        str.getChars(0, length, cArr, i14);
        this.f6767c = i12;
        int i16 = -1;
        char c10 = 0;
        for (int i17 = i14; i17 < i15; i17++) {
            char c11 = this.f6766b[i17];
            if (c11 <= '\r' || c11 == '\\' || c11 == '\'' || (c11 == '/' && g(SerializerFeature.WriteSlashAsSpecial))) {
                i10++;
                i16 = i17;
                c10 = c11;
            }
        }
        int i18 = i12 + i10;
        if (i18 > this.f6766b.length) {
            e(i18);
        }
        this.f6767c = i18;
        if (i10 == 1) {
            char[] cArr2 = this.f6766b;
            int i19 = i16 + 1;
            System.arraycopy(cArr2, i19, cArr2, i16 + 2, (i15 - i16) - 1);
            char[] cArr3 = this.f6766b;
            cArr3[i16] = TokenParser.ESCAPE;
            cArr3[i19] = com.alibaba.fastjson.util.f.f6826f[c10];
        } else if (i10 > 1) {
            char[] cArr4 = this.f6766b;
            int i20 = i16 + 1;
            System.arraycopy(cArr4, i20, cArr4, i16 + 2, (i15 - i16) - 1);
            char[] cArr5 = this.f6766b;
            cArr5[i16] = TokenParser.ESCAPE;
            cArr5[i20] = com.alibaba.fastjson.util.f.f6826f[c10];
            int i21 = i15 + 1;
            for (int i22 = i20 - 2; i22 >= i14; i22--) {
                char c12 = this.f6766b[i22];
                if (c12 <= '\r' || c12 == '\\' || c12 == '\'' || (c12 == '/' && g(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.f6766b;
                    int i23 = i22 + 1;
                    System.arraycopy(cArr6, i23, cArr6, i22 + 2, (i21 - i22) - 1);
                    char[] cArr7 = this.f6766b;
                    cArr7[i22] = TokenParser.ESCAPE;
                    cArr7[i23] = com.alibaba.fastjson.util.f.f6826f[c12];
                    i21++;
                }
            }
        }
        this.f6766b[this.f6767c - 1] = '\'';
    }

    public void I(char c10, String str) {
        m(c10);
        v(str);
        if (g(SerializerFeature.WriteNullListAsEmpty)) {
            write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        } else {
            p0();
        }
    }

    public void J(char c10, String str) {
        m(c10);
        v(str);
        if (g(SerializerFeature.WriteNullNumberAsZero)) {
            m('0');
        } else {
            p0();
        }
    }

    public void K(char c10, String str) {
        m(c10);
        v(str);
        if (g(SerializerFeature.WriteNullStringAsEmpty)) {
            q0("");
        } else {
            p0();
        }
    }

    public void L(char c10, String str, char c11) {
        m(c10);
        v(str);
        if (c11 == 0) {
            q0(DexFormat.MAGIC_SUFFIX);
        } else {
            q0(Character.toString(c11));
        }
    }

    public void M(char c10, String str, double d10) {
        m(c10);
        v(str);
        if (d10 == 0.0d) {
            m('0');
            return;
        }
        if (Double.isNaN(d10)) {
            p0();
            return;
        }
        if (Double.isInfinite(d10)) {
            p0();
            return;
        }
        String string = Double.toString(d10);
        if (string.endsWith(".0")) {
            string = string.substring(0, string.length() - 2);
        }
        write(string);
    }

    public void O(char c10, String str, float f10) {
        m(c10);
        v(str);
        if (f10 == 0.0f) {
            m('0');
            return;
        }
        if (Float.isNaN(f10)) {
            p0();
            return;
        }
        if (Float.isInfinite(f10)) {
            p0();
            return;
        }
        String string = Float.toString(f10);
        if (string.endsWith(".0")) {
            string = string.substring(0, string.length() - 2);
        }
        write(string);
    }

    public void P(char c10, String str, int i10) {
        if (i10 == Integer.MIN_VALUE || !g(SerializerFeature.QuoteFieldNames)) {
            e0(c10, str, i10);
            return;
        }
        char c11 = g(SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
        int iH = i10 < 0 ? com.alibaba.fastjson.util.f.h(-i10) + 1 : com.alibaba.fastjson.util.f.h(i10);
        int length = str.length();
        int i11 = this.f6767c + length + 4 + iH;
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                e0(c10, str, i10);
                return;
            }
            e(i11);
        }
        int i12 = this.f6767c;
        this.f6767c = i11;
        char[] cArr = this.f6766b;
        cArr[i12] = c10;
        int i13 = i12 + length + 1;
        cArr[i12 + 1] = c11;
        str.getChars(0, length, cArr, i12 + 2);
        char[] cArr2 = this.f6766b;
        cArr2[i13 + 1] = c11;
        cArr2[i13 + 2] = ':';
        com.alibaba.fastjson.util.f.e(i10, this.f6767c, cArr2);
    }

    public void Q(char c10, String str, long j10) {
        if (j10 == Long.MIN_VALUE || !g(SerializerFeature.QuoteFieldNames)) {
            f0(c10, str, j10);
            return;
        }
        char c11 = g(SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
        int i10 = j10 < 0 ? com.alibaba.fastjson.util.f.i(-j10) + 1 : com.alibaba.fastjson.util.f.i(j10);
        int length = str.length();
        int i11 = this.f6767c + length + 4 + i10;
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                m(c10);
                v(str);
                n0(j10);
                return;
            }
            e(i11);
        }
        int i12 = this.f6767c;
        this.f6767c = i11;
        char[] cArr = this.f6766b;
        cArr[i12] = c10;
        int i13 = i12 + length + 1;
        cArr[i12 + 1] = c11;
        str.getChars(0, length, cArr, i12 + 2);
        char[] cArr2 = this.f6766b;
        cArr2[i13 + 1] = c11;
        cArr2[i13 + 2] = ':';
        com.alibaba.fastjson.util.f.f(j10, this.f6767c, cArr2);
    }

    public void R(char c10, String str, Enum<?> r10) {
        if (r10 == null) {
            m(c10);
            v(str);
            p0();
        } else if (!g(SerializerFeature.WriteEnumUsingToString)) {
            P(c10, str, r10.ordinal());
        } else if (g(SerializerFeature.UseSingleQuotes)) {
            a0(c10, str, r10.name());
        } else {
            g0(c10, str, r10.name(), false);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public v1 append(char c10) {
        m(c10);
        return this;
    }

    public void a0(char c10, String str, String str2) {
        if (!g(SerializerFeature.QuoteFieldNames)) {
            m(c10);
            v(str);
            if (str2 == null) {
                p0();
                return;
            } else {
                q0(str2);
                return;
            }
        }
        if (g(SerializerFeature.UseSingleQuotes)) {
            m(c10);
            v(str);
            if (str2 == null) {
                p0();
                return;
            } else {
                q0(str2);
                return;
            }
        }
        if (!g(SerializerFeature.BrowserCompatible)) {
            g0(c10, str, str2, true);
            return;
        }
        m(c10);
        s0(str, ':');
        s0(str2, (char) 0);
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public v1 append(CharSequence charSequence) {
        String string = charSequence == null ? "null" : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public v1 append(CharSequence charSequence, int i10, int i11) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String string = charSequence.subSequence(i10, i11).toString();
        write(string, 0, string.length());
        return this;
    }

    public void c0(char c10, String str, BigDecimal bigDecimal) {
        m(c10);
        v(str);
        if (bigDecimal == null) {
            p0();
        } else {
            write(bigDecimal.toString());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f6769e != null && this.f6767c > 0) {
            flush();
        }
        if (this.f6766b.length <= 8192) {
            f6765f.set(new SoftReference<>(this.f6766b));
        }
        this.f6766b = null;
    }

    public void d(SerializerFeature serializerFeature, boolean z10) {
        if (z10) {
            this.f6768d = serializerFeature.getMask() | this.f6768d;
        } else {
            this.f6768d = (~serializerFeature.getMask()) & this.f6768d;
        }
    }

    public void d0(char c10, String str, boolean z10) {
        char c11 = g(SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
        int i10 = z10 ? 4 : 5;
        int length = str.length();
        int i11 = this.f6767c + length + 4 + i10;
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                m(c10);
                q0(str);
                m(':');
                n(z10);
                return;
            }
            e(i11);
        }
        int i12 = this.f6767c;
        this.f6767c = i11;
        char[] cArr = this.f6766b;
        cArr[i12] = c10;
        int i13 = i12 + length + 1;
        cArr[i12 + 1] = c11;
        str.getChars(0, length, cArr, i12 + 2);
        this.f6766b[i13 + 1] = c11;
        if (z10) {
            System.arraycopy(":true".toCharArray(), 0, this.f6766b, i13 + 2, 5);
        } else {
            System.arraycopy(":false".toCharArray(), 0, this.f6766b, i13 + 2, 6);
        }
    }

    public void e(int i10) {
        char[] cArr = this.f6766b;
        int length = ((cArr.length * 3) / 2) + 1;
        if (length >= i10) {
            i10 = length;
        }
        char[] cArr2 = new char[i10];
        System.arraycopy(cArr, 0, cArr2, 0, this.f6767c);
        this.f6766b = cArr2;
    }

    public void e0(char c10, String str, int i10) {
        m(c10);
        v(str);
        j0(i10);
    }

    public int f() {
        return this.f6766b.length;
    }

    public void f0(char c10, String str, long j10) {
        m(c10);
        v(str);
        n0(j10);
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        Writer writer = this.f6769e;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.f6766b, 0, this.f6767c);
            this.f6769e.flush();
            this.f6767c = 0;
        } catch (IOException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public boolean g(SerializerFeature serializerFeature) {
        return SerializerFeature.isEnabled(this.f6768d, serializerFeature);
    }

    public void i0(float f10, char c10) {
        String string = Float.toString(f10);
        if (string.endsWith(".0")) {
            string = string.substring(0, string.length() - 2);
        }
        write(string);
        m(c10);
    }

    public void j() {
        this.f6767c = 0;
    }

    public void j0(int i10) {
        if (i10 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int iH = i10 < 0 ? com.alibaba.fastjson.util.f.h(-i10) + 1 : com.alibaba.fastjson.util.f.h(i10);
        int i11 = this.f6767c + iH;
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                char[] cArr = new char[iH];
                com.alibaba.fastjson.util.f.e(i10, iH, cArr);
                write(cArr, 0, iH);
                return;
            }
            e(i11);
        }
        com.alibaba.fastjson.util.f.e(i10, i11, this.f6766b);
        this.f6767c = i11;
    }

    public byte[] k(String str) {
        if (this.f6769e != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (str == null) {
            str = "UTF-8";
        }
        return new s1(Charset.forName(str)).a(this.f6766b, 0, this.f6767c);
    }

    public void k0(int i10, char c10) {
        if (i10 == Integer.MIN_VALUE) {
            write("-2147483648");
            m(c10);
            return;
        }
        int iH = this.f6767c + (i10 < 0 ? com.alibaba.fastjson.util.f.h(-i10) + 1 : com.alibaba.fastjson.util.f.h(i10));
        int i11 = iH + 1;
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                j0(i10);
                m(c10);
                return;
            }
            e(i11);
        }
        com.alibaba.fastjson.util.f.e(i10, iH, this.f6766b);
        this.f6766b[iH] = c10;
        this.f6767c = i11;
    }

    public char[] l() {
        if (this.f6769e != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        int i10 = this.f6767c;
        char[] cArr = new char[i10];
        System.arraycopy(this.f6766b, 0, cArr, 0, i10);
        return cArr;
    }

    public void m(char c10) {
        int i10 = 1;
        int i11 = this.f6767c + 1;
        if (i11 <= this.f6766b.length) {
            i10 = i11;
        } else if (this.f6769e == null) {
            e(i11);
            i10 = i11;
        } else {
            flush();
        }
        this.f6766b[this.f6767c] = c10;
        this.f6767c = i10;
    }

    public void n(boolean z10) {
        if (z10) {
            write("true");
        } else {
            write("false");
        }
    }

    public void n0(long j10) {
        if (j10 == Long.MIN_VALUE) {
            write("-9223372036854775808");
            return;
        }
        int i10 = j10 < 0 ? com.alibaba.fastjson.util.f.i(-j10) + 1 : com.alibaba.fastjson.util.f.i(j10);
        int i11 = this.f6767c + i10;
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                char[] cArr = new char[i10];
                com.alibaba.fastjson.util.f.f(j10, i10, cArr);
                write(cArr, 0, i10);
                return;
            }
            e(i11);
        }
        com.alibaba.fastjson.util.f.f(j10, i11, this.f6766b);
        this.f6767c = i11;
    }

    public void o(boolean z10, char c10) {
        if (z10) {
            if (c10 == ',') {
                write("true,");
                return;
            } else if (c10 == ']') {
                write("true]");
                return;
            } else {
                write("true");
                m(c10);
                return;
            }
        }
        if (c10 == ',') {
            write("false,");
        } else if (c10 == ']') {
            write("false]");
        } else {
            write("false");
            m(c10);
        }
    }

    public void o0(long j10, char c10) throws IOException {
        if (j10 == Long.MIN_VALUE) {
            write("-9223372036854775808");
            m(c10);
            return;
        }
        int i10 = this.f6767c + (j10 < 0 ? com.alibaba.fastjson.util.f.i(-j10) + 1 : com.alibaba.fastjson.util.f.i(j10));
        int i11 = i10 + 1;
        if (i11 > this.f6766b.length) {
            if (this.f6769e != null) {
                n0(j10);
                m(c10);
                return;
            }
            e(i11);
        }
        com.alibaba.fastjson.util.f.f(j10, i10, this.f6766b);
        this.f6766b[i10] = c10;
        this.f6767c = i11;
    }

    public void p(byte[] bArr) {
        int length = bArr.length;
        boolean zG = g(SerializerFeature.UseSingleQuotes);
        char c10 = zG ? '\'' : '\"';
        if (length == 0) {
            write(zG ? "''" : "\"\"");
            return;
        }
        char[] cArr = com.alibaba.fastjson.util.c.f6803a;
        int i10 = (length / 3) * 3;
        int i11 = length - 1;
        int i12 = this.f6767c;
        int i13 = (((i11 / 3) + 1) << 2) + i12 + 2;
        if (i13 > this.f6766b.length) {
            if (this.f6769e != null) {
                m(c10);
                int i14 = 0;
                while (i14 < i10) {
                    int i15 = i14 + 1;
                    int i16 = i15 + 1;
                    int i17 = ((bArr[i14] & 255) << 16) | ((bArr[i15] & 255) << 8) | (bArr[i16] & 255);
                    m(cArr[(i17 >>> 18) & 63]);
                    m(cArr[(i17 >>> 12) & 63]);
                    m(cArr[(i17 >>> 6) & 63]);
                    m(cArr[i17 & 63]);
                    i14 = i16 + 1;
                }
                int i18 = length - i10;
                if (i18 > 0) {
                    int i19 = ((bArr[i10] & 255) << 10) | (i18 == 2 ? (bArr[i11] & 255) << 2 : 0);
                    m(cArr[i19 >> 12]);
                    m(cArr[(i19 >>> 6) & 63]);
                    m(i18 == 2 ? cArr[i19 & 63] : '=');
                    m('=');
                }
                m(c10);
                return;
            }
            e(i13);
        }
        this.f6767c = i13;
        int i20 = i12 + 1;
        this.f6766b[i12] = c10;
        int i21 = 0;
        while (i21 < i10) {
            int i22 = i21 + 1;
            int i23 = i22 + 1;
            int i24 = ((bArr[i21] & 255) << 16) | ((bArr[i22] & 255) << 8);
            int i25 = i23 + 1;
            int i26 = i24 | (bArr[i23] & 255);
            char[] cArr2 = this.f6766b;
            int i27 = i20 + 1;
            cArr2[i20] = cArr[(i26 >>> 18) & 63];
            int i28 = i27 + 1;
            cArr2[i27] = cArr[(i26 >>> 12) & 63];
            int i29 = i28 + 1;
            cArr2[i28] = cArr[(i26 >>> 6) & 63];
            i20 = i29 + 1;
            cArr2[i29] = cArr[i26 & 63];
            i21 = i25;
        }
        int i30 = length - i10;
        if (i30 > 0) {
            int i31 = ((bArr[i10] & 255) << 10) | (i30 == 2 ? (bArr[i11] & 255) << 2 : 0);
            char[] cArr3 = this.f6766b;
            cArr3[i13 - 5] = cArr[i31 >> 12];
            cArr3[i13 - 4] = cArr[(i31 >>> 6) & 63];
            cArr3[i13 - 3] = i30 == 2 ? cArr[i31 & 63] : '=';
            cArr3[i13 - 2] = '=';
        }
        this.f6766b[i13 - 1] = c10;
    }

    public void p0() {
        write("null");
    }

    public void q(char c10, char c11) {
        q0(Character.toString(c10));
        m(c11);
    }

    public void q0(String str) {
        if (g(SerializerFeature.UseSingleQuotes)) {
            u0(str);
        } else {
            s0(str, (char) 0);
        }
    }

    public void r0(String str, char c10) {
        if (!g(SerializerFeature.UseSingleQuotes)) {
            s0(str, c10);
        } else {
            u0(str);
            m(c10);
        }
    }

    public void s(double d10, char c10) {
        String string = Double.toString(d10);
        if (string.endsWith(".0")) {
            string = string.substring(0, string.length() - 2);
        }
        write(string);
        m(c10);
    }

    public int size() {
        return this.f6767c;
    }

    public void t(Enum<?> r10, char c10) {
        if (r10 == null) {
            p0();
            m(StringUtil.COMMA);
            return;
        }
        if (!g(SerializerFeature.WriteEnumUsingToString)) {
            k0(r10.ordinal(), c10);
            return;
        }
        if (g(SerializerFeature.UseSingleQuotes)) {
            m('\'');
            write(r10.name());
            m('\'');
            m(c10);
            return;
        }
        m('\"');
        write(r10.name());
        m('\"');
        m(c10);
    }

    public String toString() {
        return new String(this.f6766b, 0, this.f6767c);
    }

    public void u(char c10, String str) {
        m(c10);
        v(str);
        write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
    }

    public void v(String str) {
        x(str, false);
    }

    public void v0(OutputStream outputStream, String str) throws IOException {
        w0(outputStream, Charset.forName(str));
    }

    public void w0(OutputStream outputStream, Charset charset) throws IOException {
        if (this.f6769e != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        outputStream.write(new String(this.f6766b, 0, this.f6767c).getBytes(charset));
    }

    @Override // java.io.Writer
    public void write(int i10) {
        int i11 = 1;
        int i12 = this.f6767c + 1;
        if (i12 <= this.f6766b.length) {
            i11 = i12;
        } else if (this.f6769e == null) {
            e(i12);
            i11 = i12;
        } else {
            flush();
        }
        this.f6766b[this.f6767c] = (char) i10;
        this.f6767c = i11;
    }

    public void x(String str, boolean z10) {
        if (str == null) {
            write("null:");
            return;
        }
        if (!g(SerializerFeature.UseSingleQuotes)) {
            if (g(SerializerFeature.QuoteFieldNames)) {
                t0(str, ':', z10);
                return;
            } else {
                l0(str);
                return;
            }
        }
        if (!g(SerializerFeature.QuoteFieldNames)) {
            m0(str);
        } else {
            u0(str);
            m(':');
        }
    }

    public void x0(Writer writer) throws IOException {
        if (this.f6769e != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        writer.write(this.f6766b, 0, this.f6767c);
    }

    public void y(char c10, String str) {
        m(c10);
        v(str);
        p0();
    }

    public void z(char c10, String str) {
        m(c10);
        v(str);
        if (g(SerializerFeature.WriteNullBooleanAsFalse)) {
            write("false");
        } else {
            p0();
        }
    }

    public v1(Writer writer) {
        this.f6769e = writer;
        this.f6768d = com.alibaba.fastjson.a.DEFAULT_GENERATE_FEATURE;
        ThreadLocal<SoftReference<char[]>> threadLocal = f6765f;
        SoftReference<char[]> softReference = threadLocal.get();
        if (softReference != null) {
            this.f6766b = softReference.get();
            threadLocal.set(null);
        }
        if (this.f6766b == null) {
            this.f6766b = new char[1024];
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        int i12;
        if (i10 < 0 || i10 > cArr.length || i11 < 0 || (i12 = i10 + i11) > cArr.length || i12 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return;
        }
        int i13 = this.f6767c + i11;
        if (i13 > this.f6766b.length) {
            if (this.f6769e == null) {
                e(i13);
            } else {
                do {
                    char[] cArr2 = this.f6766b;
                    int length = cArr2.length;
                    int i14 = this.f6767c;
                    int i15 = length - i14;
                    System.arraycopy(cArr, i10, cArr2, i14, i15);
                    this.f6767c = this.f6766b.length;
                    flush();
                    i11 -= i15;
                    i10 += i15;
                } while (i11 > this.f6766b.length);
                i13 = i11;
            }
        }
        System.arraycopy(cArr, i10, this.f6766b, this.f6767c, i11);
        this.f6767c = i13;
    }

    public v1(SerializerFeature... serializerFeatureArr) {
        this((Writer) null, serializerFeatureArr);
    }

    public v1(Writer writer, SerializerFeature... serializerFeatureArr) {
        this.f6769e = writer;
        ThreadLocal<SoftReference<char[]>> threadLocal = f6765f;
        SoftReference<char[]> softReference = threadLocal.get();
        if (softReference != null) {
            this.f6766b = softReference.get();
            threadLocal.set(null);
        }
        if (this.f6766b == null) {
            this.f6766b = new char[1024];
        }
        int mask = 0;
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            mask |= serializerFeature.getMask();
        }
        this.f6768d = mask;
    }

    public v1(int i10) {
        this((Writer) null, i10);
    }

    @Override // java.io.Writer
    public void write(String str, int i10, int i11) {
        int i12;
        int i13 = this.f6767c + i11;
        if (i13 > this.f6766b.length) {
            if (this.f6769e == null) {
                e(i13);
            } else {
                while (true) {
                    char[] cArr = this.f6766b;
                    int length = cArr.length;
                    int i14 = this.f6767c;
                    int i15 = length - i14;
                    i12 = i10 + i15;
                    str.getChars(i10, i12, cArr, i14);
                    this.f6767c = this.f6766b.length;
                    flush();
                    i11 -= i15;
                    if (i11 <= this.f6766b.length) {
                        break;
                    } else {
                        i10 = i12;
                    }
                }
                i13 = i11;
                i10 = i12;
            }
        }
        str.getChars(i10, i11 + i10, this.f6766b, this.f6767c);
        this.f6767c = i13;
    }

    public v1(Writer writer, int i10) {
        this.f6769e = writer;
        if (i10 > 0) {
            this.f6766b = new char[i10];
            return;
        }
        throw new IllegalArgumentException("Negative initial size: " + i10);
    }

    @Override // java.io.Writer
    public void write(String str) {
        if (str == null) {
            p0();
        } else {
            write(str, 0, str.length());
        }
    }
}
