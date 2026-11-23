package com.cloudplay.messagesdk.gson.stream;

import com.cloudplay.messagesdk.gson.internal.e;
import com.cloudplay.messagesdk.gson.internal.j.f;
import external.org.apache.commons.lang3.d;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import okio.internal.Buffer;

/* JADX INFO: loaded from: classes9.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Reader f23941a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f23949i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f23950j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f23951k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int[] f23952l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String[] f23954n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f23955o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f23942b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final char[] f23943c = new char[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f23944d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f23945e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f23946f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f23947g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f23948h = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f23953m = 0 + 1;

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.gson.stream.a$a, reason: collision with other inner class name */
    static class C0525a extends e {
        C0525a() {
        }

        @Override // com.cloudplay.messagesdk.gson.internal.e
        public void a(a aVar) throws IOException {
            if (aVar instanceof f) {
                ((f) aVar).t();
                return;
            }
            int iC = aVar.f23948h;
            if (iC == 0) {
                iC = aVar.c();
            }
            if (iC == 13) {
                aVar.f23948h = 9;
                return;
            }
            if (iC == 12) {
                aVar.f23948h = 8;
                return;
            }
            if (iC == 14) {
                aVar.f23948h = 10;
                return;
            }
            throw new IllegalStateException("Expected a name but was " + aVar.q() + aVar.i());
        }
    }

    static {
        e.f23799a = new C0525a();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f23952l = iArr;
        iArr[0] = 6;
        this.f23954n = new String[32];
        this.f23955o = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f23941a = reader;
    }

    private void s() throws IOException {
        if (this.f23942b) {
            return;
        }
        b("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    private void t() throws IOException {
        b(true);
        int i10 = this.f23944d - 1;
        this.f23944d = i10;
        if (i10 + 5 <= this.f23945e || a(5)) {
            char[] cArr = this.f23943c;
            if (cArr[i10] == ')' && cArr[i10 + 1] == ']' && cArr[i10 + 2] == '}' && cArr[i10 + 3] == '\'' && cArr[i10 + 4] == '\n') {
                this.f23944d += 5;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    private String u() throws IOException {
        String string;
        StringBuilder sb2 = null;
        int i10 = 0;
        while (true) {
            int i11 = 0;
            while (true) {
                int i12 = this.f23944d + i11;
                if (i12 < this.f23945e) {
                    char c10 = this.f23943c[i12];
                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                        if (c10 != '#') {
                            if (c10 != ',') {
                                if (c10 != '/' && c10 != '=') {
                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                        if (c10 != ';') {
                                            switch (c10) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i11++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        s();
                    }
                    i10 = i11;
                } else if (i11 >= this.f23943c.length) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i11, 16));
                    }
                    sb2.append(this.f23943c, this.f23944d, i11);
                    this.f23944d += i11;
                    if (!a(1)) {
                    }
                } else if (!a(i11 + 1)) {
                    i10 = i11;
                }
                if (sb2 == null) {
                    string = new String(this.f23943c, this.f23944d, i10);
                } else {
                    sb2.append(this.f23943c, this.f23944d, i10);
                    string = sb2.toString();
                }
                this.f23944d += i10;
                return string;
            }
        }
    }

    private int v() throws IOException {
        String str;
        String str2;
        int i10;
        char c10 = this.f23943c[this.f23944d];
        if (c10 == 't' || c10 == 'T') {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        } else if (c10 == 'f' || c10 == 'F') {
            str = "false";
            str2 = "FALSE";
            i10 = 6;
        } else {
            if (c10 != 'n' && c10 != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i10 = 7;
        }
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.f23944d + i11 >= this.f23945e && !a(i11 + 1)) {
                return 0;
            }
            char c11 = this.f23943c[this.f23944d + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.f23944d + length < this.f23945e || a(length + 1)) && a(this.f23943c[this.f23944d + length])) {
            return 0;
        }
        this.f23944d += length;
        this.f23948h = i10;
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    /* JADX WARN: Code duplicated, block: B:91:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:93:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:98:0x00f0  */
    private int w() throws IOException {
        char c10;
        char[] cArr = this.f23943c;
        int i10 = this.f23944d;
        int i11 = this.f23945e;
        int i12 = 0;
        int i13 = 0;
        char c11 = 0;
        long j10 = 0;
        boolean z10 = false;
        boolean z11 = true;
        while (true) {
            if (i10 + i13 != i11) {
                c10 = cArr[i10 + i13];
                if (c10 != '+') {
                    if (c10 != 'E' || c10 == 'e') {
                        i12 = 0;
                        if (c11 == 2 && c11 != 4) {
                            return 0;
                        }
                        c11 = 5;
                    } else if (c10 == '-') {
                        i12 = 0;
                        if (c11 == 0) {
                            c11 = 1;
                            z10 = true;
                        } else if (c11 != 5) {
                            return 0;
                        }
                    } else if (c10 == '.') {
                        i12 = 0;
                        if (c11 != 2) {
                            return 0;
                        }
                        c11 = 3;
                    } else {
                        if (c10 < '0' || c10 > '9') {
                            if (!a(c10)) {
                                break;
                            }
                            return 0;
                        }
                        if (c11 == 1 || c11 == 0) {
                            j10 = -(c10 - '0');
                            i12 = 0;
                            c11 = 2;
                        } else {
                            if (c11 == 2) {
                                if (j10 == 0) {
                                    return 0;
                                }
                                long j11 = (10 * j10) - ((long) (c10 - '0'));
                                z11 &= j10 > Buffer.OVERFLOW_ZONE || (j10 == Buffer.OVERFLOW_ZONE && j11 < j10);
                                j10 = j11;
                            } else if (c11 == 3) {
                                i12 = 0;
                                c11 = 4;
                            } else if (c11 == 5 || c11 == 6) {
                                i12 = 0;
                                c11 = 7;
                            }
                            i12 = 0;
                        }
                    }
                    i13++;
                } else {
                    i12 = 0;
                    if (c11 != 5) {
                        return 0;
                    }
                }
                c11 = 6;
                i13++;
            } else {
                if (i13 == cArr.length) {
                    return i12;
                }
                if (!a(i13 + 1)) {
                    break;
                }
                i10 = this.f23944d;
                i11 = this.f23945e;
                c10 = cArr[i10 + i13];
                if (c10 != '+') {
                    if (c10 != 'E') {
                        i12 = 0;
                        if (c11 == 2) {
                        }
                        c11 = 5;
                    } else {
                        i12 = 0;
                        if (c11 == 2) {
                        }
                        c11 = 5;
                    }
                    i13++;
                } else {
                    i12 = 0;
                    if (c11 != 5) {
                        return 0;
                    }
                }
                c11 = 6;
                i13++;
            }
        }
        if (c11 == 2 && z11 && ((j10 != Long.MIN_VALUE || z10) && (j10 != 0 || !z10))) {
            if (!z10) {
                j10 = -j10;
            }
            this.f23949i = j10;
            this.f23944d += i13;
            this.f23948h = 15;
            return 15;
        }
        if (c11 != 2 && c11 != 4 && c11 != 7) {
            return 0;
        }
        this.f23950j = i13;
        this.f23948h = 16;
        return 16;
    }

    private char x() throws IOException {
        int i10;
        int i11;
        if (this.f23944d == this.f23945e && !a(1)) {
            b("Unterminated escape sequence");
            throw null;
        }
        char[] cArr = this.f23943c;
        int i12 = this.f23944d;
        int i13 = i12 + 1;
        this.f23944d = i13;
        char c10 = cArr[i12];
        if (c10 == '\n') {
            this.f23946f++;
            this.f23947g = i13;
        } else if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
            if (c10 == 'b') {
                return '\b';
            }
            if (c10 == 'f') {
                return '\f';
            }
            if (c10 == 'n') {
                return '\n';
            }
            if (c10 == 'r') {
                return '\r';
            }
            if (c10 == 't') {
                return '\t';
            }
            if (c10 != 'u') {
                b("Invalid escape sequence");
                throw null;
            }
            if (i13 + 4 > this.f23945e && !a(4)) {
                b("Unterminated escape sequence");
                throw null;
            }
            int i14 = this.f23944d;
            int i15 = i14 + 4;
            char c11 = 0;
            while (i14 < i15) {
                char c12 = this.f23943c[i14];
                char c13 = (char) (c11 << 4);
                if (c12 < '0' || c12 > '9') {
                    if (c12 >= 'a' && c12 <= 'f') {
                        i10 = c12 - 'a';
                    } else {
                        if (c12 < 'A' || c12 > 'F') {
                            throw new NumberFormatException("\\u" + new String(this.f23943c, this.f23944d, 4));
                        }
                        i10 = c12 - 'A';
                    }
                    i11 = i10 + 10;
                } else {
                    i11 = c12 - '0';
                }
                c11 = (char) (c13 + i11);
                i14++;
            }
            this.f23944d += 4;
            return c11;
        }
        return c10;
    }

    private void y() throws IOException {
        char c10;
        do {
            if (this.f23944d >= this.f23945e && !a(1)) {
                return;
            }
            char[] cArr = this.f23943c;
            int i10 = this.f23944d;
            int i11 = i10 + 1;
            this.f23944d = i11;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.f23946f++;
                this.f23947g = i11;
                return;
            }
        } while (c10 != '\r');
    }

    private void z() throws IOException {
        do {
            int i10 = 0;
            while (true) {
                int i11 = this.f23944d + i10;
                if (i11 < this.f23945e) {
                    char c10 = this.f23943c[i11];
                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                        if (c10 != '#') {
                            if (c10 != ',') {
                                if (c10 != '/' && c10 != '=') {
                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                        if (c10 != ';') {
                                            switch (c10) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i10++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        s();
                    }
                    this.f23944d += i10;
                    return;
                }
                this.f23944d = i11;
            }
        } while (a(1));
    }

    public final void a(boolean z10) {
        this.f23942b = z10;
    }

    public void b() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 1) {
            b(3);
            this.f23948h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + q() + i());
        }
    }

    int c() throws IOException {
        int iB;
        int[] iArr = this.f23952l;
        int i10 = this.f23953m;
        int i11 = i10 - 1;
        int i12 = iArr[i11];
        if (i12 == 1) {
            iArr[i11] = 2;
        } else if (i12 == 2) {
            int iB2 = b(true);
            if (iB2 != 44) {
                if (iB2 != 59) {
                    if (iB2 == 93) {
                        this.f23948h = 4;
                        return 4;
                    }
                    b("Unterminated array");
                    throw null;
                }
                s();
            }
        } else {
            if (i12 == 3 || i12 == 5) {
                iArr[i10 - 1] = 4;
                if (i12 == 5 && (iB = b(true)) != 44) {
                    if (iB != 59) {
                        if (iB == 125) {
                            this.f23948h = 2;
                            return 2;
                        }
                        b("Unterminated object");
                        throw null;
                    }
                    s();
                }
                int iB3 = b(true);
                if (iB3 == 34) {
                    this.f23948h = 13;
                    return 13;
                }
                if (iB3 == 39) {
                    s();
                    this.f23948h = 12;
                    return 12;
                }
                if (iB3 == 125) {
                    if (i12 != 5) {
                        this.f23948h = 2;
                        return 2;
                    }
                    b("Expected name");
                    throw null;
                }
                s();
                this.f23944d--;
                if (a((char) iB3)) {
                    this.f23948h = 14;
                    return 14;
                }
                b("Expected name");
                throw null;
            }
            if (i12 == 4) {
                iArr[i11] = 5;
                int iB4 = b(true);
                if (iB4 != 58) {
                    if (iB4 != 61) {
                        b("Expected ':'");
                        throw null;
                    }
                    s();
                    if (this.f23944d < this.f23945e || a(1)) {
                        char[] cArr = this.f23943c;
                        int i13 = this.f23944d;
                        if (cArr[i13] == '>') {
                            this.f23944d = i13 + 1;
                        }
                    }
                }
            } else if (i12 == 6) {
                if (this.f23942b) {
                    t();
                }
                this.f23952l[this.f23953m - 1] = 7;
            } else if (i12 == 7) {
                if (b(false) == -1) {
                    this.f23948h = 17;
                    return 17;
                }
                s();
                this.f23944d--;
            } else if (i12 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iB5 = b(true);
        if (iB5 == 34) {
            this.f23948h = 9;
            return 9;
        }
        if (iB5 == 39) {
            s();
            this.f23948h = 8;
            return 8;
        }
        if (iB5 != 44 && iB5 != 59) {
            if (iB5 == 91) {
                this.f23948h = 3;
                return 3;
            }
            if (iB5 != 93) {
                if (iB5 == 123) {
                    this.f23948h = 1;
                    return 1;
                }
                this.f23944d--;
                int iV = v();
                if (iV != 0) {
                    return iV;
                }
                int iW = w();
                if (iW != 0) {
                    return iW;
                }
                if (!a(this.f23943c[this.f23944d])) {
                    b("Expected value");
                    throw null;
                }
                s();
                this.f23948h = 10;
                return 10;
            }
            if (i12 == 1) {
                this.f23948h = 4;
                return 4;
            }
        }
        if (i12 != 1 && i12 != 2) {
            b("Unexpected value");
            throw null;
        }
        s();
        this.f23944d--;
        this.f23948h = 7;
        return 7;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f23948h = 0;
        this.f23952l[0] = 8;
        this.f23953m = 1;
        this.f23941a.close();
    }

    public void d() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + q() + i());
        }
        int i10 = this.f23953m - 1;
        this.f23953m = i10;
        int[] iArr = this.f23955o;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f23948h = 0;
    }

    public void e() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + q() + i());
        }
        int i10 = this.f23953m - 1;
        this.f23953m = i10;
        this.f23954n[i10] = null;
        int[] iArr = this.f23955o;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f23948h = 0;
    }

    public String f() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = this.f23953m;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f23952l[i11];
            if (i12 == 1 || i12 == 2) {
                sb2.append('[');
                sb2.append(this.f23955o[i11]);
                sb2.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb2.append(d.f90941a);
                String str = this.f23954n[i11];
                if (str != null) {
                    sb2.append(str);
                }
            }
        }
        return sb2.toString();
    }

    public boolean g() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        return (iC == 2 || iC == 4) ? false : true;
    }

    public final boolean h() {
        return this.f23942b;
    }

    String i() {
        return " at line " + (this.f23946f + 1) + " column " + ((this.f23944d - this.f23947g) + 1) + " path " + f();
    }

    public boolean j() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 5) {
            this.f23948h = 0;
            int[] iArr = this.f23955o;
            int i10 = this.f23953m - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iC == 6) {
            this.f23948h = 0;
            int[] iArr2 = this.f23955o;
            int i11 = this.f23953m - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + q() + i());
    }

    public double k() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 15) {
            this.f23948h = 0;
            int[] iArr = this.f23955o;
            int i10 = this.f23953m - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f23949i;
        }
        if (iC == 16) {
            this.f23951k = new String(this.f23943c, this.f23944d, this.f23950j);
            this.f23944d += this.f23950j;
        } else if (iC == 8 || iC == 9) {
            this.f23951k = b(iC == 8 ? '\'' : '\"');
        } else if (iC == 10) {
            this.f23951k = u();
        } else if (iC != 11) {
            throw new IllegalStateException("Expected a double but was " + q() + i());
        }
        this.f23948h = 11;
        double d10 = Double.parseDouble(this.f23951k);
        if (!this.f23942b && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + d10 + i());
        }
        this.f23951k = null;
        this.f23948h = 0;
        int[] iArr2 = this.f23955o;
        int i11 = this.f23953m - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return d10;
    }

    public int l() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 15) {
            long j10 = this.f23949i;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f23948h = 0;
                int[] iArr = this.f23955o;
                int i11 = this.f23953m - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new NumberFormatException("Expected an int but was " + this.f23949i + i());
        }
        if (iC == 16) {
            this.f23951k = new String(this.f23943c, this.f23944d, this.f23950j);
            this.f23944d += this.f23950j;
        } else {
            if (iC != 8 && iC != 9 && iC != 10) {
                throw new IllegalStateException("Expected an int but was " + q() + i());
            }
            if (iC == 10) {
                this.f23951k = u();
            } else {
                this.f23951k = b(iC == 8 ? '\'' : '\"');
            }
            try {
                int i12 = Integer.parseInt(this.f23951k);
                this.f23948h = 0;
                int[] iArr2 = this.f23955o;
                int i13 = this.f23953m - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        }
        this.f23948h = 11;
        double d10 = Double.parseDouble(this.f23951k);
        int i14 = (int) d10;
        if (i14 != d10) {
            throw new NumberFormatException("Expected an int but was " + this.f23951k + i());
        }
        this.f23951k = null;
        this.f23948h = 0;
        int[] iArr3 = this.f23955o;
        int i15 = this.f23953m - 1;
        iArr3[i15] = iArr3[i15] + 1;
        return i14;
    }

    public long m() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 15) {
            this.f23948h = 0;
            int[] iArr = this.f23955o;
            int i10 = this.f23953m - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f23949i;
        }
        if (iC == 16) {
            this.f23951k = new String(this.f23943c, this.f23944d, this.f23950j);
            this.f23944d += this.f23950j;
        } else {
            if (iC != 8 && iC != 9 && iC != 10) {
                throw new IllegalStateException("Expected a long but was " + q() + i());
            }
            if (iC == 10) {
                this.f23951k = u();
            } else {
                this.f23951k = b(iC == 8 ? '\'' : '\"');
            }
            try {
                long j10 = Long.parseLong(this.f23951k);
                this.f23948h = 0;
                int[] iArr2 = this.f23955o;
                int i11 = this.f23953m - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.f23948h = 11;
        double d10 = Double.parseDouble(this.f23951k);
        long j11 = (long) d10;
        if (j11 != d10) {
            throw new NumberFormatException("Expected a long but was " + this.f23951k + i());
        }
        this.f23951k = null;
        this.f23948h = 0;
        int[] iArr3 = this.f23955o;
        int i12 = this.f23953m - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return j11;
    }

    public String n() throws IOException {
        String strB;
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 14) {
            strB = u();
        } else if (iC == 12) {
            strB = b('\'');
        } else {
            if (iC != 13) {
                throw new IllegalStateException("Expected a name but was " + q() + i());
            }
            strB = b('\"');
        }
        this.f23948h = 0;
        this.f23954n[this.f23953m - 1] = strB;
        return strB;
    }

    public void o() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 7) {
            this.f23948h = 0;
            int[] iArr = this.f23955o;
            int i10 = this.f23953m - 1;
            iArr[i10] = iArr[i10] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + q() + i());
    }

    public String p() throws IOException {
        String str;
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 10) {
            str = u();
        } else if (iC == 8) {
            str = b('\'');
        } else if (iC == 9) {
            str = b('\"');
        } else if (iC == 11) {
            str = this.f23951k;
            this.f23951k = null;
        } else if (iC == 15) {
            str = Long.toString(this.f23949i);
        } else {
            if (iC != 16) {
                throw new IllegalStateException("Expected a string but was " + q() + i());
            }
            str = new String(this.f23943c, this.f23944d, this.f23950j);
            this.f23944d += this.f23950j;
        }
        this.f23948h = 0;
        int[] iArr = this.f23955o;
        int i10 = this.f23953m - 1;
        iArr[i10] = iArr[i10] + 1;
        return str;
    }

    public JsonToken q() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        switch (iC) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public void r() throws IOException {
        int i10 = 0;
        do {
            int iC = this.f23948h;
            if (iC == 0) {
                iC = c();
            }
            if (iC == 3) {
                b(1);
            } else {
                if (iC == 1) {
                    b(3);
                } else if (iC == 4 || iC == 2) {
                    this.f23953m--;
                    i10--;
                } else if (iC == 14 || iC == 10) {
                    z();
                } else if (iC == 8 || iC == 12) {
                    c('\'');
                } else if (iC == 9 || iC == 13) {
                    c('\"');
                } else if (iC == 16) {
                    this.f23944d += this.f23950j;
                }
                this.f23948h = 0;
            }
            i10++;
            this.f23948h = 0;
        } while (i10 != 0);
        int[] iArr = this.f23955o;
        int i11 = this.f23953m - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f23954n[i11] = "null";
    }

    public String toString() {
        return getClass().getSimpleName() + i();
    }

    public void a() throws IOException {
        int iC = this.f23948h;
        if (iC == 0) {
            iC = c();
        }
        if (iC == 3) {
            b(1);
            this.f23955o[this.f23953m - 1] = 0;
            this.f23948h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + q() + i());
        }
    }

    private String b(char c10) throws IOException {
        int i10;
        char[] cArr = this.f23943c;
        StringBuilder sb2 = null;
        do {
            int i11 = this.f23944d;
            int i12 = this.f23945e;
            while (true) {
                int i13 = i12;
                i10 = i11;
                while (true) {
                    if (i11 < i13) {
                        int i14 = i11 + 1;
                        char c11 = cArr[i11];
                        if (c11 == c10) {
                            this.f23944d = i14;
                            int i15 = (i14 - i10) - 1;
                            if (sb2 == null) {
                                return new String(cArr, i10, i15);
                            }
                            sb2.append(cArr, i10, i15);
                            return sb2.toString();
                        }
                        if (c11 == '\\') {
                            this.f23944d = i14;
                            int i16 = (i14 - i10) - 1;
                            if (sb2 == null) {
                                sb2 = new StringBuilder(Math.max((i16 + 1) * 2, 16));
                            }
                            sb2.append(cArr, i10, i16);
                            sb2.append(x());
                            i11 = this.f23944d;
                            i12 = this.f23945e;
                        } else {
                            if (c11 == '\n') {
                                this.f23946f++;
                                this.f23947g = i14;
                            }
                            i11 = i14;
                        }
                    }
                }
            }
            if (sb2 == null) {
                sb2 = new StringBuilder(Math.max((i11 - i10) * 2, 16));
            }
            sb2.append(cArr, i10, i11 - i10);
            this.f23944d = i11;
        } while (a(1));
        b("Unterminated string");
        throw null;
    }

    private boolean a(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        s();
        return false;
    }

    private boolean a(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.f23943c;
        int i13 = this.f23947g;
        int i14 = this.f23944d;
        this.f23947g = i13 - i14;
        int i15 = this.f23945e;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f23945e = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f23945e = 0;
        }
        this.f23944d = 0;
        do {
            Reader reader = this.f23941a;
            int i17 = this.f23945e;
            int i18 = reader.read(cArr, i17, cArr.length - i17);
            if (i18 == -1) {
                return false;
            }
            i11 = this.f23945e + i18;
            this.f23945e = i11;
            if (this.f23946f == 0 && (i12 = this.f23947g) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f23944d++;
                this.f23947g = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    private boolean a(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f23944d + length > this.f23945e && !a(length)) {
                return false;
            }
            char[] cArr = this.f23943c;
            int i10 = this.f23944d;
            if (cArr[i10] != '\n') {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.f23943c[this.f23944d + i11] == str.charAt(i11)) {
                    }
                }
                return true;
            }
            this.f23946f++;
            this.f23947g = i10 + 1;
            this.f23944d++;
        }
    }

    private void b(int i10) {
        int i11 = this.f23953m;
        int[] iArr = this.f23952l;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.f23952l = Arrays.copyOf(iArr, i12);
            this.f23955o = Arrays.copyOf(this.f23955o, i12);
            this.f23954n = (String[]) Arrays.copyOf(this.f23954n, i12);
        }
        int[] iArr2 = this.f23952l;
        int i13 = this.f23953m;
        this.f23953m = i13 + 1;
        iArr2[i13] = i10;
    }

    private int b(boolean z10) throws IOException {
        char[] cArr = this.f23943c;
        int i10 = this.f23944d;
        int i11 = this.f23945e;
        while (true) {
            if (i10 == i11) {
                this.f23944d = i10;
                if (!a(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + i());
                }
                i10 = this.f23944d;
                i11 = this.f23945e;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.f23946f++;
                this.f23947g = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f23944d = i12;
                    if (i12 == i11) {
                        this.f23944d = i12 - 1;
                        boolean zA = a(2);
                        this.f23944d++;
                        if (!zA) {
                            return c10;
                        }
                    }
                    s();
                    int i13 = this.f23944d;
                    char c11 = cArr[i13];
                    if (c11 == '*') {
                        this.f23944d = i13 + 1;
                        if (a("*/")) {
                            i10 = this.f23944d + 2;
                            i11 = this.f23945e;
                        } else {
                            b("Unterminated comment");
                            throw null;
                        }
                    } else {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.f23944d = i13 + 1;
                        y();
                        i10 = this.f23944d;
                        i11 = this.f23945e;
                    }
                } else if (c10 == '#') {
                    this.f23944d = i12;
                    s();
                    y();
                    i10 = this.f23944d;
                    i11 = this.f23945e;
                } else {
                    this.f23944d = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
    }

    private void c(char c10) throws IOException {
        char[] cArr = this.f23943c;
        do {
            int i10 = this.f23944d;
            int i11 = this.f23945e;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.f23944d = i12;
                    return;
                }
                if (c11 == '\\') {
                    this.f23944d = i12;
                    x();
                    i10 = this.f23944d;
                    i11 = this.f23945e;
                } else {
                    if (c11 == '\n') {
                        this.f23946f++;
                        this.f23947g = i12;
                    }
                    i10 = i12;
                }
            }
            this.f23944d = i10;
        } while (a(1));
        b("Unterminated string");
        throw null;
    }

    private IOException b(String str) throws IOException {
        throw new MalformedJsonException(str + i());
    }
}
