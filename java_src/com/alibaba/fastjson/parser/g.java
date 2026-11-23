package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes7.dex */
public final class g extends e {
    protected static final char[] A = (x.a.f97579g + com.alibaba.fastjson.a.DEFAULT_TYPE_KEY + "\":\"").toCharArray();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final String f6615w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f6616x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f6617y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f6618z;

    public g(String str) {
        this(str, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    static final boolean S0(String str, int i10, char[] cArr) {
        int length = cArr.length;
        if (length + i10 > str.length()) {
            return false;
        }
        for (int i11 = 0; i11 < length; i11++) {
            if (cArr[i11] != str.charAt(i10 + i11)) {
                return false;
            }
        }
        return true;
    }

    static boolean T0(char c10, char c11, char c12, char c13, char c14, char c15, int i10, int i11) {
        if ((c10 == '1' || c10 == '2') && c11 >= '0' && c11 <= '9' && c12 >= '0' && c12 <= '9' && c13 >= '0' && c13 <= '9') {
            if (c14 == '0') {
                if (c15 < '1' || c15 > '9') {
                    return false;
                }
            } else if (c14 != '1' || (c15 != '0' && c15 != '1' && c15 != '2')) {
                return false;
            }
            if (i10 == 48) {
                return i11 >= 49 && i11 <= 57;
            }
            if (i10 != 49 && i10 != 50) {
                return i10 == 51 && (i11 == 48 || i11 == 49);
            }
            if (i11 >= 48 && i11 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean U0(char c10, char c11, char c12, char c13, char c14, char c15) {
        if (c10 == '0') {
            if (c11 < '0' || c11 > '9') {
                return false;
            }
        } else {
            if (c10 != '1') {
                if (c10 == '2' && c11 >= '0' && c11 <= '4') {
                }
                return false;
            }
            if (c11 < '0' || c11 > '9') {
                return false;
            }
        }
        if (c12 < '0' || c12 > '5') {
            if (c12 != '6' || c13 != '0') {
                return false;
            }
        } else if (c13 < '0' || c13 > '9') {
            return false;
        }
        if (c14 < '0' || c14 > '5') {
            return c14 == '6' && c15 == '0';
        }
        return c15 >= '0' && c15 <= '9';
    }

    private void X0(char c10, char c11, char c12, char c13, char c14, char c15, char c16, char c17) {
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault(), Locale.getDefault());
        this.f6608l = calendar;
        int[] iArr = e.f6597v;
        int i10 = (iArr[c10] * 1000) + (iArr[c11] * 100) + (iArr[c12] * 10) + iArr[c13];
        int i11 = ((iArr[c14] * 10) + iArr[c15]) - 1;
        int i12 = (iArr[c16] * 10) + iArr[c17];
        calendar.set(1, i10);
        this.f6608l.set(2, i11);
        this.f6608l.set(5, i12);
    }

    @Override // com.alibaba.fastjson.parser.e
    public int C0(char[] cArr) {
        int i10;
        char cU;
        this.f6609m = 0;
        int i11 = this.f6602f;
        char c10 = this.f6601e;
        if (!S0(this.f6615w, i11, cArr)) {
            this.f6609m = -2;
            return 0;
        }
        int length = this.f6602f + cArr.length;
        int i12 = length + 1;
        char cU2 = u(length);
        if (cU2 < '0' || cU2 > '9') {
            this.f6609m = -1;
            return 0;
        }
        int i13 = e.f6597v[cU2];
        while (true) {
            i10 = i12 + 1;
            cU = u(i12);
            if (cU < '0' || cU > '9') {
                break;
            }
            i13 = (i13 * 10) + e.f6597v[cU];
            i12 = i10;
        }
        if (cU == '.') {
            this.f6609m = -1;
            return 0;
        }
        int i14 = i10 - 1;
        this.f6602f = i14;
        if (i13 < 0) {
            this.f6609m = -1;
            return 0;
        }
        if (cU == ',') {
            int i15 = i14 + 1;
            this.f6602f = i15;
            this.f6601e = u(i15);
            this.f6609m = 3;
            this.f6598b = 16;
            return i13;
        }
        if (cU == '}') {
            int i16 = i14 + 1;
            this.f6602f = i16;
            char cU3 = u(i16);
            if (cU3 == ',') {
                this.f6598b = 16;
                int i17 = this.f6602f + 1;
                this.f6602f = i17;
                this.f6601e = u(i17);
            } else if (cU3 == ']') {
                this.f6598b = 15;
                int i18 = this.f6602f + 1;
                this.f6602f = i18;
                this.f6601e = u(i18);
            } else if (cU3 == '}') {
                this.f6598b = 13;
                int i19 = this.f6602f + 1;
                this.f6602f = i19;
                this.f6601e = u(i19);
            } else {
                if (cU3 != 26) {
                    this.f6602f = i11;
                    this.f6601e = c10;
                    this.f6609m = -1;
                    return 0;
                }
                this.f6598b = 20;
            }
            this.f6609m = 4;
        }
        return i13;
    }

    @Override // com.alibaba.fastjson.parser.e
    public long D0(char[] cArr) {
        int i10;
        char cU;
        this.f6609m = 0;
        int i11 = this.f6602f;
        char c10 = this.f6601e;
        if (!S0(this.f6615w, i11, cArr)) {
            this.f6609m = -2;
            return 0L;
        }
        int length = this.f6602f + cArr.length;
        int i12 = length + 1;
        char cU2 = u(length);
        if (cU2 < '0' || cU2 > '9') {
            this.f6602f = i11;
            this.f6601e = c10;
            this.f6609m = -1;
            return 0L;
        }
        long j10 = e.f6597v[cU2];
        while (true) {
            i10 = i12 + 1;
            cU = u(i12);
            if (cU < '0' || cU > '9') {
                break;
            }
            j10 = (j10 * 10) + ((long) e.f6597v[cU]);
            i12 = i10;
        }
        if (cU == '.') {
            this.f6609m = -1;
            return 0L;
        }
        int i13 = i10 - 1;
        this.f6602f = i13;
        if (j10 < 0) {
            this.f6602f = i11;
            this.f6601e = c10;
            this.f6609m = -1;
            return 0L;
        }
        if (cU == ',') {
            int i14 = i13 + 1;
            this.f6602f = i14;
            u(i14);
            this.f6609m = 3;
            this.f6598b = 16;
            return j10;
        }
        if (cU != '}') {
            this.f6609m = -1;
            return 0L;
        }
        int i15 = i13 + 1;
        this.f6602f = i15;
        char cU3 = u(i15);
        if (cU3 == ',') {
            this.f6598b = 16;
            int i16 = this.f6602f + 1;
            this.f6602f = i16;
            this.f6601e = u(i16);
        } else if (cU3 == ']') {
            this.f6598b = 15;
            int i17 = this.f6602f + 1;
            this.f6602f = i17;
            this.f6601e = u(i17);
        } else if (cU3 == '}') {
            this.f6598b = 13;
            int i18 = this.f6602f + 1;
            this.f6602f = i18;
            this.f6601e = u(i18);
        } else {
            if (cU3 != 26) {
                this.f6602f = i11;
                this.f6601e = c10;
                this.f6609m = -1;
                return 0L;
            }
            this.f6598b = 20;
        }
        this.f6609m = 4;
        return j10;
    }

    @Override // com.alibaba.fastjson.parser.e
    public String E0(char[] cArr) {
        boolean z10 = false;
        this.f6609m = 0;
        int i10 = this.f6602f;
        char c10 = this.f6601e;
        if (!S0(this.f6615w, i10, cArr)) {
            this.f6609m = -2;
            return Q0();
        }
        int length = this.f6602f + cArr.length;
        int i11 = length + 1;
        if (u(length) != '\"') {
            this.f6609m = -1;
            return Q0();
        }
        int iIndexOf = this.f6615w.indexOf(34, i11);
        if (iIndexOf == -1) {
            throw new JSONException("unclosed str");
        }
        String strR0 = R0(i11, iIndexOf - i11);
        for (int i12 = 0; i12 < strR0.length(); i12++) {
            if (strR0.charAt(i12) == '\\') {
                z10 = true;
                break;
            }
        }
        if (z10) {
            this.f6609m = -1;
            return Q0();
        }
        int i13 = iIndexOf + 1;
        this.f6602f = i13;
        char cU = u(i13);
        this.f6601e = cU;
        if (cU == ',') {
            int i14 = this.f6602f + 1;
            this.f6602f = i14;
            this.f6601e = u(i14);
            this.f6609m = 3;
            return strR0;
        }
        if (cU != '}') {
            this.f6609m = -1;
            return Q0();
        }
        int i15 = this.f6602f + 1;
        this.f6602f = i15;
        char cU2 = u(i15);
        if (cU2 == ',') {
            this.f6598b = 16;
            int i16 = this.f6602f + 1;
            this.f6602f = i16;
            this.f6601e = u(i16);
        } else if (cU2 == ']') {
            this.f6598b = 15;
            int i17 = this.f6602f + 1;
            this.f6602f = i17;
            this.f6601e = u(i17);
        } else if (cU2 == '}') {
            this.f6598b = 13;
            int i18 = this.f6602f + 1;
            this.f6602f = i18;
            this.f6601e = u(i18);
        } else {
            if (cU2 != 26) {
                this.f6602f = i10;
                this.f6601e = c10;
                this.f6609m = -1;
                return Q0();
            }
            this.f6598b = 20;
        }
        this.f6609m = 4;
        return strR0;
    }

    @Override // com.alibaba.fastjson.parser.e
    public Collection<String> F0(char[] cArr, Class<?> cls) {
        Collection<String> arrayList;
        int i10;
        this.f6609m = 0;
        if (!S0(this.f6615w, this.f6602f, cArr)) {
            this.f6609m = -2;
            return null;
        }
        if (cls.isAssignableFrom(HashSet.class)) {
            arrayList = new HashSet<>();
        } else if (cls.isAssignableFrom(ArrayList.class)) {
            arrayList = new ArrayList<>();
        } else {
            try {
                arrayList = (Collection) cls.newInstance();
            } catch (Exception e10) {
                throw new JSONException(e10.getMessage(), e10);
            }
        }
        int length = this.f6602f + cArr.length;
        int i11 = length + 1;
        if (u(length) != '[') {
            this.f6609m = -1;
            return null;
        }
        int i12 = i11 + 1;
        char cU = u(i11);
        while (cU == '\"') {
            int i13 = i12;
            while (true) {
                i10 = i13 + 1;
                char cU2 = u(i13);
                if (cU2 == '\"') {
                    break;
                }
                if (cU2 == '\\') {
                    this.f6609m = -1;
                    return null;
                }
                i13 = i10;
            }
            arrayList.add(this.f6615w.substring(i12, i10 - 1));
            int i14 = i10 + 1;
            char cU3 = u(i10);
            if (cU3 != ',') {
                if (cU3 != ']') {
                    this.f6609m = -1;
                    return null;
                }
                int i15 = i14 + 1;
                char cU4 = u(i14);
                this.f6602f = i15;
                if (cU4 == ',') {
                    this.f6601e = u(i15);
                    this.f6609m = 3;
                    return arrayList;
                }
                if (cU4 != '}') {
                    this.f6609m = -1;
                    return null;
                }
                char cU5 = u(i15);
                if (cU5 == ',') {
                    this.f6598b = 16;
                    int i16 = this.f6602f + 1;
                    this.f6602f = i16;
                    this.f6601e = u(i16);
                } else if (cU5 == ']') {
                    this.f6598b = 15;
                    int i17 = this.f6602f + 1;
                    this.f6602f = i17;
                    this.f6601e = u(i17);
                } else if (cU5 == '}') {
                    this.f6598b = 13;
                    int i18 = this.f6602f + 1;
                    this.f6602f = i18;
                    this.f6601e = u(i18);
                } else {
                    if (cU5 != 26) {
                        this.f6609m = -1;
                        return null;
                    }
                    this.f6598b = 20;
                    this.f6601e = cU5;
                }
                this.f6609m = 4;
                return arrayList;
            }
            i12 = i14 + 1;
            cU = u(i14);
        }
        this.f6609m = -1;
        return null;
    }

    @Override // com.alibaba.fastjson.parser.e
    public String G0(char[] cArr, l lVar) {
        int i10 = 0;
        this.f6609m = 0;
        if (!S0(this.f6615w, this.f6602f, cArr)) {
            this.f6609m = -2;
            return null;
        }
        int length = this.f6602f + cArr.length;
        int i11 = length + 1;
        if (u(length) != '\"') {
            this.f6609m = -1;
            return null;
        }
        int i12 = i11;
        while (true) {
            int i13 = i12 + 1;
            char cU = u(i12);
            if (cU == '\"') {
                this.f6602f = i13;
                char cU2 = u(i13);
                this.f6601e = cU2;
                String strA = lVar.a(this.f6615w, i11, (i13 - i11) - 1, i10);
                if (cU2 == ',') {
                    int i14 = this.f6602f + 1;
                    this.f6602f = i14;
                    this.f6601e = u(i14);
                    this.f6609m = 3;
                    return strA;
                }
                if (cU2 != '}') {
                    this.f6609m = -1;
                    return null;
                }
                int i15 = this.f6602f + 1;
                this.f6602f = i15;
                char cU3 = u(i15);
                if (cU3 == ',') {
                    this.f6598b = 16;
                    int i16 = this.f6602f + 1;
                    this.f6602f = i16;
                    this.f6601e = u(i16);
                } else if (cU3 == ']') {
                    this.f6598b = 15;
                    int i17 = this.f6602f + 1;
                    this.f6602f = i17;
                    this.f6601e = u(i17);
                } else if (cU3 == '}') {
                    this.f6598b = 13;
                    int i18 = this.f6602f + 1;
                    this.f6602f = i18;
                    this.f6601e = u(i18);
                } else {
                    if (cU3 != 26) {
                        this.f6609m = -1;
                        return null;
                    }
                    this.f6598b = 20;
                }
                this.f6609m = 4;
                return strA;
            }
            i10 = (i10 * 31) + cU;
            if (cU == '\\') {
                this.f6609m = -1;
                return null;
            }
            i12 = i13;
        }
    }

    @Override // com.alibaba.fastjson.parser.e
    public final int O0(String str) {
        this.f6609m = 0;
        String str2 = this.f6615w;
        int i10 = this.f6602f;
        char[] cArr = A;
        if (!S0(str2, i10, cArr)) {
            return -2;
        }
        int length = this.f6602f + cArr.length;
        int length2 = str.length();
        for (int i11 = 0; i11 < length2; i11++) {
            if (str.charAt(i11) != u(length + i11)) {
                return -1;
            }
        }
        int i12 = length + length2;
        if (u(i12) != '\"') {
            return -1;
        }
        int i13 = i12 + 1;
        char cU = u(i13);
        this.f6601e = cU;
        if (cU == ',') {
            int i14 = i13 + 1;
            this.f6601e = u(i14);
            this.f6602f = i14;
            this.f6598b = 16;
            return 3;
        }
        if (cU == '}') {
            i13++;
            char cU2 = u(i13);
            this.f6601e = cU2;
            if (cU2 == ',') {
                this.f6598b = 16;
                i13++;
                this.f6601e = u(i13);
            } else if (cU2 == ']') {
                this.f6598b = 15;
                i13++;
                this.f6601e = u(i13);
            } else if (cU2 == '}') {
                this.f6598b = 13;
                i13++;
                this.f6601e = u(i13);
            } else {
                if (cU2 != 26) {
                    return -1;
                }
                this.f6598b = 20;
            }
            this.f6609m = 4;
        }
        this.f6602f = i13;
        return this.f6609m;
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public final String R() {
        if (this.f6607k) {
            return new String(this.f6604h, 0, this.f6605i);
        }
        String str = this.f6615w;
        int i10 = this.f6606j;
        return str.substring(i10 + 1, i10 + 1 + this.f6605i);
    }

    @Override // com.alibaba.fastjson.parser.e
    public final String R0(int i10, int i11) {
        return this.f6615w.substring(i10, i11 + i10);
    }

    public boolean V0() {
        return W0(true);
    }

    public boolean W0(boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        char cU;
        int i14;
        char cU2;
        int i15;
        int i16;
        char cU3;
        int length = this.f6615w.length();
        int i17 = this.f6602f;
        int i18 = length - i17;
        if (!z10 && i18 > 13) {
            char cU4 = u(i17);
            char cU5 = u(this.f6602f + 1);
            char cU6 = u(this.f6602f + 2);
            char cU7 = u(this.f6602f + 3);
            char cU8 = u(this.f6602f + 4);
            char cU9 = u(this.f6602f + 5);
            char cU10 = u((this.f6602f + i18) - 1);
            char cU11 = u((this.f6602f + i18) - 2);
            if (cU4 == '/' && cU5 == 'D' && cU6 == 'a' && cU7 == 't' && cU8 == 'e' && cU9 == '(' && cU10 == '/' && cU11 == ')') {
                int i19 = -1;
                for (int i20 = 6; i20 < i18; i20++) {
                    char cU12 = u(this.f6602f + i20);
                    if (cU12 != '+') {
                        if (cU12 < '0' || cU12 > '9') {
                            break;
                        }
                    } else {
                        i19 = i20;
                    }
                }
                if (i19 == -1) {
                    return false;
                }
                int i21 = this.f6602f + 6;
                long j10 = Long.parseLong(R0(i21, i19 - i21));
                Calendar calendar = Calendar.getInstance(TimeZone.getDefault(), Locale.getDefault());
                this.f6608l = calendar;
                calendar.setTimeInMillis(j10);
                this.f6598b = 5;
                return true;
            }
        }
        if (i18 == 8 || i18 == 14 || i18 == 17) {
            int i22 = 0;
            if (z10) {
                return false;
            }
            char cU13 = u(this.f6602f);
            char cU14 = u(this.f6602f + 1);
            char cU15 = u(this.f6602f + 2);
            char cU16 = u(this.f6602f + 3);
            char cU17 = u(this.f6602f + 4);
            char cU18 = u(this.f6602f + 5);
            char cU19 = u(this.f6602f + 6);
            char cU20 = u(this.f6602f + 7);
            if (!T0(cU13, cU14, cU15, cU16, cU17, cU18, cU19, cU20)) {
                return false;
            }
            X0(cU13, cU14, cU15, cU16, cU17, cU18, cU19, cU20);
            if (i18 != 8) {
                char cU21 = u(this.f6602f + 8);
                char cU22 = u(this.f6602f + 9);
                char cU23 = u(this.f6602f + 10);
                char cU24 = u(this.f6602f + 11);
                char cU25 = u(this.f6602f + 12);
                char cU26 = u(this.f6602f + 13);
                if (!U0(cU21, cU22, cU23, cU24, cU25, cU26)) {
                    return false;
                }
                if (i18 == 17) {
                    char cU27 = u(this.f6602f + 14);
                    char cU28 = u(this.f6602f + 15);
                    char cU29 = u(this.f6602f + 16);
                    if (cU27 < '0' || cU27 > '9' || cU28 < '0' || cU28 > '9' || cU29 < '0' || cU29 > '9') {
                        return false;
                    }
                    int[] iArr = e.f6597v;
                    i13 = (iArr[cU27] * 100) + (iArr[cU28] * 10) + iArr[cU29];
                } else {
                    i13 = 0;
                }
                int[] iArr2 = e.f6597v;
                int i23 = (iArr2[cU21] * 10) + iArr2[cU22];
                i11 = (iArr2[cU23] * 10) + iArr2[cU24];
                i10 = iArr2[cU26] + (iArr2[cU25] * 10);
                i22 = i13;
                i12 = i23;
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 0;
            }
            this.f6608l.set(11, i12);
            this.f6608l.set(12, i11);
            this.f6608l.set(13, i10);
            this.f6608l.set(14, i22);
            this.f6598b = 5;
            return true;
        }
        if (i18 < this.f6616x || u(this.f6602f + 4) != '-' || u(this.f6602f + 7) != '-') {
            return false;
        }
        char cU30 = u(this.f6602f);
        char cU31 = u(this.f6602f + 1);
        char cU32 = u(this.f6602f + 2);
        char cU33 = u(this.f6602f + 3);
        char cU34 = u(this.f6602f + 5);
        char cU35 = u(this.f6602f + 6);
        char cU36 = u(this.f6602f + 8);
        char cU37 = u(this.f6602f + 9);
        if (!T0(cU30, cU31, cU32, cU33, cU34, cU35, cU36, cU37)) {
            return false;
        }
        X0(cU30, cU31, cU32, cU33, cU34, cU35, cU36, cU37);
        char cU38 = u(this.f6602f + 10);
        if (cU38 != 'T' && (cU38 != ' ' || z10)) {
            if (cU38 != '\"' && cU38 != 26) {
                return false;
            }
            this.f6608l.set(11, 0);
            this.f6608l.set(12, 0);
            this.f6608l.set(13, 0);
            this.f6608l.set(14, 0);
            int i24 = this.f6602f + 10;
            this.f6602f = i24;
            this.f6601e = u(i24);
            this.f6598b = 5;
            return true;
        }
        if (i18 < this.f6617y || u(this.f6602f + 13) != ':' || u(this.f6602f + 16) != ':') {
            return false;
        }
        char cU39 = u(this.f6602f + 11);
        char cU40 = u(this.f6602f + 12);
        char cU41 = u(this.f6602f + 14);
        char cU42 = u(this.f6602f + 15);
        char cU43 = u(this.f6602f + 17);
        char cU44 = u(this.f6602f + 18);
        if (!U0(cU39, cU40, cU41, cU42, cU43, cU44)) {
            return false;
        }
        int[] iArr3 = e.f6597v;
        int i25 = (iArr3[cU39] * 10) + iArr3[cU40];
        int i26 = (iArr3[cU41] * 10) + iArr3[cU42];
        int i27 = (iArr3[cU43] * 10) + iArr3[cU44];
        this.f6608l.set(11, i25);
        this.f6608l.set(12, i26);
        this.f6608l.set(13, i27);
        if (u(this.f6602f + 19) != '.') {
            this.f6608l.set(14, 0);
            int i28 = this.f6602f + 19;
            this.f6602f = i28;
            this.f6601e = u(i28);
            this.f6598b = 5;
            return true;
        }
        if (i18 >= this.f6618z && (cU = u(this.f6602f + 20)) >= '0' && cU <= '9') {
            int i29 = iArr3[cU];
            char cU45 = u(this.f6602f + 21);
            if (cU45 < '0' || cU45 > '9') {
                i14 = 1;
            } else {
                i29 = (i29 * 10) + iArr3[cU45];
                i14 = 2;
            }
            if (i14 == 2 && (cU3 = u(this.f6602f + 22)) >= '0' && cU3 <= '9') {
                i29 = (i29 * 10) + iArr3[cU3];
                i14 = 3;
            }
            this.f6608l.set(14, i29);
            char cU46 = u(this.f6602f + 20 + i14);
            if (cU46 == '+' || cU46 == '-') {
                char cU47 = u(this.f6602f + 20 + i14 + 1);
                if (cU47 >= '0' && cU47 <= '1' && (cU2 = u(this.f6602f + 20 + i14 + 2)) >= '0' && cU2 <= '9') {
                    char cU48 = u(this.f6602f + 20 + i14 + 3);
                    if (cU48 == ':') {
                        if (u(this.f6602f + 20 + i14 + 4) != '0' || u(this.f6602f + 20 + i14 + 5) != '0') {
                            return false;
                        }
                        i15 = 6;
                    } else if (cU48 != '0') {
                        i15 = 3;
                    } else {
                        if (u(this.f6602f + 20 + i14 + 4) != '0') {
                            return false;
                        }
                        i15 = 5;
                    }
                    int i30 = ((iArr3[cU47] * 10) + iArr3[cU2]) * 3600 * 1000;
                    if (cU46 == '-') {
                        i30 = -i30;
                    }
                    if (this.f6608l.getTimeZone().getRawOffset() != i30) {
                        String[] availableIDs = TimeZone.getAvailableIDs(i30);
                        if (availableIDs.length > 0) {
                            this.f6608l.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
                        }
                    }
                    i16 = i15;
                }
            } else {
                i16 = 0;
            }
            int i31 = i14 + 20 + i16;
            char cU49 = u(this.f6602f + i31);
            if (cU49 != 26 && cU49 != '\"') {
                return false;
            }
            int i32 = this.f6602f + i31;
            this.f6602f = i32;
            this.f6601e = u(i32);
            this.f6598b = 5;
            return true;
        }
        return false;
    }

    @Override // com.alibaba.fastjson.parser.e
    public final String a(int i10, int i11, int i12, l lVar) {
        return lVar.a(this.f6615w, i10, i11, i12);
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public final String g0() {
        char cU = u((this.f6606j + this.f6605i) - 1);
        int i10 = this.f6605i;
        if (cU == 'L' || cU == 'S' || cU == 'B' || cU == 'F' || cU == 'D') {
            i10--;
        }
        String str = this.f6615w;
        int i11 = this.f6606j;
        return str.substring(i11, i10 + i11);
    }

    @Override // com.alibaba.fastjson.parser.e
    protected final void i(int i10, char[] cArr, int i11, int i12) {
        this.f6615w.getChars(i10, i12 + i10, cArr, i11);
    }

    @Override // com.alibaba.fastjson.parser.e
    public final int k0(char c10, int i10) {
        return this.f6615w.indexOf(c10, i10);
    }

    @Override // com.alibaba.fastjson.parser.e
    public boolean l0() {
        if (this.f6602f != this.f6615w.length()) {
            return this.f6601e == 26 && this.f6602f + 1 == this.f6615w.length();
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.e
    public final boolean n(char[] cArr) {
        return S0(this.f6615w, this.f6602f, cArr);
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public final char next() {
        int i10 = this.f6602f + 1;
        this.f6602f = i10;
        char cU = u(i10);
        this.f6601e = cU;
        return cU;
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public byte[] o() {
        return com.alibaba.fastjson.util.c.b(this.f6615w, this.f6606j + 1, this.f6605i);
    }

    @Override // com.alibaba.fastjson.parser.e
    public final char u(int i10) {
        if (i10 >= this.f6615w.length()) {
            return (char) 26;
        }
        return this.f6615w.charAt(i10);
    }

    @Override // com.alibaba.fastjson.parser.e
    protected final void x(int i10, int i11, char[] cArr) {
        this.f6615w.getChars(i10, i11 + i10, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.e
    public boolean y0(char[] cArr) {
        char cU;
        boolean z10;
        this.f6609m = 0;
        if (!S0(this.f6615w, this.f6602f, cArr)) {
            this.f6609m = -2;
            return false;
        }
        int length = this.f6602f + cArr.length;
        int i10 = length + 1;
        char cU2 = u(length);
        if (cU2 == 't') {
            int i11 = i10 + 1;
            if (u(i10) != 'r') {
                this.f6609m = -1;
                return false;
            }
            int i12 = i11 + 1;
            if (u(i11) != 'u') {
                this.f6609m = -1;
                return false;
            }
            int i13 = i12 + 1;
            if (u(i12) != 'e') {
                this.f6609m = -1;
                return false;
            }
            this.f6602f = i13;
            cU = u(i13);
            z10 = true;
        } else {
            if (cU2 != 'f') {
                this.f6609m = -1;
                return false;
            }
            int i14 = i10 + 1;
            if (u(i10) != 'a') {
                this.f6609m = -1;
                return false;
            }
            int i15 = i14 + 1;
            if (u(i14) != 'l') {
                this.f6609m = -1;
                return false;
            }
            int i16 = i15 + 1;
            if (u(i15) != 's') {
                this.f6609m = -1;
                return false;
            }
            int i17 = i16 + 1;
            if (u(i16) != 'e') {
                this.f6609m = -1;
                return false;
            }
            this.f6602f = i17;
            cU = u(i17);
            z10 = false;
        }
        if (cU == ',') {
            int i18 = this.f6602f + 1;
            this.f6602f = i18;
            this.f6601e = u(i18);
            this.f6609m = 3;
            this.f6598b = 16;
        } else {
            if (cU != '}') {
                this.f6609m = -1;
                return false;
            }
            int i19 = this.f6602f + 1;
            this.f6602f = i19;
            char cU3 = u(i19);
            if (cU3 == ',') {
                this.f6598b = 16;
                int i20 = this.f6602f + 1;
                this.f6602f = i20;
                this.f6601e = u(i20);
            } else if (cU3 == ']') {
                this.f6598b = 15;
                int i21 = this.f6602f + 1;
                this.f6602f = i21;
                this.f6601e = u(i21);
            } else if (cU3 == '}') {
                this.f6598b = 13;
                int i22 = this.f6602f + 1;
                this.f6602f = i22;
                this.f6601e = u(i22);
            } else {
                if (cU3 != 26) {
                    this.f6609m = -1;
                    return false;
                }
                this.f6598b = 20;
            }
            this.f6609m = 4;
        }
        return z10;
    }

    public g(String str, int i10) {
        this.f6616x = 10;
        this.f6617y = 19;
        this.f6618z = 23;
        this.f6600d = i10;
        this.f6615w = str;
        this.f6602f = -1;
        next();
        if (this.f6601e == 65279) {
            next();
        }
    }

    public g(char[] cArr, int i10) {
        this(cArr, i10, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    public g(char[] cArr, int i10, int i11) {
        this(new String(cArr, 0, i10), i11);
    }
}
