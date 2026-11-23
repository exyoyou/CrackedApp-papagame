package com.cloudplay.messagesdk.gson.stream;

import io.netty.util.internal.StringUtil;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public class b implements Closeable, Flushable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String[] f23956j = new String[128];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String[] f23957k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Writer f23958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f23959b = new int[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f23960c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f23961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f23962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f23963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f23964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f23965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f23966i;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f23956j[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f23956j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f23957k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public b(Writer writer) {
        a(6);
        this.f23962e = ":";
        this.f23966i = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.f23958a = writer;
    }

    private void i() throws IOException {
        int iL = l();
        if (iL == 5) {
            this.f23958a.write(44);
        } else if (iL != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b(4);
    }

    private void j() throws IOException {
        int iL = l();
        if (iL == 1) {
            b(2);
            k();
            return;
        }
        if (iL == 2) {
            this.f23958a.append(StringUtil.COMMA);
            k();
        } else {
            if (iL == 4) {
                this.f23958a.append((CharSequence) this.f23962e);
                b(5);
                return;
            }
            if (iL != 6) {
                if (iL != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f23963f) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            b(7);
        }
    }

    private void k() throws IOException {
        if (this.f23961d == null) {
            return;
        }
        this.f23958a.write(10);
        int i10 = this.f23960c;
        for (int i11 = 1; i11 < i10; i11++) {
            this.f23958a.write(this.f23961d);
        }
    }

    private int l() {
        int i10 = this.f23960c;
        if (i10 != 0) {
            return this.f23959b[i10 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void m() throws IOException {
        if (this.f23965h != null) {
            i();
            d(this.f23965h);
            this.f23965h = null;
        }
    }

    public final void a(boolean z10) {
        this.f23964g = z10;
    }

    public final void b(String str) {
        if (str.length() == 0) {
            this.f23961d = null;
            this.f23962e = ":";
        } else {
            this.f23961d = str;
            this.f23962e = ": ";
        }
    }

    public final void c(boolean z10) {
        this.f23966i = z10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f23958a.close();
        int i10 = this.f23960c;
        if (i10 > 1 || (i10 == 1 && this.f23959b[i10 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f23960c = 0;
    }

    public b d() throws IOException {
        return a(3, 5, '}');
    }

    public final boolean e() {
        return this.f23966i;
    }

    public final boolean f() {
        return this.f23964g;
    }

    public void flush() throws IOException {
        if (this.f23960c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f23958a.flush();
    }

    public boolean g() {
        return this.f23963f;
    }

    public b h() throws IOException {
        if (this.f23965h != null) {
            if (!this.f23966i) {
                this.f23965h = null;
                return this;
            }
            m();
        }
        j();
        this.f23958a.write("null");
        return this;
    }

    public b a() throws IOException {
        m();
        return a(1, '[');
    }

    public b c() throws IOException {
        return a(1, 2, ']');
    }

    public b d(boolean z10) throws IOException {
        m();
        j();
        this.f23958a.write(z10 ? "true" : "false");
        return this;
    }

    public b c(String str) throws IOException {
        if (str == null) {
            return h();
        }
        m();
        j();
        d(str);
        return this;
    }

    private b a(int i10, char c10) throws IOException {
        j();
        a(i10);
        this.f23958a.write(c10);
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    private void d(String str) throws IOException {
        String str2;
        String[] strArr = this.f23964g ? f23957k : f23956j;
        this.f23958a.write(34);
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i10 < i11) {
                        this.f23958a.write(str, i10, i11 - i10);
                    }
                    this.f23958a.write(str2);
                    i10 = i11 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i10 < i11) {
                    this.f23958a.write(str, i10, i11 - i10);
                }
                this.f23958a.write(str2);
                i10 = i11 + 1;
            }
        }
        if (i10 < length) {
            this.f23958a.write(str, i10, length - i10);
        }
        this.f23958a.write(34);
    }

    public final void b(boolean z10) {
        this.f23963f = z10;
    }

    private b a(int i10, int i11, char c10) throws IOException {
        int iL = l();
        if (iL != i11 && iL != i10) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f23965h == null) {
            this.f23960c--;
            if (iL == i11) {
                k();
            }
            this.f23958a.write(c10);
            return this;
        }
        throw new IllegalStateException("Dangling name: " + this.f23965h);
    }

    public b b() throws IOException {
        m();
        return a(3, '{');
    }

    private void b(int i10) {
        this.f23959b[this.f23960c - 1] = i10;
    }

    private void a(int i10) {
        int i11 = this.f23960c;
        int[] iArr = this.f23959b;
        if (i11 == iArr.length) {
            this.f23959b = Arrays.copyOf(iArr, i11 * 2);
        }
        int[] iArr2 = this.f23959b;
        int i12 = this.f23960c;
        this.f23960c = i12 + 1;
        iArr2[i12] = i10;
    }

    public b a(String str) throws IOException {
        if (str != null) {
            if (this.f23965h == null) {
                if (this.f23960c != 0) {
                    this.f23965h = str;
                    return this;
                }
                throw new IllegalStateException("JsonWriter is closed.");
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("name == null");
    }

    public b a(Boolean bool) throws IOException {
        if (bool == null) {
            return h();
        }
        m();
        j();
        this.f23958a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public b a(long j10) throws IOException {
        m();
        j();
        this.f23958a.write(Long.toString(j10));
        return this;
    }

    public b a(Number number) throws IOException {
        if (number == null) {
            return h();
        }
        m();
        String string = number.toString();
        if (!this.f23963f && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        j();
        this.f23958a.append((CharSequence) string);
        return this;
    }
}
