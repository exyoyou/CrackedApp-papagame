package com.xinzhu.overmind.utils;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import kotlin.text.Typography;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes8.dex */
public class j implements XmlSerializer {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f90083m = 32768;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f90085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char[] f90086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f90087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Writer f90088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OutputStream f90089e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharsetEncoder f90090f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ByteBuffer f90091g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f90092h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f90093i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f90094j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f90095k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String[] f90082l = {"&#0;", "&#1;", "&#2;", "&#3;", "&#4;", "&#5;", "&#6;", "&#7;", "&#8;", "&#9;", "&#10;", "&#11;", "&#12;", "&#13;", "&#14;", "&#15;", "&#16;", "&#17;", "&#18;", "&#19;", "&#20;", "&#21;", "&#22;", "&#23;", "&#24;", "&#25;", "&#26;", "&#27;", "&#28;", "&#29;", "&#30;", "&#31;", null, null, "&quot;", null, null, null, "&amp;", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&lt;", null, "&gt;", null};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f90084n = "                                                              ";

    public j() {
        this(32768);
    }

    private void a(char c10) throws IOException {
        int i10 = this.f90087c;
        if (i10 >= this.f90085a - 1) {
            flush();
            i10 = this.f90087c;
        }
        this.f90086b[i10] = c10;
        this.f90087c = i10 + 1;
    }

    private void b(String str) throws IOException {
        c(str, 0, str.length());
    }

    private void c(String str, int i10, int i11) throws IOException {
        int i12 = this.f90085a;
        if (i11 <= i12) {
            int i13 = this.f90087c;
            if (i13 + i11 > i12) {
                flush();
                i13 = this.f90087c;
            }
            str.getChars(i10, i10 + i11, this.f90086b, i13);
            this.f90087c = i13 + i11;
            return;
        }
        int i14 = i11 + i10;
        while (i10 < i14) {
            int i15 = this.f90085a;
            int i16 = i10 + i15;
            if (i16 >= i14) {
                i15 = i14 - i10;
            }
            c(str, i10, i15);
            i10 = i16;
        }
    }

    private void d(char[] cArr, int i10, int i11) throws IOException {
        int i12 = this.f90085a;
        if (i11 <= i12) {
            int i13 = this.f90087c;
            if (i13 + i11 > i12) {
                flush();
                i13 = this.f90087c;
            }
            System.arraycopy(cArr, i10, this.f90086b, i13, i11);
            this.f90087c = i13 + i11;
            return;
        }
        int i14 = i11 + i10;
        while (i10 < i14) {
            int i15 = this.f90085a;
            int i16 = i10 + i15;
            if (i16 >= i14) {
                i15 = i14 - i10;
            }
            d(cArr, i10, i15);
            i10 = i16;
        }
    }

    private void e(int i10) throws IOException {
        int length = i10 * 4;
        if (length > f90084n.length()) {
            length = f90084n.length();
        }
        c(f90084n, 0, length);
    }

    private void f(String str) throws IOException {
        String str2;
        int length = str.length();
        String[] strArr = f90082l;
        char length2 = (char) strArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < length2 && (str2 = strArr[cCharAt]) != null) {
                if (i11 < i10) {
                    c(str, i11, i10 - i11);
                }
                i11 = i10 + 1;
                b(str2);
            }
            i10++;
        }
        if (i11 < i10) {
            c(str, i11, i10 - i11);
        }
    }

    private void g(char[] cArr, int i10, int i11) throws IOException {
        String str;
        String[] strArr = f90082l;
        char length = (char) strArr.length;
        int i12 = i11 + i10;
        int i13 = i10;
        while (i10 < i12) {
            char c10 = cArr[i10];
            if (c10 < length && (str = strArr[c10]) != null) {
                if (i13 < i10) {
                    d(cArr, i13, i10 - i13);
                }
                i13 = i10 + 1;
                b(str);
            }
            i10++;
        }
        if (i13 < i10) {
            d(cArr, i13, i10 - i13);
        }
    }

    private void h() throws IOException {
        int iPosition = this.f90091g.position();
        if (iPosition > 0) {
            this.f90091g.flip();
            this.f90089e.write(this.f90091g.array(), 0, iPosition);
            this.f90091g.clear();
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer attribute(String str, String str2, String str3) throws IllegalStateException, IOException, IllegalArgumentException {
        a(' ');
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        b("=\"");
        f(str3);
        a('\"');
        this.f90095k = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void cdsect(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void comment(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void docdecl(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void endDocument() throws IllegalStateException, IOException, IllegalArgumentException {
        flush();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer endTag(String str, String str2) throws IllegalStateException, IOException, IllegalArgumentException {
        int i10 = this.f90094j - 1;
        this.f90094j = i10;
        if (this.f90093i) {
            b(" />\n");
        } else {
            if (this.f90092h && this.f90095k) {
                e(i10);
            }
            b("</");
            if (str != null) {
                b(str);
                a(':');
            }
            b(str2);
            b(">\n");
        }
        this.f90095k = true;
        this.f90093i = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void entityRef(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void flush() throws IOException {
        int i10 = this.f90087c;
        if (i10 > 0) {
            if (this.f90089e != null) {
                CharBuffer charBufferWrap = CharBuffer.wrap(this.f90086b, 0, i10);
                CoderResult coderResultEncode = this.f90090f.encode(charBufferWrap, this.f90091g, true);
                while (!coderResultEncode.isError()) {
                    if (coderResultEncode.isOverflow()) {
                        h();
                        coderResultEncode = this.f90090f.encode(charBufferWrap, this.f90091g, true);
                    } else {
                        h();
                        this.f90089e.flush();
                    }
                }
                throw new IOException(coderResultEncode.toString());
            }
            this.f90088d.write(this.f90086b, 0, i10);
            this.f90088d.flush();
            this.f90087c = 0;
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public int getDepth() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public boolean getFeature(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getName() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getNamespace() {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public String getPrefix(String str, boolean z10) throws IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public Object getProperty(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void ignorableWhitespace(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void processingInstruction(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setFeature(String str, boolean z10) throws IllegalStateException, IllegalArgumentException {
        if (!str.equals("http://xmlpull.org/v1/doc/features.html#indent-output")) {
            throw new UnsupportedOperationException();
        }
        this.f90092h = true;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(OutputStream outputStream, String str) throws IllegalStateException, IOException, IllegalArgumentException {
        if (outputStream == null) {
            throw new IllegalArgumentException();
        }
        try {
            this.f90090f = Charset.forName(str).newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
            this.f90089e = outputStream;
        } catch (IllegalCharsetNameException e10) {
            throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e10));
        } catch (UnsupportedCharsetException e11) {
            throw ((UnsupportedEncodingException) new UnsupportedEncodingException(str).initCause(e11));
        }
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setPrefix(String str, String str2) throws IllegalStateException, IOException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setProperty(String str, Object obj) throws IllegalStateException, IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void startDocument(String str, Boolean bool) throws IllegalStateException, IOException, IllegalArgumentException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<?xml version='1.0' encoding='utf-8' standalone='");
        sb2.append(bool.booleanValue() ? "yes" : "no");
        sb2.append("' ?>\n");
        b(sb2.toString());
        this.f90095k = true;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer startTag(String str, String str2) throws IllegalStateException, IOException, IllegalArgumentException {
        if (this.f90093i) {
            b(">\n");
        }
        if (this.f90092h) {
            e(this.f90094j);
        }
        this.f90094j++;
        a(Typography.less);
        if (str != null) {
            b(str);
            a(':');
        }
        b(str2);
        this.f90093i = true;
        this.f90095k = false;
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(char[] cArr, int i10, int i11) throws IllegalStateException, IOException, IllegalArgumentException {
        if (this.f90093i) {
            b(SimpleComparison.GREATER_THAN_OPERATION);
            this.f90093i = false;
        }
        g(cArr, i10, i11);
        if (this.f90092h) {
            this.f90095k = cArr[(i10 + i11) - 1] == '\n';
        }
        return this;
    }

    public j(int i10) {
        this.f90092h = false;
        this.f90094j = 0;
        this.f90095k = true;
        i10 = i10 <= 0 ? 32768 : i10;
        this.f90085a = i10;
        this.f90086b = new char[i10];
        this.f90091g = ByteBuffer.allocate(i10);
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public XmlSerializer text(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        boolean z10 = false;
        if (this.f90093i) {
            b(SimpleComparison.GREATER_THAN_OPERATION);
            this.f90093i = false;
        }
        f(str);
        if (this.f90092h) {
            if (str.length() > 0 && str.charAt(str.length() - 1) == '\n') {
                z10 = true;
            }
            this.f90095k = z10;
        }
        return this;
    }

    @Override // org.xmlpull.v1.XmlSerializer
    public void setOutput(Writer writer) throws IllegalStateException, IOException, IllegalArgumentException {
        this.f90088d = writer;
    }
}
