package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONException;
import java.io.CharArrayReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes7.dex */
public final class f extends e {
    private static final ThreadLocal<SoftReference<char[]>> A = new ThreadLocal<>();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f6611z = 8192;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Reader f6612w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private char[] f6613x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f6614y;

    public f(String str) {
        this(str, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public final String R() {
        if (this.f6607k) {
            return new String(this.f6604h, 0, this.f6605i);
        }
        int i10 = this.f6606j + 1;
        if (i10 < 0) {
            throw new IllegalStateException();
        }
        char[] cArr = this.f6613x;
        int length = cArr.length;
        int i11 = this.f6605i;
        if (i10 <= length - i11) {
            return new String(cArr, i10, i11);
        }
        throw new IllegalStateException();
    }

    @Override // com.alibaba.fastjson.parser.e
    public final String R0(int i10, int i11) {
        if (i11 >= 0) {
            return new String(this.f6613x, i10, i11);
        }
        throw new StringIndexOutOfBoundsException(i11);
    }

    @Override // com.alibaba.fastjson.parser.e
    public final String a(int i10, int i11, int i12, l lVar) {
        return lVar.c(this.f6613x, i10, i11, i12);
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        A.set(new SoftReference<>(this.f6613x));
        this.f6613x = null;
        com.alibaba.fastjson.util.f.a(this.f6612w);
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public final String g0() {
        int i10 = this.f6606j;
        if (i10 == -1) {
            i10 = 0;
        }
        char cU = u((this.f6605i + i10) - 1);
        int i11 = this.f6605i;
        if (cU == 'L' || cU == 'S' || cU == 'B' || cU == 'F' || cU == 'D') {
            i11--;
        }
        return new String(this.f6613x, i10, i11);
    }

    @Override // com.alibaba.fastjson.parser.e
    protected final void i(int i10, char[] cArr, int i11, int i12) {
        System.arraycopy(this.f6613x, i10, cArr, i11, i12);
    }

    @Override // com.alibaba.fastjson.parser.e
    public final int k0(char c10, int i10) {
        int i11 = i10 - this.f6602f;
        while (c10 != u(this.f6602f + i11)) {
            if (c10 == 26) {
                return -1;
            }
            i11++;
        }
        return i11 + this.f6602f;
    }

    @Override // com.alibaba.fastjson.parser.e
    public boolean l0() {
        if (this.f6614y == -1) {
            return true;
        }
        int i10 = this.f6602f;
        char[] cArr = this.f6613x;
        if (i10 != cArr.length) {
            return this.f6601e == 26 && i10 + 1 == cArr.length;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.e
    public final boolean n(char[] cArr) {
        for (int i10 = 0; i10 < cArr.length; i10++) {
            if (u(this.f6602f + i10) != cArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public final char next() {
        int i10 = this.f6602f + 1;
        this.f6602f = i10;
        int i11 = this.f6614y;
        if (i10 >= i11) {
            if (i11 == -1) {
                return (char) 26;
            }
            int i12 = this.f6605i;
            if (i12 > 0) {
                int i13 = i11 - i12;
                if (this.f6601e == '\"') {
                    i13--;
                }
                char[] cArr = this.f6613x;
                System.arraycopy(cArr, i13, cArr, 0, i12);
            }
            this.f6606j = -1;
            int i14 = this.f6605i;
            this.f6602f = i14;
            try {
                char[] cArr2 = this.f6613x;
                int length = cArr2.length - i14;
                if (length == 0) {
                    char[] cArr3 = new char[cArr2.length * 2];
                    System.arraycopy(cArr2, 0, cArr3, 0, cArr2.length);
                    this.f6613x = cArr3;
                    length = cArr3.length - i14;
                }
                int i15 = this.f6612w.read(this.f6613x, this.f6602f, length);
                this.f6614y = i15;
                if (i15 == 0) {
                    throw new JSONException("illegal stat, textLength is zero");
                }
                if (i15 == -1) {
                    this.f6601e = (char) 26;
                    return (char) 26;
                }
                this.f6614y = i15 + this.f6602f;
                i10 = i14;
            } catch (IOException e10) {
                throw new JSONException(e10.getMessage(), e10);
            }
        }
        char c10 = this.f6613x[i10];
        this.f6601e = c10;
        return c10;
    }

    @Override // com.alibaba.fastjson.parser.e, com.alibaba.fastjson.parser.d
    public byte[] o() {
        return com.alibaba.fastjson.util.c.c(this.f6613x, this.f6606j + 1, this.f6605i);
    }

    @Override // com.alibaba.fastjson.parser.e
    public final char u(int i10) {
        int i11 = this.f6614y;
        if (i10 >= i11) {
            if (i11 == -1) {
                if (i10 < this.f6605i) {
                    return this.f6613x[i10];
                }
                return (char) 26;
            }
            int i12 = this.f6602f;
            int i13 = i11 - i12;
            if (i13 > 0) {
                char[] cArr = this.f6613x;
                System.arraycopy(cArr, i12, cArr, 0, i13);
            }
            try {
                Reader reader = this.f6612w;
                char[] cArr2 = this.f6613x;
                int i14 = reader.read(cArr2, i13, cArr2.length - i13);
                this.f6614y = i14;
                if (i14 == 0) {
                    throw new JSONException("illegal stat, textLength is zero");
                }
                if (i14 == -1) {
                    return (char) 26;
                }
                this.f6614y = i14 + i13;
                int i15 = this.f6602f;
                i10 -= i15;
                this.f6606j -= i15;
                this.f6602f = 0;
            } catch (IOException e10) {
                throw new JSONException(e10.getMessage(), e10);
            }
        }
        return this.f6613x[i10];
    }

    @Override // com.alibaba.fastjson.parser.e
    protected final void x(int i10, int i11, char[] cArr) {
        System.arraycopy(this.f6613x, i10, cArr, 0, i11);
    }

    public f(String str, int i10) {
        this(new StringReader(str), i10);
    }

    public f(char[] cArr, int i10) {
        this(cArr, i10, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    public f(Reader reader) {
        this(reader, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    public f(Reader reader, int i10) {
        this.f6612w = reader;
        this.f6600d = i10;
        ThreadLocal<SoftReference<char[]>> threadLocal = A;
        SoftReference<char[]> softReference = threadLocal.get();
        if (softReference != null) {
            this.f6613x = softReference.get();
            threadLocal.set(null);
        }
        if (this.f6613x == null) {
            this.f6613x = new char[f6611z];
        }
        try {
            this.f6614y = reader.read(this.f6613x);
            this.f6602f = -1;
            next();
            if (this.f6601e == 65279) {
                next();
            }
        } catch (IOException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public f(char[] cArr, int i10, int i11) {
        this(new CharArrayReader(cArr, 0, i10), i11);
    }
}
