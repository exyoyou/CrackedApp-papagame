package com.airbnb.lottie.parser.moshi;

import androidx.annotation.Nullable;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.apache.http.message.BasicHeaderValueFormatterHC4;

/* JADX INFO: loaded from: classes7.dex */
final class b extends JsonReader {
    private static final int A = 6;
    private static final int B = 7;
    private static final int C = 8;
    private static final int D = 9;
    private static final int E = 10;
    private static final int F = 11;
    private static final int G = 12;
    private static final int H = 13;
    private static final int I = 14;
    private static final int J = 15;
    private static final int K = 16;
    private static final int L = 17;
    private static final int M = 18;
    private static final int N = 0;
    private static final int O = 1;
    private static final int P = 2;
    private static final int Q = 3;
    private static final int R = 4;
    private static final int S = 5;
    private static final int T = 6;
    private static final int U = 7;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f6027o = -922337203685477580L;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final ByteString f6028p = ByteString.encodeUtf8("'\\");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final ByteString f6029q = ByteString.encodeUtf8(BasicHeaderValueFormatterHC4.UNSAFE_CHARS);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final ByteString f6030r = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final ByteString f6031s = ByteString.encodeUtf8("\n\r");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final ByteString f6032t = ByteString.encodeUtf8("*/");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f6033u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f6034v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f6035w = 2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f6036x = 3;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f6037y = 4;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f6038z = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final BufferedSource f6039i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Buffer f6040j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f6041k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f6042l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f6043m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private String f6044n;

    b(BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException("source == null");
        }
        this.f6039i = bufferedSource;
        this.f6040j = bufferedSource.getBufferField();
        s(6);
    }

    private void J() throws IOException {
        if (!this.f5983f) {
            throw I("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private int K() throws IOException {
        int[] iArr = this.f5980c;
        int i10 = this.f5979b;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int iO = O(true);
            this.f6040j.readByte();
            if (iO != 44) {
                if (iO != 59) {
                    if (iO != 93) {
                        throw I("Unterminated array");
                    }
                    this.f6041k = 4;
                    return 4;
                }
                J();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5) {
                    int iO2 = O(true);
                    this.f6040j.readByte();
                    if (iO2 != 44) {
                        if (iO2 != 59) {
                            if (iO2 != 125) {
                                throw I("Unterminated object");
                            }
                            this.f6041k = 2;
                            return 2;
                        }
                        J();
                    }
                }
                int iO3 = O(true);
                if (iO3 == 34) {
                    this.f6040j.readByte();
                    this.f6041k = 13;
                    return 13;
                }
                if (iO3 == 39) {
                    this.f6040j.readByte();
                    J();
                    this.f6041k = 12;
                    return 12;
                }
                if (iO3 != 125) {
                    J();
                    if (!M((char) iO3)) {
                        throw I("Expected name");
                    }
                    this.f6041k = 14;
                    return 14;
                }
                if (i11 == 5) {
                    throw I("Expected name");
                }
                this.f6040j.readByte();
                this.f6041k = 2;
                return 2;
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int iO4 = O(true);
                this.f6040j.readByte();
                if (iO4 != 58) {
                    if (iO4 != 61) {
                        throw I("Expected ':'");
                    }
                    J();
                    if (this.f6039i.request(1L) && this.f6040j.getByte(0L) == 62) {
                        this.f6040j.readByte();
                    }
                }
            } else if (i11 == 6) {
                iArr[i10 - 1] = 7;
            } else if (i11 == 7) {
                if (O(false) == -1) {
                    this.f6041k = 18;
                    return 18;
                }
                J();
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iO5 = O(true);
        if (iO5 == 34) {
            this.f6040j.readByte();
            this.f6041k = 9;
            return 9;
        }
        if (iO5 == 39) {
            J();
            this.f6040j.readByte();
            this.f6041k = 8;
            return 8;
        }
        if (iO5 != 44 && iO5 != 59) {
            if (iO5 == 91) {
                this.f6040j.readByte();
                this.f6041k = 3;
                return 3;
            }
            if (iO5 != 93) {
                if (iO5 == 123) {
                    this.f6040j.readByte();
                    this.f6041k = 1;
                    return 1;
                }
                int iR = R();
                if (iR != 0) {
                    return iR;
                }
                int iA0 = a0();
                if (iA0 != 0) {
                    return iA0;
                }
                if (!M(this.f6040j.getByte(0L))) {
                    throw I("Expected value");
                }
                J();
                this.f6041k = 10;
                return 10;
            }
            if (i11 == 1) {
                this.f6040j.readByte();
                this.f6041k = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw I("Unexpected value");
        }
        J();
        this.f6041k = 7;
        return 7;
    }

    private int L(String str, JsonReader.a aVar) {
        int length = aVar.f5985a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equals(aVar.f5985a[i10])) {
                this.f6041k = 0;
                this.f5981d[this.f5979b - 1] = str;
                return i10;
            }
        }
        return -1;
    }

    private boolean M(int i10) throws IOException {
        if (i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13 || i10 == 32) {
            return false;
        }
        if (i10 != 35) {
            if (i10 == 44) {
                return false;
            }
            if (i10 != 47 && i10 != 61) {
                if (i10 == 123 || i10 == 125 || i10 == 58) {
                    return false;
                }
                if (i10 != 59) {
                    switch (i10) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        J();
        return false;
    }

    private int O(boolean z10) throws IOException {
        int i10;
        int i11;
        byte b10;
        while (true) {
            while (true) {
                i11 = i10 + 1;
                if (!this.f6039i.request(i11)) {
                    if (z10) {
                        throw new EOFException("End of input");
                    }
                    return -1;
                }
                b10 = this.f6040j.getByte(i10);
                i10 = (b10 == 10 || b10 == 32 || b10 == 13 || b10 == 9) ? i11 : 0;
            }
            this.f6040j.skip(i11 - 1);
            if (b10 == 47) {
                if (!this.f6039i.request(2L)) {
                    return b10;
                }
                J();
                byte b11 = this.f6040j.getByte(1L);
                if (b11 == 42) {
                    this.f6040j.readByte();
                    this.f6040j.readByte();
                    if (!e0()) {
                        throw I("Unterminated comment");
                    }
                } else {
                    if (b11 != 47) {
                        return b10;
                    }
                    this.f6040j.readByte();
                    this.f6040j.readByte();
                    f0();
                }
            } else {
                if (b10 != 35) {
                    return b10;
                }
                J();
                f0();
            }
        }
    }

    private String P(ByteString byteString) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long jIndexOfElement = this.f6039i.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw I("Unterminated string");
            }
            if (this.f6040j.getByte(jIndexOfElement) != 92) {
                if (sb2 == null) {
                    String utf8 = this.f6040j.readUtf8(jIndexOfElement);
                    this.f6040j.readByte();
                    return utf8;
                }
                sb2.append(this.f6040j.readUtf8(jIndexOfElement));
                this.f6040j.readByte();
                return sb2.toString();
            }
            if (sb2 == null) {
                sb2 = new StringBuilder();
            }
            sb2.append(this.f6040j.readUtf8(jIndexOfElement));
            this.f6040j.readByte();
            sb2.append(c0());
        }
    }

    private String Q() throws IOException {
        long jIndexOfElement = this.f6039i.indexOfElement(f6030r);
        return jIndexOfElement != -1 ? this.f6040j.readUtf8(jIndexOfElement) : this.f6040j.readUtf8();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int R() throws IOException {
        String str;
        String str2;
        int i10;
        byte b10 = this.f6040j.getByte(0L);
        if (b10 == 116 || b10 == 84) {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        } else if (b10 == 102 || b10 == 70) {
            str = "false";
            str2 = "FALSE";
            i10 = 6;
        } else {
            if (b10 != 110 && b10 != 78) {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i10 = 7;
        }
        int length = str.length();
        int i11 = 1;
        while (i11 < length) {
            int i12 = i11 + 1;
            if (!this.f6039i.request(i12)) {
                return 0;
            }
            byte b11 = this.f6040j.getByte(i11);
            if (b11 != str.charAt(i11) && b11 != str2.charAt(i11)) {
                return 0;
            }
            i11 = i12;
        }
        if (this.f6039i.request(length + 1) && M(this.f6040j.getByte(length))) {
            return 0;
        }
        this.f6040j.skip(length);
        this.f6041k = i10;
        return i10;
    }

    private int a0() throws IOException {
        boolean z10 = true;
        long j10 = 0;
        int i10 = 0;
        char c10 = 0;
        boolean z11 = true;
        boolean z12 = false;
        while (true) {
            int i11 = i10 + 1;
            if (!this.f6039i.request(i11)) {
                break;
            }
            byte b10 = this.f6040j.getByte(i10);
            if (b10 != 43) {
                if (b10 == 69 || b10 == 101) {
                    if (c10 != 2 && c10 != 4) {
                        return 0;
                    }
                    c10 = 5;
                } else if (b10 != 45) {
                    if (b10 != 46) {
                        if (b10 < 48 || b10 > 57) {
                            if (!M(b10)) {
                                break;
                            }
                            return 0;
                        }
                        if (c10 == z10 || c10 == 0) {
                            j10 = -(b10 - 48);
                            c10 = 2;
                        } else if (c10 == 2) {
                            if (j10 == 0) {
                                return 0;
                            }
                            long j11 = (10 * j10) - ((long) (b10 - 48));
                            z11 &= j10 > -922337203685477580L || (j10 == -922337203685477580L && j11 < j10);
                            j10 = j11;
                        } else if (c10 == 3) {
                            c10 = 4;
                        } else if (c10 == 5 || c10 == 6) {
                            c10 = 7;
                        }
                    } else {
                        if (c10 != 2) {
                            return 0;
                        }
                        c10 = 3;
                    }
                } else if (c10 == 0) {
                    c10 = 1;
                    z12 = true;
                } else if (c10 != 5) {
                    return 0;
                }
                i10 = i11;
                z10 = true;
            } else if (c10 != 5) {
                return 0;
            }
            c10 = 6;
            i10 = i11;
            z10 = true;
        }
        if (c10 == 2 && z11 && ((j10 != Long.MIN_VALUE || z12) && (j10 != 0 || !z12))) {
            if (!z12) {
                j10 = -j10;
            }
            this.f6042l = j10;
            this.f6040j.skip(i10);
            this.f6041k = 16;
            return 16;
        }
        if (c10 != 2 && c10 != 4 && c10 != 7) {
            return 0;
        }
        this.f6043m = i10;
        this.f6041k = 17;
        return 17;
    }

    private char c0() throws IOException {
        int i10;
        int i11;
        if (!this.f6039i.request(1L)) {
            throw I("Unterminated escape sequence");
        }
        byte b10 = this.f6040j.readByte();
        if (b10 == 10 || b10 == 34 || b10 == 39 || b10 == 47 || b10 == 92) {
            return (char) b10;
        }
        if (b10 == 98) {
            return '\b';
        }
        if (b10 == 102) {
            return '\f';
        }
        if (b10 == 110) {
            return '\n';
        }
        if (b10 == 114) {
            return '\r';
        }
        if (b10 == 116) {
            return '\t';
        }
        if (b10 != 117) {
            if (this.f5983f) {
                return (char) b10;
            }
            throw I("Invalid escape sequence: \\" + ((char) b10));
        }
        if (!this.f6039i.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        char c10 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            byte b11 = this.f6040j.getByte(i12);
            char c11 = (char) (c10 << 4);
            if (b11 < 48 || b11 > 57) {
                if (b11 >= 97 && b11 <= 102) {
                    i10 = b11 - 97;
                } else {
                    if (b11 < 65 || b11 > 70) {
                        throw I("\\u" + this.f6040j.readUtf8(4L));
                    }
                    i10 = b11 + ByteSourceJsonBootstrapper.UTF8_BOM_3;
                }
                i11 = i10 + 10;
            } else {
                i11 = b11 - 48;
            }
            c10 = (char) (c11 + i11);
        }
        this.f6040j.skip(4L);
        return c10;
    }

    private void d0(ByteString byteString) throws IOException {
        while (true) {
            long jIndexOfElement = this.f6039i.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                throw I("Unterminated string");
            }
            if (this.f6040j.getByte(jIndexOfElement) != 92) {
                this.f6040j.skip(jIndexOfElement + 1);
                return;
            } else {
                this.f6040j.skip(jIndexOfElement + 1);
                c0();
            }
        }
    }

    private boolean e0() throws IOException {
        BufferedSource bufferedSource = this.f6039i;
        ByteString byteString = f6032t;
        long jIndexOf = bufferedSource.indexOf(byteString);
        boolean z10 = jIndexOf != -1;
        Buffer buffer = this.f6040j;
        buffer.skip(z10 ? jIndexOf + ((long) byteString.size()) : buffer.size());
        return z10;
    }

    private void f0() throws IOException {
        long jIndexOfElement = this.f6039i.indexOfElement(f6031s);
        Buffer buffer = this.f6040j;
        buffer.skip(jIndexOfElement != -1 ? jIndexOfElement + 1 : buffer.size());
    }

    private void g0() throws IOException {
        long jIndexOfElement = this.f6039i.indexOfElement(f6030r);
        Buffer buffer = this.f6040j;
        if (jIndexOfElement == -1) {
            jIndexOfElement = buffer.size();
        }
        buffer.skip(jIndexOfElement);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void b() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 3) {
            s(1);
            this.f5982e[this.f5979b - 1] = 0;
            this.f6041k = 0;
        } else {
            throw new JsonDataException("Expected BEGIN_ARRAY but was " + q() + " at path " + getPath());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6041k = 0;
        this.f5980c[0] = 8;
        this.f5979b = 1;
        this.f6040j.clear();
        this.f6039i.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void d() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 1) {
            s(3);
            this.f6041k = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + q() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void e() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK != 4) {
            throw new JsonDataException("Expected END_ARRAY but was " + q() + " at path " + getPath());
        }
        int i10 = this.f5979b - 1;
        this.f5979b = i10;
        int[] iArr = this.f5982e;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f6041k = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void f() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK != 2) {
            throw new JsonDataException("Expected END_OBJECT but was " + q() + " at path " + getPath());
        }
        int i10 = this.f5979b - 1;
        this.f5979b = i10;
        this.f5981d[i10] = null;
        int[] iArr = this.f5982e;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f6041k = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean g() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        return (iK == 2 || iK == 4 || iK == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean h() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 5) {
            this.f6041k = 0;
            int[] iArr = this.f5982e;
            int i10 = this.f5979b - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iK == 6) {
            this.f6041k = 0;
            int[] iArr2 = this.f5982e;
            int i11 = this.f5979b - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        throw new JsonDataException("Expected a boolean but was " + q() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double j() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 16) {
            this.f6041k = 0;
            int[] iArr = this.f5982e;
            int i10 = this.f5979b - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f6042l;
        }
        if (iK == 17) {
            this.f6044n = this.f6040j.readUtf8(this.f6043m);
        } else if (iK == 9) {
            this.f6044n = P(f6029q);
        } else if (iK == 8) {
            this.f6044n = P(f6028p);
        } else if (iK == 10) {
            this.f6044n = Q();
        } else if (iK != 11) {
            throw new JsonDataException("Expected a double but was " + q() + " at path " + getPath());
        }
        this.f6041k = 11;
        try {
            double d10 = Double.parseDouble(this.f6044n);
            if (this.f5983f || !(Double.isNaN(d10) || Double.isInfinite(d10))) {
                this.f6044n = null;
                this.f6041k = 0;
                int[] iArr2 = this.f5982e;
                int i11 = this.f5979b - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return d10;
            }
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + d10 + " at path " + getPath());
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.f6044n + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int k() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 16) {
            long j10 = this.f6042l;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f6041k = 0;
                int[] iArr = this.f5982e;
                int i11 = this.f5979b - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new JsonDataException("Expected an int but was " + this.f6042l + " at path " + getPath());
        }
        if (iK == 17) {
            this.f6044n = this.f6040j.readUtf8(this.f6043m);
        } else if (iK == 9 || iK == 8) {
            String strP = iK == 9 ? P(f6029q) : P(f6028p);
            this.f6044n = strP;
            try {
                int i12 = Integer.parseInt(strP);
                this.f6041k = 0;
                int[] iArr2 = this.f5982e;
                int i13 = this.f5979b - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        } else if (iK != 11) {
            throw new JsonDataException("Expected an int but was " + q() + " at path " + getPath());
        }
        this.f6041k = 11;
        try {
            double d10 = Double.parseDouble(this.f6044n);
            int i14 = (int) d10;
            if (i14 == d10) {
                this.f6044n = null;
                this.f6041k = 0;
                int[] iArr3 = this.f5982e;
                int i15 = this.f5979b - 1;
                iArr3[i15] = iArr3[i15] + 1;
                return i14;
            }
            throw new JsonDataException("Expected an int but was " + this.f6044n + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.f6044n + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String l() throws IOException {
        String strP;
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 14) {
            strP = Q();
        } else if (iK == 13) {
            strP = P(f6029q);
        } else if (iK == 12) {
            strP = P(f6028p);
        } else {
            if (iK != 15) {
                throw new JsonDataException("Expected a name but was " + q() + " at path " + getPath());
            }
            strP = this.f6044n;
        }
        this.f6041k = 0;
        this.f5981d[this.f5979b - 1] = strP;
        return strP;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String o() throws IOException {
        String utf8;
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 10) {
            utf8 = Q();
        } else if (iK == 9) {
            utf8 = P(f6029q);
        } else if (iK == 8) {
            utf8 = P(f6028p);
        } else if (iK == 11) {
            utf8 = this.f6044n;
            this.f6044n = null;
        } else if (iK == 16) {
            utf8 = Long.toString(this.f6042l);
        } else {
            if (iK != 17) {
                throw new JsonDataException("Expected a string but was " + q() + " at path " + getPath());
            }
            utf8 = this.f6040j.readUtf8(this.f6043m);
        }
        this.f6041k = 0;
        int[] iArr = this.f5982e;
        int i10 = this.f5979b - 1;
        iArr[i10] = iArr[i10] + 1;
        return utf8;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token q() throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        switch (iK) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int t(JsonReader.a aVar) throws IOException {
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK < 12 || iK > 15) {
            return -1;
        }
        if (iK == 15) {
            return L(this.f6044n, aVar);
        }
        int iSelect = this.f6039i.select(aVar.f5986b);
        if (iSelect != -1) {
            this.f6041k = 0;
            this.f5981d[this.f5979b - 1] = aVar.f5985a[iSelect];
            return iSelect;
        }
        String str = this.f5981d[this.f5979b - 1];
        String strL = l();
        int iL = L(strL, aVar);
        if (iL == -1) {
            this.f6041k = 15;
            this.f6044n = strL;
            this.f5981d[this.f5979b - 1] = str;
        }
        return iL;
    }

    public String toString() {
        return "JsonReader(" + this.f6039i + ")";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void v() throws IOException {
        if (this.f5984g) {
            throw new JsonDataException("Cannot skip unexpected " + q() + " at " + getPath());
        }
        int iK = this.f6041k;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 14) {
            g0();
        } else if (iK == 13) {
            d0(f6029q);
        } else if (iK == 12) {
            d0(f6028p);
        } else if (iK != 15) {
            throw new JsonDataException("Expected a name but was " + q() + " at path " + getPath());
        }
        this.f6041k = 0;
        this.f5981d[this.f5979b - 1] = "null";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void y() throws IOException {
        if (this.f5984g) {
            throw new JsonDataException("Cannot skip unexpected " + q() + " at " + getPath());
        }
        int i10 = 0;
        do {
            int iK = this.f6041k;
            if (iK == 0) {
                iK = K();
            }
            if (iK == 3) {
                s(1);
            } else {
                if (iK == 1) {
                    s(3);
                } else if (iK == 4) {
                    i10--;
                    if (i10 < 0) {
                        throw new JsonDataException("Expected a value but was " + q() + " at path " + getPath());
                    }
                    this.f5979b--;
                } else if (iK == 2) {
                    i10--;
                    if (i10 < 0) {
                        throw new JsonDataException("Expected a value but was " + q() + " at path " + getPath());
                    }
                    this.f5979b--;
                } else if (iK == 14 || iK == 10) {
                    g0();
                } else if (iK == 9 || iK == 13) {
                    d0(f6029q);
                } else if (iK == 8 || iK == 12) {
                    d0(f6028p);
                } else if (iK == 17) {
                    this.f6040j.skip(this.f6043m);
                } else if (iK == 18) {
                    throw new JsonDataException("Expected a value but was " + q() + " at path " + getPath());
                }
                this.f6041k = 0;
            }
            i10++;
            this.f6041k = 0;
        } while (i10 != 0);
        int[] iArr = this.f5982e;
        int i11 = this.f5979b;
        int i12 = i11 - 1;
        iArr[i12] = iArr[i12] + 1;
        this.f5981d[i11 - 1] = "null";
    }
}
