package external.org.apache.commons.lang3.builder;

import external.org.apache.commons.lang3.ObjectUtils;

/* JADX INFO: loaded from: classes8.dex */
public class g implements a<String> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile ToStringStyle f90934d = ToStringStyle.DEFAULT_STYLE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StringBuffer f90935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f90936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ToStringStyle f90937c;

    public g(Object obj) {
        this(obj, null, null);
    }

    public static ToStringStyle Y() {
        return f90934d;
    }

    public static String c0(Object obj) {
        return f.v0(obj);
    }

    public static String d0(Object obj, ToStringStyle toStringStyle) {
        return f.w0(obj, toStringStyle);
    }

    public static String e0(Object obj, ToStringStyle toStringStyle, boolean z10) {
        return f.z0(obj, toStringStyle, z10, false, null);
    }

    public static <T> String f0(T t10, ToStringStyle toStringStyle, boolean z10, Class<? super T> cls) {
        return f.z0(t10, toStringStyle, z10, false, cls);
    }

    public static void g0(ToStringStyle toStringStyle) {
        if (toStringStyle == null) {
            throw new IllegalArgumentException("The style must not be null");
        }
        f90934d = toStringStyle;
    }

    public g A(String str, int[] iArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, iArr, Boolean.valueOf(z10));
        return this;
    }

    public g B(String str, long[] jArr) {
        this.f90937c.append(this.f90935a, str, jArr, (Boolean) null);
        return this;
    }

    public g C(String str, long[] jArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, jArr, Boolean.valueOf(z10));
        return this;
    }

    public g D(String str, Object[] objArr) {
        this.f90937c.append(this.f90935a, str, objArr, (Boolean) null);
        return this;
    }

    public g E(String str, Object[] objArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, objArr, Boolean.valueOf(z10));
        return this;
    }

    public g F(String str, short[] sArr) {
        this.f90937c.append(this.f90935a, str, sArr, (Boolean) null);
        return this;
    }

    public g G(String str, short[] sArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, sArr, Boolean.valueOf(z10));
        return this;
    }

    public g H(String str, boolean[] zArr) {
        this.f90937c.append(this.f90935a, str, zArr, (Boolean) null);
        return this;
    }

    public g I(String str, boolean[] zArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, zArr, Boolean.valueOf(z10));
        return this;
    }

    public g J(short s10) {
        this.f90937c.append(this.f90935a, (String) null, s10);
        return this;
    }

    public g K(boolean z10) {
        this.f90937c.append(this.f90935a, (String) null, z10);
        return this;
    }

    public g L(byte[] bArr) {
        this.f90937c.append(this.f90935a, (String) null, bArr, (Boolean) null);
        return this;
    }

    public g M(char[] cArr) {
        this.f90937c.append(this.f90935a, (String) null, cArr, (Boolean) null);
        return this;
    }

    public g N(double[] dArr) {
        this.f90937c.append(this.f90935a, (String) null, dArr, (Boolean) null);
        return this;
    }

    public g O(float[] fArr) {
        this.f90937c.append(this.f90935a, (String) null, fArr, (Boolean) null);
        return this;
    }

    public g P(int[] iArr) {
        this.f90937c.append(this.f90935a, (String) null, iArr, (Boolean) null);
        return this;
    }

    public g Q(long[] jArr) {
        this.f90937c.append(this.f90935a, (String) null, jArr, (Boolean) null);
        return this;
    }

    public g R(Object[] objArr) {
        this.f90937c.append(this.f90935a, (String) null, objArr, (Boolean) null);
        return this;
    }

    public g S(short[] sArr) {
        this.f90937c.append(this.f90935a, (String) null, sArr, (Boolean) null);
        return this;
    }

    public g T(boolean[] zArr) {
        this.f90937c.append(this.f90935a, (String) null, zArr, (Boolean) null);
        return this;
    }

    public g U(Object obj) {
        ObjectUtils.k(a0(), obj);
        return this;
    }

    public g V(String str) {
        if (str != null) {
            this.f90937c.appendSuper(this.f90935a, str);
        }
        return this;
    }

    public g W(String str) {
        if (str != null) {
            this.f90937c.appendToString(this.f90935a, str);
        }
        return this;
    }

    @Override // external.org.apache.commons.lang3.builder.a
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public String build() {
        return toString();
    }

    public Object Z() {
        return this.f90936b;
    }

    public g a(byte b10) {
        this.f90937c.append(this.f90935a, (String) null, b10);
        return this;
    }

    public StringBuffer a0() {
        return this.f90935a;
    }

    public g b(char c10) {
        this.f90937c.append(this.f90935a, (String) null, c10);
        return this;
    }

    public ToStringStyle b0() {
        return this.f90937c;
    }

    public g c(double d10) {
        this.f90937c.append(this.f90935a, (String) null, d10);
        return this;
    }

    public g d(float f10) {
        this.f90937c.append(this.f90935a, (String) null, f10);
        return this;
    }

    public g e(int i10) {
        this.f90937c.append(this.f90935a, (String) null, i10);
        return this;
    }

    public g f(long j10) {
        this.f90937c.append(this.f90935a, (String) null, j10);
        return this;
    }

    public g g(Object obj) {
        this.f90937c.append(this.f90935a, (String) null, obj, (Boolean) null);
        return this;
    }

    public g h(String str, byte b10) {
        this.f90937c.append(this.f90935a, str, b10);
        return this;
    }

    public g i(String str, char c10) {
        this.f90937c.append(this.f90935a, str, c10);
        return this;
    }

    public g j(String str, double d10) {
        this.f90937c.append(this.f90935a, str, d10);
        return this;
    }

    public g k(String str, float f10) {
        this.f90937c.append(this.f90935a, str, f10);
        return this;
    }

    public g l(String str, int i10) {
        this.f90937c.append(this.f90935a, str, i10);
        return this;
    }

    public g m(String str, long j10) {
        this.f90937c.append(this.f90935a, str, j10);
        return this;
    }

    public g n(String str, Object obj) {
        this.f90937c.append(this.f90935a, str, obj, (Boolean) null);
        return this;
    }

    public g o(String str, Object obj, boolean z10) {
        this.f90937c.append(this.f90935a, str, obj, Boolean.valueOf(z10));
        return this;
    }

    public g p(String str, short s10) {
        this.f90937c.append(this.f90935a, str, s10);
        return this;
    }

    public g q(String str, boolean z10) {
        this.f90937c.append(this.f90935a, str, z10);
        return this;
    }

    public g r(String str, byte[] bArr) {
        this.f90937c.append(this.f90935a, str, bArr, (Boolean) null);
        return this;
    }

    public g s(String str, byte[] bArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, bArr, Boolean.valueOf(z10));
        return this;
    }

    public g t(String str, char[] cArr) {
        this.f90937c.append(this.f90935a, str, cArr, (Boolean) null);
        return this;
    }

    public String toString() {
        if (Z() == null) {
            a0().append(b0().getNullText());
        } else {
            this.f90937c.appendEnd(a0(), Z());
        }
        return a0().toString();
    }

    public g u(String str, char[] cArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, cArr, Boolean.valueOf(z10));
        return this;
    }

    public g v(String str, double[] dArr) {
        this.f90937c.append(this.f90935a, str, dArr, (Boolean) null);
        return this;
    }

    public g w(String str, double[] dArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, dArr, Boolean.valueOf(z10));
        return this;
    }

    public g x(String str, float[] fArr) {
        this.f90937c.append(this.f90935a, str, fArr, (Boolean) null);
        return this;
    }

    public g y(String str, float[] fArr, boolean z10) {
        this.f90937c.append(this.f90935a, str, fArr, Boolean.valueOf(z10));
        return this;
    }

    public g z(String str, int[] iArr) {
        this.f90937c.append(this.f90935a, str, iArr, (Boolean) null);
        return this;
    }

    public g(Object obj, ToStringStyle toStringStyle) {
        this(obj, toStringStyle, null);
    }

    public g(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer) {
        toStringStyle = toStringStyle == null ? Y() : toStringStyle;
        stringBuffer = stringBuffer == null ? new StringBuffer(512) : stringBuffer;
        this.f90935a = stringBuffer;
        this.f90937c = toStringStyle;
        this.f90936b = obj;
        toStringStyle.appendStart(stringBuffer, obj);
    }
}
