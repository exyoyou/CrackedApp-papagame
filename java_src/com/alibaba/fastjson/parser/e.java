package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONException;
import io.netty.util.internal.StringUtil;
import java.io.Closeable;
import java.lang.ref.SoftReference;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import okio.internal.Buffer;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e implements d, Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Map<String, Integer> f6590o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final ThreadLocal<SoftReference<char[]>> f6591p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected static final char[] f6592q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected static final long f6593r = -922337203685477580L;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected static final long f6594s = -922337203685477580L;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected static final int f6595t = -214748364;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected static final int f6596u = -214748364;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected static final int[] f6597v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f6598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f6599c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected char f6601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f6602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f6603g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected char[] f6604h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f6605i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f6606j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f6607k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f6600d = com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected Calendar f6608l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6609m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected Map<String, Integer> f6610n = f6590o;

    static {
        HashMap map = new HashMap();
        map.put("null", 8);
        map.put("new", 9);
        map.put("true", 6);
        map.put("false", 7);
        map.put("undefined", 23);
        f6590o = map;
        f6591p = new ThreadLocal<>();
        f6592q = (x.a.f97579g + com.alibaba.fastjson.a.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
        f6597v = new int[103];
        for (int i10 = 48; i10 <= 57; i10++) {
            f6597v[i10] = i10 - 48;
        }
        for (int i11 = 97; i11 <= 102; i11++) {
            f6597v[i11] = (i11 - 97) + 10;
        }
        for (int i12 = 65; i12 <= 70; i12++) {
            f6597v[i12] = (i12 - 65) + 10;
        }
    }

    public e() {
        ThreadLocal<SoftReference<char[]>> threadLocal = f6591p;
        SoftReference<char[]> softReference = threadLocal.get();
        if (softReference != null) {
            this.f6604h = softReference.get();
            threadLocal.set(null);
        }
        if (this.f6604h == null) {
            this.f6604h = new char[64];
        }
    }

    private final void L0() {
        this.f6606j = this.f6602f;
        this.f6607k = false;
        while (true) {
            char next = next();
            if (next == '\'') {
                this.f6598b = 4;
                next();
                return;
            }
            if (next == 26) {
                throw new JSONException("unclosed single-quote string");
            }
            if (next == '\\') {
                if (!this.f6607k) {
                    this.f6607k = true;
                    int i10 = this.f6605i;
                    char[] cArr = this.f6604h;
                    if (i10 > cArr.length) {
                        char[] cArr2 = new char[i10 * 2];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f6604h = cArr2;
                    }
                    x(this.f6606j + 1, this.f6605i, this.f6604h);
                }
                char next2 = next();
                if (next2 == '\"') {
                    v0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            v0(TokenParser.ESCAPE);
                        } else if (next2 == 'b') {
                            v0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                v0('\n');
                            } else if (next2 == 'r') {
                                v0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        v0('/');
                                        break;
                                    case '0':
                                        v0((char) 0);
                                        break;
                                    case '1':
                                        v0((char) 1);
                                        break;
                                    case '2':
                                        v0((char) 2);
                                        break;
                                    case '3':
                                        v0((char) 3);
                                        break;
                                    case '4':
                                        v0((char) 4);
                                        break;
                                    case '5':
                                        v0((char) 5);
                                        break;
                                    case '6':
                                        v0((char) 6);
                                        break;
                                    case '7':
                                        v0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                v0('\t');
                                                break;
                                            case 'u':
                                                v0((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case 'v':
                                                v0((char) 11);
                                                break;
                                            default:
                                                this.f6601e = next2;
                                                throw new JSONException("unclosed single-quote string");
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                char next4 = next();
                                int[] iArr = f6597v;
                                v0((char) ((iArr[next3] * 16) + iArr[next4]));
                            }
                        }
                    }
                    v0('\f');
                } else {
                    v0('\'');
                }
            } else if (this.f6607k) {
                int i11 = this.f6605i;
                char[] cArr3 = this.f6604h;
                if (i11 == cArr3.length) {
                    v0(next);
                } else {
                    this.f6605i = i11 + 1;
                    cArr3[i11] = next;
                }
            } else {
                this.f6605i++;
            }
        }
    }

    public static final boolean m0(char c10) {
        return c10 == ' ' || c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == '\f' || c10 == '\b';
    }

    /* JADX WARN: Code duplicated, block: B:37:0x007b A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x007d -> B:34:0x006e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final double A0(char[] r11) {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.e.A0(char[]):double");
    }

    public final float B0(char[] cArr) {
        int i10;
        char cU;
        this.f6609m = 0;
        if (!n(cArr)) {
            this.f6609m = -2;
            return 0.0f;
        }
        int length = cArr.length;
        int i11 = length + 1;
        char cU2 = u(this.f6602f + length);
        if (cU2 < '0' || cU2 > '9') {
            this.f6609m = -1;
            return 0.0f;
        }
        while (true) {
            i10 = i11 + 1;
            cU = u(this.f6602f + i11);
            if (cU < '0' || cU > '9') {
                break;
            }
            i11 = i10;
        }
        if (cU == '.') {
            int i12 = i10 + 1;
            char cU3 = u(this.f6602f + i10);
            if (cU3 < '0' || cU3 > '9') {
                this.f6609m = -1;
                return 0.0f;
            }
            while (true) {
                i10 = i12 + 1;
                cU = u(this.f6602f + i12);
                if (cU < '0' || cU > '9') {
                    break;
                }
                i12 = i10;
            }
        }
        int i13 = this.f6602f;
        int length2 = cArr.length + i13;
        float f10 = Float.parseFloat(R0(length2, ((i13 + i10) - length2) - 1));
        if (cU == ',') {
            this.f6602f += i10 - 1;
            next();
            this.f6609m = 3;
            this.f6598b = 16;
            return f10;
        }
        if (cU != '}') {
            this.f6609m = -1;
            return 0.0f;
        }
        int i14 = i10 + 1;
        char cU4 = u(this.f6602f + i10);
        if (cU4 == ',') {
            this.f6598b = 16;
            this.f6602f += i14 - 1;
            next();
        } else if (cU4 == ']') {
            this.f6598b = 15;
            this.f6602f += i14 - 1;
            next();
        } else if (cU4 == '}') {
            this.f6598b = 13;
            this.f6602f += i14 - 1;
            next();
        } else {
            if (cU4 != 26) {
                this.f6609m = -1;
                return 0.0f;
            }
            this.f6602f += i14 - 1;
            this.f6598b = 20;
            this.f6601e = (char) 26;
        }
        this.f6609m = 4;
        return f10;
    }

    public int C0(char[] cArr) {
        int i10;
        char cU;
        this.f6609m = 0;
        if (!n(cArr)) {
            this.f6609m = -2;
            return 0;
        }
        int length = cArr.length;
        int i11 = length + 1;
        char cU2 = u(this.f6602f + length);
        if (cU2 < '0' || cU2 > '9') {
            this.f6609m = -1;
            return 0;
        }
        int i12 = f6597v[cU2];
        while (true) {
            i10 = i11 + 1;
            cU = u(this.f6602f + i11);
            if (cU < '0' || cU > '9') {
                break;
            }
            i12 = (i12 * 10) + f6597v[cU];
            i11 = i10;
        }
        if (cU == '.') {
            this.f6609m = -1;
            return 0;
        }
        if (i12 < 0) {
            this.f6609m = -1;
            return 0;
        }
        if (cU == ',') {
            this.f6602f += i10 - 1;
            next();
            this.f6609m = 3;
            this.f6598b = 16;
            return i12;
        }
        if (cU != '}') {
            this.f6609m = -1;
            return 0;
        }
        int i13 = i10 + 1;
        char cU3 = u(this.f6602f + i10);
        if (cU3 == ',') {
            this.f6598b = 16;
            this.f6602f += i13 - 1;
            next();
        } else if (cU3 == ']') {
            this.f6598b = 15;
            this.f6602f += i13 - 1;
            next();
        } else if (cU3 == '}') {
            this.f6598b = 13;
            this.f6602f += i13 - 1;
            next();
        } else {
            if (cU3 != 26) {
                this.f6609m = -1;
                return 0;
            }
            this.f6598b = 20;
            this.f6602f += i13 - 1;
            this.f6601e = (char) 26;
        }
        this.f6609m = 4;
        return i12;
    }

    public long D0(char[] cArr) {
        int i10;
        char cU;
        this.f6609m = 0;
        if (!n(cArr)) {
            this.f6609m = -2;
            return 0L;
        }
        int length = cArr.length;
        int i11 = length + 1;
        char cU2 = u(this.f6602f + length);
        if (cU2 < '0' || cU2 > '9') {
            this.f6609m = -1;
            return 0L;
        }
        long j10 = f6597v[cU2];
        while (true) {
            i10 = i11 + 1;
            cU = u(this.f6602f + i11);
            if (cU < '0' || cU > '9') {
                break;
            }
            j10 = (j10 * 10) + ((long) f6597v[cU]);
            i11 = i10;
        }
        if (cU == '.') {
            this.f6609m = -1;
            return 0L;
        }
        if (j10 < 0) {
            this.f6609m = -1;
            return 0L;
        }
        if (cU == ',') {
            this.f6602f += i10 - 1;
            next();
            this.f6609m = 3;
            this.f6598b = 16;
            return j10;
        }
        if (cU != '}') {
            this.f6609m = -1;
            return 0L;
        }
        int i12 = i10 + 1;
        char cU3 = u(this.f6602f + i10);
        if (cU3 == ',') {
            this.f6598b = 16;
            this.f6602f += i12 - 1;
            next();
        } else if (cU3 == ']') {
            this.f6598b = 15;
            this.f6602f += i12 - 1;
            next();
        } else if (cU3 == '}') {
            this.f6598b = 13;
            this.f6602f += i12 - 1;
            next();
        } else {
            if (cU3 != 26) {
                this.f6609m = -1;
                return 0L;
            }
            this.f6598b = 20;
            this.f6602f += i12 - 1;
            this.f6601e = (char) 26;
        }
        this.f6609m = 4;
        return j10;
    }

    public String E0(char[] cArr) {
        boolean z10 = false;
        this.f6609m = 0;
        if (!n(cArr)) {
            this.f6609m = -2;
            return Q0();
        }
        int length = cArr.length;
        int i10 = length + 1;
        if (u(this.f6602f + length) != '\"') {
            this.f6609m = -1;
            return Q0();
        }
        int iK0 = k0('\"', this.f6602f + cArr.length + 1);
        if (iK0 == -1) {
            throw new JSONException("unclosed str");
        }
        int length2 = this.f6602f + cArr.length + 1;
        String strR0 = R0(length2, iK0 - length2);
        for (int length3 = this.f6602f + cArr.length + 1; length3 < iK0; length3++) {
            if (u(length3) == '\\') {
                z10 = true;
                break;
            }
        }
        if (z10) {
            this.f6609m = -1;
            return Q0();
        }
        int i11 = this.f6602f;
        int length4 = i10 + (iK0 - ((cArr.length + i11) + 1)) + 1;
        int i12 = length4 + 1;
        char cU = u(i11 + length4);
        if (cU == ',') {
            this.f6602f += i12 - 1;
            next();
            this.f6609m = 3;
            return strR0;
        }
        if (cU != '}') {
            this.f6609m = -1;
            return Q0();
        }
        int i13 = i12 + 1;
        char cU2 = u(this.f6602f + i12);
        if (cU2 == ',') {
            this.f6598b = 16;
            this.f6602f += i13 - 1;
            next();
        } else if (cU2 == ']') {
            this.f6598b = 15;
            this.f6602f += i13 - 1;
            next();
        } else if (cU2 == '}') {
            this.f6598b = 13;
            this.f6602f += i13 - 1;
            next();
        } else {
            if (cU2 != 26) {
                this.f6609m = -1;
                return Q0();
            }
            this.f6598b = 20;
            this.f6602f += i13 - 1;
            this.f6601e = (char) 26;
        }
        this.f6609m = 4;
        return strR0;
    }

    public Collection<String> F0(char[] cArr, Class<?> cls) {
        Collection<String> arrayList;
        int i10;
        this.f6609m = 0;
        if (!n(cArr)) {
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
        int length = cArr.length;
        int i11 = length + 1;
        if (u(this.f6602f + length) != '[') {
            this.f6609m = -1;
            return null;
        }
        int i12 = i11 + 1;
        char cU = u(this.f6602f + i11);
        while (cU == '\"') {
            int i13 = i12;
            while (true) {
                i10 = i13 + 1;
                char cU2 = u(this.f6602f + i13);
                if (cU2 == '\"') {
                    break;
                }
                if (cU2 == '\\') {
                    this.f6609m = -1;
                    return null;
                }
                i13 = i10;
            }
            int i14 = this.f6602f;
            int i15 = i12 + i14;
            arrayList.add(R0(i15, ((i14 + i10) - i15) - 1));
            int i16 = i10 + 1;
            char cU3 = u(this.f6602f + i10);
            if (cU3 != ',') {
                if (cU3 != ']') {
                    this.f6609m = -1;
                    return null;
                }
                int i17 = i16 + 1;
                char cU4 = u(this.f6602f + i16);
                if (cU4 == ',') {
                    this.f6602f += i17 - 1;
                    next();
                    this.f6609m = 3;
                    return arrayList;
                }
                if (cU4 != '}') {
                    this.f6609m = -1;
                    return null;
                }
                int i18 = i17 + 1;
                char cU5 = u(this.f6602f + i17);
                if (cU5 == ',') {
                    this.f6598b = 16;
                    this.f6602f += i18 - 1;
                    next();
                } else if (cU5 == ']') {
                    this.f6598b = 15;
                    this.f6602f += i18 - 1;
                    next();
                } else if (cU5 == '}') {
                    this.f6598b = 13;
                    this.f6602f += i18 - 1;
                    next();
                } else {
                    if (cU5 != 26) {
                        this.f6609m = -1;
                        return null;
                    }
                    this.f6602f += i18 - 1;
                    this.f6598b = 20;
                    this.f6601e = (char) 26;
                }
                this.f6609m = 4;
                return arrayList;
            }
            cU = u(this.f6602f + i16);
            i12 = i16 + 1;
        }
        this.f6609m = -1;
        return null;
    }

    public String G0(char[] cArr, l lVar) {
        int i10 = 0;
        this.f6609m = 0;
        if (!n(cArr)) {
            this.f6609m = -2;
            return null;
        }
        int length = cArr.length;
        int i11 = length + 1;
        if (u(this.f6602f + length) != '\"') {
            this.f6609m = -1;
            return null;
        }
        while (true) {
            int i12 = i11 + 1;
            char cU = u(this.f6602f + i11);
            if (cU == '\"') {
                int i13 = this.f6602f;
                int length2 = cArr.length + i13 + 1;
                String strA = a(length2, ((i13 + i12) - length2) - 1, i10, lVar);
                int i14 = i12 + 1;
                char cU2 = u(this.f6602f + i12);
                if (cU2 == ',') {
                    this.f6602f += i14 - 1;
                    next();
                    this.f6609m = 3;
                    return strA;
                }
                if (cU2 != '}') {
                    this.f6609m = -1;
                    return null;
                }
                int i15 = i14 + 1;
                char cU3 = u(this.f6602f + i14);
                if (cU3 == ',') {
                    this.f6598b = 16;
                    this.f6602f += i15 - 1;
                    next();
                } else if (cU3 == ']') {
                    this.f6598b = 15;
                    this.f6602f += i15 - 1;
                    next();
                } else if (cU3 == '}') {
                    this.f6598b = 13;
                    this.f6602f += i15 - 1;
                    next();
                } else {
                    if (cU3 != 26) {
                        this.f6609m = -1;
                        return null;
                    }
                    this.f6598b = 20;
                    this.f6602f += i15 - 1;
                    this.f6601e = (char) 26;
                }
                this.f6609m = 4;
                return strA;
            }
            i10 = (i10 * 31) + cU;
            if (cU == '\\') {
                this.f6609m = -1;
                return null;
            }
            i11 = i12;
        }
    }

    public final float H0(char c10) {
        int i10;
        char cU;
        this.f6609m = 0;
        char cU2 = u(this.f6602f + 0);
        if (cU2 < '0' || cU2 > '9') {
            this.f6609m = -1;
            return 0.0f;
        }
        int i11 = 1;
        while (true) {
            i10 = i11 + 1;
            cU = u(this.f6602f + i11);
            if (cU < '0' || cU > '9') {
                break;
            }
            i11 = i10;
        }
        if (cU == '.') {
            int i12 = i10 + 1;
            char cU3 = u(this.f6602f + i10);
            if (cU3 < '0' || cU3 > '9') {
                this.f6609m = -1;
                return 0.0f;
            }
            while (true) {
                i10 = i12 + 1;
                cU = u(this.f6602f + i12);
                if (cU < '0' || cU > '9') {
                    break;
                }
                i12 = i10;
            }
        }
        int i13 = this.f6602f;
        float f10 = Float.parseFloat(R0(i13, ((i13 + i10) - i13) - 1));
        if (cU != c10) {
            this.f6609m = -1;
            return f10;
        }
        this.f6602f += i10 - 1;
        next();
        this.f6609m = 3;
        this.f6598b = 16;
        return f10;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final int I() {
        int i10;
        boolean z10;
        int i11 = 0;
        if (this.f6606j == -1) {
            this.f6606j = 0;
        }
        int i12 = this.f6606j;
        int i13 = this.f6605i + i12;
        if (u(i12) == '-') {
            i12++;
            i10 = Integer.MIN_VALUE;
            z10 = true;
        } else {
            i10 = -2147483647;
            z10 = false;
        }
        if (i12 < i13) {
            int i14 = i12 + 1;
            i11 = -f6597v[u(i12)];
            i12 = i14;
        }
        while (i12 < i13) {
            int i15 = i12 + 1;
            char cU = u(i12);
            if (cU == 'L' || cU == 'S' || cU == 'B') {
                i12 = i15;
                break;
            }
            int i16 = f6597v[cU];
            if (i11 < -214748364) {
                throw new NumberFormatException(g0());
            }
            int i17 = i11 * 10;
            if (i17 < i10 + i16) {
                throw new NumberFormatException(g0());
            }
            i11 = i17 - i16;
            i12 = i15;
        }
        if (!z10) {
            return -i11;
        }
        if (i12 > this.f6606j + 1) {
            return i11;
        }
        throw new NumberFormatException(g0());
    }

    public final void I0() {
        this.f6606j = this.f6602f - 1;
        this.f6607k = false;
        do {
            this.f6605i++;
            next();
        } while (Character.isLetterOrDigit(this.f6601e));
        Integer num = this.f6610n.get(R());
        if (num != null) {
            this.f6598b = num.intValue();
        } else {
            this.f6598b = 18;
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
    @Override // com.alibaba.fastjson.parser.d
    public final void J() {
        char c10;
        boolean z10;
        char c11;
        this.f6606j = this.f6602f;
        boolean z11 = true;
        if (this.f6601e == '-') {
            this.f6605i++;
            next();
        }
        while (true) {
            c10 = this.f6601e;
            if (c10 < '0' || c10 > '9') {
                break;
            }
            this.f6605i++;
            next();
        }
        if (c10 == '.') {
            this.f6605i++;
            next();
            while (true) {
                char c12 = this.f6601e;
                if (c12 < '0' || c12 > '9') {
                    break;
                }
                this.f6605i++;
                next();
            }
            z10 = true;
        } else {
            z10 = false;
        }
        char c13 = this.f6601e;
        if (c13 != 'L' && c13 != 'S' && c13 != 'B') {
            if (c13 == 'F' || c13 == 'D') {
                this.f6605i++;
                next();
            } else if (c13 == 'e' || c13 == 'E') {
                this.f6605i++;
                next();
                char c14 = this.f6601e;
                if (c14 == '+' || c14 == '-') {
                    this.f6605i++;
                    next();
                }
                while (true) {
                    c11 = this.f6601e;
                    if (c11 < '0' || c11 > '9') {
                        break;
                    }
                    this.f6605i++;
                    next();
                }
                if (c11 == 'D' || c11 == 'F') {
                    this.f6605i++;
                    next();
                }
            }
            if (z11) {
                this.f6598b = 3;
            } else {
                this.f6598b = 2;
            }
        }
        this.f6605i++;
        next();
        z11 = z10;
        if (z11) {
            this.f6598b = 3;
        } else {
            this.f6598b = 2;
        }
    }

    public final void J0() {
        if (this.f6601e != 'n') {
            throw new JSONException("error parse null or new");
        }
        next();
        char c10 = this.f6601e;
        if (c10 != 'u') {
            if (c10 != 'e') {
                throw new JSONException("error parse e");
            }
            next();
            if (this.f6601e != 'w') {
                throw new JSONException("error parse w");
            }
            next();
            char c11 = this.f6601e;
            if (c11 != ' ' && c11 != ',' && c11 != '}' && c11 != ']' && c11 != '\n' && c11 != '\r' && c11 != '\t' && c11 != 26 && c11 != '\f' && c11 != '\b') {
                throw new JSONException("scan true error");
            }
            this.f6598b = 9;
            return;
        }
        next();
        if (this.f6601e != 'l') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'l') {
            throw new JSONException("error parse true");
        }
        next();
        char c12 = this.f6601e;
        if (c12 != ' ' && c12 != ',' && c12 != '}' && c12 != ']' && c12 != '\n' && c12 != '\r' && c12 != '\t' && c12 != 26 && c12 != '\f' && c12 != '\b') {
            throw new JSONException("scan true error");
        }
        this.f6598b = 8;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final String K(l lVar) {
        boolean[] zArr = com.alibaba.fastjson.util.f.f6822b;
        int i10 = this.f6601e;
        if (!(i10 >= zArr.length || zArr[i10])) {
            throw new JSONException("illegal identifier : " + this.f6601e);
        }
        boolean[] zArr2 = com.alibaba.fastjson.util.f.f6823c;
        this.f6606j = this.f6602f;
        this.f6605i = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i10 = (i10 * 31) + next;
            this.f6605i++;
        }
        this.f6601e = u(this.f6602f);
        this.f6598b = 18;
        if (this.f6605i == 4 && i10 == 3392903 && u(this.f6606j) == 'n' && u(this.f6606j + 1) == 'u' && u(this.f6606j + 2) == 'l' && u(this.f6606j + 3) == 'l') {
            return null;
        }
        return a(this.f6606j, this.f6605i, i10, lVar);
    }

    public final void K0() {
        if (this.f6601e != 'S') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 't') {
            throw new JSONException("error parse true");
        }
        next();
        char c10 = this.f6601e;
        if (c10 != ' ' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != '\f' && c10 != '\b' && c10 != '[' && c10 != '(') {
            throw new JSONException("scan set error");
        }
        this.f6598b = 21;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final void L(int i10) {
        r0(':');
    }

    @Override // com.alibaba.fastjson.parser.d
    public final void M() {
        r0(':');
    }

    public final void M0() {
        if (this.f6601e != 'T') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'S') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 't') {
            throw new JSONException("error parse true");
        }
        next();
        char c10 = this.f6601e;
        if (c10 != ' ' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != '\f' && c10 != '\b' && c10 != '[' && c10 != '(') {
            throw new JSONException("scan set error");
        }
        this.f6598b = 22;
    }

    public final void N0() {
        if (this.f6601e != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        char c10 = this.f6601e;
        if (c10 != ' ' && c10 != ',' && c10 != '}' && c10 != ']' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != 26 && c10 != '\f' && c10 != '\b') {
            throw new JSONException("scan true error");
        }
        this.f6598b = 6;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final boolean O() {
        return this.f6605i == 4 && u(this.f6606j + 1) == '$' && u(this.f6606j + 2) == 'r' && u(this.f6606j + 3) == 'e' && u(this.f6606j + 4) == 'f';
    }

    public int O0(String str) {
        this.f6609m = 0;
        char[] cArr = f6592q;
        if (!n(cArr)) {
            return -2;
        }
        int length = this.f6602f + cArr.length;
        int length2 = str.length();
        for (int i10 = 0; i10 < length2; i10++) {
            if (str.charAt(i10) != u(length + i10)) {
                return -1;
            }
        }
        int i11 = length + length2;
        if (u(i11) != '\"') {
            return -1;
        }
        int i12 = i11 + 1;
        char cU = u(i12);
        this.f6601e = cU;
        if (cU == ',') {
            int i13 = i12 + 1;
            this.f6601e = u(i13);
            this.f6602f = i13;
            this.f6598b = 16;
            return 3;
        }
        if (cU == '}') {
            i12++;
            char cU2 = u(i12);
            this.f6601e = cU2;
            if (cU2 == ',') {
                this.f6598b = 16;
                i12++;
                this.f6601e = u(i12);
            } else if (cU2 == ']') {
                this.f6598b = 15;
                i12++;
                this.f6601e = u(i12);
            } else if (cU2 == '}') {
                this.f6598b = 13;
                i12++;
                this.f6601e = u(i12);
            } else {
                if (cU2 != 26) {
                    return -1;
                }
                this.f6598b = 20;
            }
            this.f6609m = 4;
        }
        this.f6602f = i12;
        return this.f6609m;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final boolean P() {
        int i10 = 0;
        while (true) {
            char cU = u(i10);
            if (cU == 26) {
                return true;
            }
            if (!m0(cU)) {
                return false;
            }
            i10++;
        }
    }

    public final void P0() {
        if (this.f6601e != 'u') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'n') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'd') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'i') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'n') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'd') {
            throw new JSONException("error parse false");
        }
        next();
        char c10 = this.f6601e;
        if (c10 != ' ' && c10 != ',' && c10 != '}' && c10 != ']' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != 26 && c10 != '\f' && c10 != '\b') {
            throw new JSONException("scan false error");
        }
        this.f6598b = 23;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final BigDecimal Q() {
        return new BigDecimal(g0());
    }

    public final String Q0() {
        if (c(Feature.InitStringFieldAsEmpty)) {
            return "";
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.d
    public abstract String R();

    public abstract String R0(int i10, int i11);

    public abstract String a(int i10, int i11, int i12, l lVar);

    @Override // com.alibaba.fastjson.parser.d
    public final Number a0() throws NumberFormatException {
        char c10;
        long j10;
        long j11;
        boolean z10 = false;
        if (this.f6606j == -1) {
            this.f6606j = 0;
        }
        int i10 = this.f6606j;
        int i11 = this.f6605i + i10;
        char cU = u(i11 - 1);
        if (cU == 'B') {
            i11--;
            c10 = 'B';
        } else if (cU == 'L') {
            i11--;
            c10 = 'L';
        } else if (cU != 'S') {
            c10 = ' ';
        } else {
            i11--;
            c10 = 'S';
        }
        if (u(this.f6606j) == '-') {
            i10++;
            j10 = Long.MIN_VALUE;
            z10 = true;
        } else {
            j10 = -9223372036854775807L;
        }
        if (i10 < i11) {
            j11 = -f6597v[u(i10)];
            i10++;
        } else {
            j11 = 0;
        }
        while (i10 < i11) {
            int i12 = i10 + 1;
            int i13 = f6597v[u(i10)];
            if (j11 < Buffer.OVERFLOW_ZONE) {
                return new BigInteger(g0());
            }
            long j12 = j11 * 10;
            long j13 = i13;
            if (j12 < j10 + j13) {
                return new BigInteger(g0());
            }
            j11 = j12 - j13;
            i10 = i12;
        }
        if (!z10) {
            long j14 = -j11;
            if (j14 > 2147483647L || c10 == 'L') {
                return Long.valueOf(j14);
            }
            if (c10 == 'S') {
                return Short.valueOf((short) j14);
            }
            return c10 == 'B' ? Byte.valueOf((byte) j14) : Integer.valueOf((int) j14);
        }
        if (i10 <= this.f6606j + 1) {
            throw new NumberFormatException(g0());
        }
        if (j11 < -2147483648L || c10 == 'L') {
            return Long.valueOf(j11);
        }
        if (c10 == 'S') {
            return Short.valueOf((short) j11);
        }
        return c10 == 'B' ? Byte.valueOf((byte) j11) : Integer.valueOf((int) j11);
    }

    @Override // com.alibaba.fastjson.parser.d
    public final int b() {
        return this.f6598b;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final boolean c(Feature feature) {
        return Feature.isEnabled(this.f6600d, feature);
    }

    @Override // com.alibaba.fastjson.parser.d
    public final String c0(l lVar) {
        s();
        char c10 = this.f6601e;
        if (c10 == '\"') {
            return d(lVar, '\"');
        }
        if (c10 == '\'') {
            if (c(Feature.AllowSingleQuotes)) {
                return d(lVar, '\'');
            }
            throw new JSONException("syntax error");
        }
        if (c10 == '}') {
            next();
            this.f6598b = 13;
            return null;
        }
        if (c10 == ',') {
            next();
            this.f6598b = 16;
            return null;
        }
        if (c10 == 26) {
            this.f6598b = 20;
            return null;
        }
        if (c(Feature.AllowUnQuotedFieldNames)) {
            return K(lVar);
        }
        throw new JSONException("syntax error");
    }

    @Override // com.alibaba.fastjson.parser.d, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f6604h.length <= 8192) {
            f6591p.set(new SoftReference<>(this.f6604h));
        }
        this.f6604h = null;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final String d(l lVar, char c10) {
        String strC;
        this.f6606j = this.f6602f;
        this.f6605i = 0;
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            char next = next();
            if (next == c10) {
                this.f6598b = 4;
                if (z10) {
                    strC = lVar.c(this.f6604h, 0, this.f6605i, i10);
                } else {
                    int i11 = this.f6606j;
                    strC = a(i11 == -1 ? 0 : i11 + 1, this.f6605i, i10, lVar);
                }
                this.f6605i = 0;
                next();
                return strC;
            }
            if (next == 26) {
                throw new JSONException("unclosed.str");
            }
            if (next == '\\') {
                if (!z10) {
                    int i12 = this.f6605i;
                    char[] cArr = this.f6604h;
                    if (i12 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i12 <= length) {
                            i12 = length;
                        }
                        char[] cArr2 = new char[i12];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f6604h = cArr2;
                    }
                    i(this.f6606j + 1, this.f6604h, 0, this.f6605i);
                    z10 = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    i10 = (i10 * 31) + 34;
                    v0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            i10 = (i10 * 31) + 92;
                            v0(TokenParser.ESCAPE);
                        } else if (next2 == 'b') {
                            i10 = (i10 * 31) + 8;
                            v0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                i10 = (i10 * 31) + 10;
                                v0('\n');
                            } else if (next2 == 'r') {
                                i10 = (i10 * 31) + 13;
                                v0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        i10 = (i10 * 31) + 47;
                                        v0('/');
                                        break;
                                    case '0':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 0);
                                        break;
                                    case '1':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 1);
                                        break;
                                    case '2':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 2);
                                        break;
                                    case '3':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 3);
                                        break;
                                    case '4':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 4);
                                        break;
                                    case '5':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 5);
                                        break;
                                    case '6':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 6);
                                        break;
                                    case '7':
                                        i10 = (i10 * 31) + next2;
                                        v0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                i10 = (i10 * 31) + 9;
                                                v0('\t');
                                                break;
                                            case 'u':
                                                int i13 = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                i10 = (i10 * 31) + i13;
                                                v0((char) i13);
                                                break;
                                            case 'v':
                                                i10 = (i10 * 31) + 11;
                                                v0((char) 11);
                                                break;
                                            default:
                                                this.f6601e = next2;
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                this.f6601e = next3;
                                char next4 = next();
                                this.f6601e = next4;
                                int[] iArr = f6597v;
                                char c11 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                i10 = (i10 * 31) + c11;
                                v0(c11);
                            }
                        }
                    }
                    i10 = (i10 * 31) + 12;
                    v0('\f');
                } else {
                    i10 = (i10 * 31) + 39;
                    v0('\'');
                }
            } else {
                i10 = (i10 * 31) + next;
                if (z10) {
                    int i14 = this.f6605i;
                    char[] cArr3 = this.f6604h;
                    if (i14 == cArr3.length) {
                        v0(next);
                    } else {
                        this.f6605i = i14 + 1;
                        cArr3[i14] = next;
                    }
                } else {
                    this.f6605i++;
                }
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.d
    public final void d0() {
        this.f6605i = 0;
    }

    @Override // com.alibaba.fastjson.parser.d
    public String e(l lVar, char c10) {
        int i10 = 0;
        this.f6609m = 0;
        char cU = u(this.f6602f + 0);
        if (cU == 'n') {
            if (u(this.f6602f + 1) != 'u' || u(this.f6602f + 1 + 1) != 'l' || u(this.f6602f + 1 + 2) != 'l') {
                this.f6609m = -1;
                return null;
            }
            if (u(this.f6602f + 4) != c10) {
                this.f6609m = -1;
                return null;
            }
            this.f6602f += 4;
            next();
            this.f6609m = 3;
            return null;
        }
        if (cU != '\"') {
            this.f6609m = -1;
            return null;
        }
        int i11 = 1;
        while (true) {
            int i12 = i11 + 1;
            char cU2 = u(this.f6602f + i11);
            if (cU2 == '\"') {
                int i13 = this.f6602f;
                int i14 = i13 + 0 + 1;
                String strA = a(i14, ((i13 + i12) - i14) - 1, i10, lVar);
                int i15 = i12 + 1;
                if (u(this.f6602f + i12) != c10) {
                    this.f6609m = -1;
                    return strA;
                }
                this.f6602f += i15 - 1;
                next();
                this.f6609m = 3;
                return strA;
            }
            i10 = (i10 * 31) + cU2;
            if (cU2 == '\\') {
                this.f6609m = -1;
                return null;
            }
            i11 = i12;
        }
    }

    @Override // com.alibaba.fastjson.parser.d
    public final Number e0(boolean z10) {
        char cU = u((this.f6606j + this.f6605i) - 1);
        if (cU == 'F') {
            return Float.valueOf(Float.parseFloat(g0()));
        }
        if (cU == 'D') {
            return Double.valueOf(Double.parseDouble(g0()));
        }
        return z10 ? Q() : Double.valueOf(i0());
    }

    @Override // com.alibaba.fastjson.parser.d
    public void f(Feature feature, boolean z10) {
        this.f6600d = Feature.config(this.f6600d, feature, z10);
    }

    @Override // com.alibaba.fastjson.parser.d
    public final int f0() {
        return this.f6602f;
    }

    @Override // com.alibaba.fastjson.parser.d
    public Collection<String> g(Class<?> cls, char c10) {
        Collection<String> arrayList;
        int i10;
        char cU;
        this.f6609m = 0;
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
        char cU2 = u(this.f6602f + 0);
        if (cU2 == 'n') {
            if (u(this.f6602f + 1) != 'u' || u(this.f6602f + 1 + 1) != 'l' || u(this.f6602f + 1 + 2) != 'l') {
                this.f6609m = -1;
                return null;
            }
            if (u(this.f6602f + 4) != c10) {
                this.f6609m = -1;
                return null;
            }
            this.f6602f += 4;
            next();
            this.f6609m = 3;
            return null;
        }
        if (cU2 != '[') {
            this.f6609m = -1;
            return null;
        }
        char cU3 = u(this.f6602f + 1);
        int i11 = 2;
        while (true) {
            if (cU3 == 'n' && u(this.f6602f + i11) == 'u' && u(this.f6602f + i11 + 1) == 'l' && u(this.f6602f + i11 + 2) == 'l') {
                int i12 = i11 + 3;
                i10 = i12 + 1;
                cU = u(this.f6602f + i12);
            } else {
                if (cU3 != '\"') {
                    this.f6609m = -1;
                    return null;
                }
                int i13 = i11;
                while (true) {
                    int i14 = i13 + 1;
                    char cU4 = u(this.f6602f + i13);
                    if (cU4 == '\"') {
                        int i15 = this.f6602f;
                        int i16 = i11 + i15;
                        arrayList.add(R0(i16, ((i15 + i14) - i16) - 1));
                        i10 = i14 + 1;
                        cU = u(this.f6602f + i14);
                        break;
                    }
                    if (cU4 == '\\') {
                        this.f6609m = -1;
                        return null;
                    }
                    i13 = i14;
                }
            }
            if (cU != ',') {
                if (cU != ']') {
                    this.f6609m = -1;
                    return null;
                }
                int i17 = i10 + 1;
                if (u(this.f6602f + i10) != c10) {
                    this.f6609m = -1;
                    return arrayList;
                }
                this.f6602f += i17 - 1;
                next();
                this.f6609m = 3;
                return arrayList;
            }
            i11 = i10 + 1;
            cU3 = u(this.f6602f + i10);
        }
    }

    @Override // com.alibaba.fastjson.parser.d
    public abstract String g0();

    @Override // com.alibaba.fastjson.parser.d
    public final char getCurrent() {
        return this.f6601e;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final String h() {
        return h.a(this.f6598b);
    }

    protected abstract void i(int i10, char[] cArr, int i11, int i12);

    public double i0() {
        return Double.parseDouble(g0());
    }

    @Override // com.alibaba.fastjson.parser.d
    public final void j() {
        this.f6605i = 0;
        while (true) {
            this.f6599c = this.f6602f;
            char c10 = this.f6601e;
            if (c10 == '\"') {
                k();
                return;
            }
            if (c10 == ',') {
                next();
                this.f6598b = 16;
                return;
            }
            if (c10 >= '0' && c10 <= '9') {
                J();
                return;
            }
            if (c10 == '-') {
                J();
                return;
            }
            if (c10 != '\f' && c10 != '\r' && c10 != ' ') {
                if (c10 == ':') {
                    next();
                    this.f6598b = 17;
                    return;
                }
                if (c10 == '[') {
                    next();
                    this.f6598b = 14;
                    return;
                }
                if (c10 == ']') {
                    next();
                    this.f6598b = 15;
                    return;
                }
                if (c10 == 'f') {
                    x0();
                    return;
                }
                if (c10 == 'n') {
                    J0();
                    return;
                }
                if (c10 == '{') {
                    next();
                    this.f6598b = 12;
                    return;
                }
                if (c10 == '}') {
                    next();
                    this.f6598b = 13;
                    return;
                }
                if (c10 == 'S') {
                    K0();
                    return;
                }
                if (c10 == 'T') {
                    M0();
                    return;
                }
                if (c10 == 't') {
                    N0();
                    return;
                }
                if (c10 == 'u') {
                    P0();
                    return;
                }
                switch (c10) {
                    case '\b':
                    case '\t':
                    case '\n':
                        break;
                    default:
                        switch (c10) {
                            case '\'':
                                if (!c(Feature.AllowSingleQuotes)) {
                                    throw new JSONException("Feature.AllowSingleQuotes is false");
                                }
                                L0();
                                return;
                            case '(':
                                next();
                                this.f6598b = 10;
                                return;
                            case ')':
                                next();
                                this.f6598b = 11;
                                return;
                            default:
                                if (!l0()) {
                                    n0("illegal.char", String.valueOf((int) this.f6601e));
                                    next();
                                    return;
                                } else {
                                    if (this.f6598b == 20) {
                                        throw new JSONException("EOF error");
                                    }
                                    this.f6598b = 20;
                                    int i10 = this.f6603g;
                                    this.f6602f = i10;
                                    this.f6599c = i10;
                                    return;
                                }
                        }
                }
            }
            next();
        }
    }

    public Calendar j0() {
        return this.f6608l;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final void k() {
        this.f6606j = this.f6602f;
        this.f6607k = false;
        while (true) {
            char next = next();
            if (next == '\"') {
                this.f6598b = 4;
                this.f6601e = next();
                return;
            }
            if (next == 26) {
                throw new JSONException("unclosed string : " + next);
            }
            if (next == '\\') {
                if (!this.f6607k) {
                    this.f6607k = true;
                    int i10 = this.f6605i;
                    char[] cArr = this.f6604h;
                    if (i10 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i10 <= length) {
                            i10 = length;
                        }
                        char[] cArr2 = new char[i10];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f6604h = cArr2;
                    }
                    x(this.f6606j + 1, this.f6605i, this.f6604h);
                }
                char next2 = next();
                if (next2 == '\"') {
                    v0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            v0(TokenParser.ESCAPE);
                        } else if (next2 == 'b') {
                            v0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                v0('\n');
                            } else if (next2 == 'r') {
                                v0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        v0('/');
                                        break;
                                    case '0':
                                        v0((char) 0);
                                        break;
                                    case '1':
                                        v0((char) 1);
                                        break;
                                    case '2':
                                        v0((char) 2);
                                        break;
                                    case '3':
                                        v0((char) 3);
                                        break;
                                    case '4':
                                        v0((char) 4);
                                        break;
                                    case '5':
                                        v0((char) 5);
                                        break;
                                    case '6':
                                        v0((char) 6);
                                        break;
                                    case '7':
                                        v0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                v0('\t');
                                                break;
                                            case 'u':
                                                v0((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case 'v':
                                                v0((char) 11);
                                                break;
                                            default:
                                                this.f6601e = next2;
                                                throw new JSONException("unclosed string : " + next2);
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                char next4 = next();
                                int[] iArr = f6597v;
                                v0((char) ((iArr[next3] * 16) + iArr[next4]));
                            }
                        }
                    }
                    v0('\f');
                } else {
                    v0('\'');
                }
            } else if (this.f6607k) {
                int i11 = this.f6605i;
                char[] cArr3 = this.f6604h;
                if (i11 == cArr3.length) {
                    v0(next);
                } else {
                    this.f6605i = i11 + 1;
                    cArr3[i11] = next;
                }
            } else {
                this.f6605i++;
            }
        }
    }

    public abstract int k0(char c10, int i10);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:103:0x0073 A[SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.d
    public final void l(int i10) {
        this.f6605i = 0;
        while (true) {
            if (i10 == 2) {
                char c10 = this.f6601e;
                if (c10 >= '0' && c10 <= '9') {
                    this.f6599c = this.f6602f;
                    J();
                    return;
                }
                if (c10 == '\"') {
                    this.f6599c = this.f6602f;
                    k();
                    return;
                } else if (c10 == '[') {
                    this.f6598b = 14;
                    next();
                    return;
                } else if (c10 == '{') {
                    this.f6598b = 12;
                    next();
                    return;
                }
            } else if (i10 == 4) {
                char c11 = this.f6601e;
                if (c11 == '\"') {
                    this.f6599c = this.f6602f;
                    k();
                    return;
                }
                if (c11 >= '0' && c11 <= '9') {
                    this.f6599c = this.f6602f;
                    J();
                    return;
                } else if (c11 == '[') {
                    this.f6598b = 14;
                    next();
                    return;
                } else if (c11 == '{') {
                    this.f6598b = 12;
                    next();
                    return;
                }
            } else if (i10 == 12) {
                char c12 = this.f6601e;
                if (c12 == '{') {
                    this.f6598b = 12;
                    next();
                    return;
                } else if (c12 == '[') {
                    this.f6598b = 14;
                    next();
                    return;
                }
            } else {
                if (i10 == 18) {
                    q0();
                    return;
                }
                if (i10 != 20) {
                    switch (i10) {
                        case 14:
                            char c13 = this.f6601e;
                            if (c13 == '[') {
                                this.f6598b = 14;
                                next();
                            } else if (c13 == '{') {
                                this.f6598b = 12;
                                next();
                            }
                            break;
                        case 15:
                            if (this.f6601e == ']') {
                                this.f6598b = 15;
                                next();
                            }
                            if (this.f6601e == 26) {
                                this.f6598b = 20;
                            }
                            break;
                        case 16:
                            char c14 = this.f6601e;
                            if (c14 == ',') {
                                this.f6598b = 16;
                                next();
                            } else if (c14 == '}') {
                                this.f6598b = 13;
                                next();
                            } else if (c14 == ']') {
                                this.f6598b = 15;
                                next();
                            } else if (c14 == 26) {
                                this.f6598b = 20;
                            }
                            break;
                    }
                    return;
                }
                if (this.f6601e == 26) {
                    this.f6598b = 20;
                    return;
                }
            }
            char c15 = this.f6601e;
            if (c15 != ' ' && c15 != '\n' && c15 != '\r' && c15 != '\t' && c15 != '\f' && c15 != '\b') {
                j();
                return;
            }
            next();
        }
    }

    public abstract boolean l0();

    @Override // com.alibaba.fastjson.parser.d
    public int m(char c10) {
        int i10;
        char cU;
        this.f6609m = 0;
        char cU2 = u(this.f6602f + 0);
        if (cU2 < '0' || cU2 > '9') {
            this.f6609m = -1;
            return 0;
        }
        int i11 = f6597v[cU2];
        int i12 = 1;
        while (true) {
            i10 = i12 + 1;
            cU = u(this.f6602f + i12);
            if (cU < '0' || cU > '9') {
                break;
            }
            i11 = (i11 * 10) + f6597v[cU];
            i12 = i10;
        }
        if (cU == '.') {
            this.f6609m = -1;
            return 0;
        }
        if (i11 < 0) {
            this.f6609m = -1;
            return 0;
        }
        if (cU != c10) {
            this.f6609m = -1;
            return i11;
        }
        this.f6602f += i10 - 1;
        next();
        this.f6609m = 3;
        this.f6598b = 16;
        return i11;
    }

    protected abstract boolean n(char[] cArr);

    protected void n0(String str, Object... objArr) {
        this.f6598b = 1;
    }

    @Override // com.alibaba.fastjson.parser.d
    public abstract char next();

    @Override // com.alibaba.fastjson.parser.d
    public abstract byte[] o();

    public final boolean o0(char[] cArr) {
        if (!n(cArr)) {
            return false;
        }
        int length = this.f6602f + cArr.length;
        this.f6602f = length;
        char cU = u(length);
        this.f6601e = cU;
        if (cU == '{') {
            next();
            this.f6598b = 12;
            return true;
        }
        if (cU != '[') {
            j();
            return true;
        }
        next();
        this.f6598b = 14;
        return true;
    }

    @Override // com.alibaba.fastjson.parser.d
    public float p() {
        return Float.parseFloat(g0());
    }

    public final int p0() {
        return this.f6609m;
    }

    @Override // com.alibaba.fastjson.parser.d
    public String q(char c10) {
        boolean z10 = false;
        this.f6609m = 0;
        char cU = u(this.f6602f + 0);
        if (cU == 'n') {
            if (u(this.f6602f + 1) != 'u' || u(this.f6602f + 1 + 1) != 'l' || u(this.f6602f + 1 + 2) != 'l') {
                this.f6609m = -1;
                return null;
            }
            if (u(this.f6602f + 4) != c10) {
                this.f6609m = -1;
                return null;
            }
            this.f6602f += 4;
            next();
            this.f6609m = 3;
            return null;
        }
        if (cU != '\"') {
            this.f6609m = -1;
            return Q0();
        }
        int i10 = this.f6602f + 1;
        int iK0 = k0('\"', i10);
        if (iK0 == -1) {
            throw new JSONException("unclosed str");
        }
        String strR0 = R0(this.f6602f + 1, iK0 - i10);
        for (int i11 = this.f6602f + 1; i11 < iK0; i11++) {
            if (u(i11) == '\\') {
                z10 = true;
                break;
            }
        }
        if (z10) {
            this.f6609m = -1;
            return Q0();
        }
        int i12 = this.f6602f;
        int i13 = (iK0 - (i12 + 1)) + 1 + 1;
        int i14 = i13 + 1;
        if (u(i12 + i13) != c10) {
            this.f6609m = -1;
            return strR0;
        }
        this.f6602f += i14 - 1;
        next();
        this.f6609m = 3;
        return strR0;
    }

    public final void q0() {
        while (m0(this.f6601e)) {
            next();
        }
        char c10 = this.f6601e;
        if (c10 == '_' || Character.isLetter(c10)) {
            I0();
        } else {
            j();
        }
    }

    public final void r0(char c10) {
        this.f6605i = 0;
        while (true) {
            char c11 = this.f6601e;
            if (c11 == c10) {
                next();
                j();
                return;
            }
            if (c11 != ' ' && c11 != '\n' && c11 != '\r' && c11 != '\t' && c11 != '\f' && c11 != '\b') {
                throw new JSONException("not match " + c10 + " - " + this.f6601e);
            }
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.d
    public final void s() {
        while (true) {
            char c10 = this.f6601e;
            boolean[] zArr = com.alibaba.fastjson.util.f.f6832l;
            if (c10 >= zArr.length || !zArr[c10]) {
                return;
            } else {
                next();
            }
        }
    }

    public final void s0(char c10, int i10) {
        this.f6605i = 0;
        while (true) {
            char c11 = this.f6601e;
            if (c11 == c10) {
                next();
                while (true) {
                    if (i10 == 2) {
                        char c12 = this.f6601e;
                        if (c12 >= '0' && c12 <= '9') {
                            this.f6599c = this.f6602f;
                            J();
                            return;
                        } else if (c12 == '\"') {
                            this.f6599c = this.f6602f;
                            k();
                            return;
                        }
                    } else if (i10 == 4) {
                        char c13 = this.f6601e;
                        if (c13 == '\"') {
                            this.f6599c = this.f6602f;
                            k();
                            return;
                        } else if (c13 >= '0' && c13 <= '9') {
                            this.f6599c = this.f6602f;
                            J();
                            return;
                        }
                    } else if (i10 == 12) {
                        char c14 = this.f6601e;
                        if (c14 == '{') {
                            this.f6598b = 12;
                            next();
                            return;
                        } else if (c14 == '[') {
                            this.f6598b = 14;
                            next();
                            return;
                        }
                    } else if (i10 == 14) {
                        char c15 = this.f6601e;
                        if (c15 == '[') {
                            this.f6598b = 14;
                            next();
                            return;
                        } else if (c15 == '{') {
                            this.f6598b = 12;
                            next();
                            return;
                        }
                    }
                    if (!m0(this.f6601e)) {
                        j();
                        return;
                    }
                    next();
                }
            } else {
                if (!m0(c11)) {
                    throw new JSONException("not match " + i10 + " - " + this.f6601e);
                }
                next();
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.d
    public long t(char c10) {
        int i10;
        char cU;
        this.f6609m = 0;
        char cU2 = u(this.f6602f + 0);
        if (cU2 < '0' || cU2 > '9') {
            this.f6609m = -1;
            return 0L;
        }
        long j10 = f6597v[cU2];
        int i11 = 1;
        while (true) {
            i10 = i11 + 1;
            cU = u(this.f6602f + i11);
            if (cU < '0' || cU > '9') {
                break;
            }
            j10 = (j10 * 10) + ((long) f6597v[cU]);
            i11 = i10;
        }
        if (cU == '.') {
            this.f6609m = -1;
            return 0L;
        }
        if (j10 < 0) {
            this.f6609m = -1;
            return 0L;
        }
        if (cU != c10) {
            this.f6609m = -1;
            return j10;
        }
        this.f6602f += i10 - 1;
        next();
        this.f6609m = 3;
        this.f6598b = 16;
        return j10;
    }

    public final void t0() {
        r0(':');
    }

    public abstract char u(int i10);

    public final void u0(int i10) {
        r0(StringUtil.COMMA);
    }

    @Override // com.alibaba.fastjson.parser.d
    public final int v() {
        return this.f6599c;
    }

    protected final void v0(char c10) {
        int i10 = this.f6605i;
        char[] cArr = this.f6604h;
        if (i10 == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.f6604h = cArr2;
        }
        char[] cArr3 = this.f6604h;
        int i11 = this.f6605i;
        this.f6605i = i11 + 1;
        cArr3[i11] = c10;
    }

    public boolean w0(char c10) {
        boolean z10 = false;
        this.f6609m = 0;
        char cU = u(this.f6602f + 0);
        int i10 = 5;
        if (cU == 't') {
            if (u(this.f6602f + 1) != 'r' || u(this.f6602f + 1 + 1) != 'u' || u(this.f6602f + 1 + 2) != 'e') {
                this.f6609m = -1;
                return false;
            }
            cU = u(this.f6602f + 4);
            z10 = true;
        } else if (cU != 'f') {
            i10 = 1;
        } else {
            if (u(this.f6602f + 1) != 'a' || u(this.f6602f + 1 + 1) != 'l' || u(this.f6602f + 1 + 2) != 's' || u(this.f6602f + 1 + 3) != 'e') {
                this.f6609m = -1;
                return false;
            }
            cU = u(this.f6602f + 5);
            i10 = 6;
        }
        if (cU != c10) {
            this.f6609m = -1;
            return z10;
        }
        this.f6602f += i10 - 1;
        next();
        this.f6609m = 3;
        return z10;
    }

    protected abstract void x(int i10, int i11, char[] cArr);

    public final void x0() {
        if (this.f6601e != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f6601e != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        char c10 = this.f6601e;
        if (c10 != ' ' && c10 != ',' && c10 != '}' && c10 != ']' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != 26 && c10 != '\f' && c10 != '\b') {
            throw new JSONException("scan false error");
        }
        this.f6598b = 7;
    }

    @Override // com.alibaba.fastjson.parser.d
    public final long y() throws NumberFormatException {
        boolean z10;
        long j10;
        long j11;
        int i10 = this.f6606j;
        int i11 = this.f6605i + i10;
        if (u(i10) == '-') {
            i10++;
            j10 = Long.MIN_VALUE;
            z10 = true;
        } else {
            z10 = false;
            j10 = -9223372036854775807L;
        }
        if (i10 < i11) {
            j11 = -f6597v[u(i10)];
            i10++;
        } else {
            j11 = 0;
        }
        while (i10 < i11) {
            int i12 = i10 + 1;
            char cU = u(i10);
            if (cU == 'L' || cU == 'S' || cU == 'B') {
                i10 = i12;
                break;
            }
            int i13 = f6597v[cU];
            if (j11 < Buffer.OVERFLOW_ZONE) {
                throw new NumberFormatException(g0());
            }
            long j12 = j11 * 10;
            long j13 = i13;
            if (j12 < j10 + j13) {
                throw new NumberFormatException(g0());
            }
            j11 = j12 - j13;
            i10 = i12;
        }
        if (!z10) {
            return -j11;
        }
        if (i10 > this.f6606j + 1) {
            return j11;
        }
        throw new NumberFormatException(g0());
    }

    public boolean y0(char[] cArr) {
        int i10;
        boolean z10;
        this.f6609m = 0;
        if (!n(cArr)) {
            this.f6609m = -2;
            return false;
        }
        int length = cArr.length;
        int i11 = length + 1;
        char cU = u(this.f6602f + length);
        if (cU == 't') {
            int i12 = i11 + 1;
            if (u(this.f6602f + i11) != 'r') {
                this.f6609m = -1;
                return false;
            }
            int i13 = i12 + 1;
            if (u(this.f6602f + i12) != 'u') {
                this.f6609m = -1;
                return false;
            }
            i10 = i13 + 1;
            if (u(this.f6602f + i13) != 'e') {
                this.f6609m = -1;
                return false;
            }
            z10 = true;
        } else {
            if (cU != 'f') {
                this.f6609m = -1;
                return false;
            }
            int i14 = i11 + 1;
            if (u(this.f6602f + i11) != 'a') {
                this.f6609m = -1;
                return false;
            }
            int i15 = i14 + 1;
            if (u(this.f6602f + i14) != 'l') {
                this.f6609m = -1;
                return false;
            }
            int i16 = i15 + 1;
            if (u(this.f6602f + i15) != 's') {
                this.f6609m = -1;
                return false;
            }
            int i17 = i16 + 1;
            if (u(this.f6602f + i16) != 'e') {
                this.f6609m = -1;
                return false;
            }
            i10 = i17;
            z10 = false;
        }
        int i18 = i10 + 1;
        char cU2 = u(this.f6602f + i10);
        if (cU2 == ',') {
            this.f6602f += i18 - 1;
            next();
            this.f6609m = 3;
            this.f6598b = 16;
            return z10;
        }
        if (cU2 != '}') {
            this.f6609m = -1;
            return false;
        }
        int i19 = i18 + 1;
        char cU3 = u(this.f6602f + i18);
        if (cU3 == ',') {
            this.f6598b = 16;
            this.f6602f += i19 - 1;
            next();
        } else if (cU3 == ']') {
            this.f6598b = 15;
            this.f6602f += i19 - 1;
            next();
        } else if (cU3 == '}') {
            this.f6598b = 13;
            this.f6602f += i19 - 1;
            next();
        } else {
            if (cU3 != 26) {
                this.f6609m = -1;
                return false;
            }
            this.f6598b = 20;
            this.f6602f += i19 - 1;
            this.f6601e = (char) 26;
        }
        this.f6609m = 4;
        return z10;
    }

    @Override // com.alibaba.fastjson.parser.d
    public Enum<?> z(Class<?> cls, l lVar, char c10) {
        String strE = e(lVar, c10);
        if (strE == null) {
            return null;
        }
        return Enum.valueOf(cls, strE);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0073 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0075 -> B:32:0x0064). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final double z0(char r10) {
        /*
            r9 = this;
            r0 = 0
            r9.f6609m = r0
            int r1 = r9.f6602f
            int r1 = r1 + r0
            char r0 = r9.u(r1)
            r1 = 0
            r3 = -1
            r4 = 48
            if (r0 < r4) goto La3
            r5 = 57
            if (r0 > r5) goto La3
            r0 = 1
            r6 = 1
        L17:
            int r7 = r9.f6602f
            int r8 = r6 + 1
            int r7 = r7 + r6
            char r6 = r9.u(r7)
            if (r6 < r4) goto L26
            if (r6 > r5) goto L26
            r6 = r8
            goto L17
        L26:
            r7 = 46
            if (r6 != r7) goto L49
            int r6 = r9.f6602f
            int r7 = r8 + 1
            int r6 = r6 + r8
            char r6 = r9.u(r6)
            if (r6 < r4) goto L46
            if (r6 > r5) goto L46
        L37:
            int r1 = r9.f6602f
            int r8 = r7 + 1
            int r1 = r1 + r7
            char r6 = r9.u(r1)
            if (r6 < r4) goto L49
            if (r6 > r5) goto L49
            r7 = r8
            goto L37
        L46:
            r9.f6609m = r3
            return r1
        L49:
            r1 = 101(0x65, float:1.42E-43)
            if (r6 == r1) goto L51
            r1 = 69
            if (r6 != r1) goto L7f
        L51:
            int r1 = r9.f6602f
            int r2 = r8 + 1
            int r1 = r1 + r8
            char r1 = r9.u(r1)
            r6 = 43
            if (r1 == r6) goto L66
            r6 = 45
            if (r1 != r6) goto L63
            goto L66
        L63:
            r6 = r1
        L64:
            r8 = r2
            goto L71
        L66:
            int r1 = r9.f6602f
            int r6 = r2 + 1
            int r1 = r1 + r2
            char r1 = r9.u(r1)
            r8 = r6
            r6 = r1
        L71:
            if (r6 < r4) goto L7f
            if (r6 > r5) goto L7f
            int r1 = r9.f6602f
            int r2 = r8 + 1
            int r1 = r1 + r8
            char r6 = r9.u(r1)
            goto L64
        L7f:
            int r1 = r9.f6602f
            int r2 = r1 + r8
            int r2 = r2 - r1
            int r2 = r2 - r0
            java.lang.String r1 = r9.R0(r1, r2)
            double r1 = java.lang.Double.parseDouble(r1)
            if (r6 != r10) goto La0
            int r10 = r9.f6602f
            int r8 = r8 - r0
            int r10 = r10 + r8
            r9.f6602f = r10
            r9.next()
            r10 = 3
            r9.f6609m = r10
            r10 = 16
            r9.f6598b = r10
            return r1
        La0:
            r9.f6609m = r3
            return r1
        La3:
            r9.f6609m = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.e.z0(char):double");
    }
}
