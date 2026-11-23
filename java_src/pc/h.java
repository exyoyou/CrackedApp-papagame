package pc;

import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private ArrayList A;
    private boolean B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f96288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f96289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f96290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f96291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f96292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f96293f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f96295h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f96296i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f96298k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f96299l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f96300m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f96301n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private byte[] f96302o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f96303p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f96304q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f96305r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f96306s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f96307t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f96308u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private char[] f96310w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f96311x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private n f96312y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private a f96313z;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f96309v = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f96294g = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f96297j = 0;

    public n A() {
        return this.f96312y;
    }

    public boolean B() {
        return this.f96311x;
    }

    public boolean C() {
        return this.f96307t;
    }

    public boolean D() {
        return this.f96308u;
    }

    public boolean E() {
        return this.B;
    }

    public void F(a aVar) {
        this.f96313z = aVar;
    }

    public void G(long j10) {
        this.f96296i = j10;
    }

    public void H(int i10) {
        this.f96292e = i10;
    }

    public void I(long j10) {
        this.f96294g = j10;
    }

    public void J(byte[] bArr) {
        this.f96295h = bArr;
    }

    public void K(boolean z10) {
        this.f96311x = z10;
    }

    public void L(boolean z10) {
        this.f96307t = z10;
    }

    public void M(int i10) {
        this.f96301n = i10;
    }

    public void N(boolean z10) {
        this.f96308u = z10;
    }

    public void O(int i10) {
        this.f96309v = i10;
    }

    public void P(byte[] bArr) {
        this.f96303p = bArr;
    }

    public void Q(ArrayList arrayList) {
        this.A = arrayList;
    }

    public void R(int i10) {
        this.f96299l = i10;
    }

    public void S(String str) {
        this.f96306s = str;
    }

    public void T(int i10) {
        this.f96300m = i10;
    }

    public void U(String str) {
        this.f96305r = str;
    }

    public void V(int i10) {
        this.f96298k = i10;
    }

    public void W(boolean z10) {
        this.B = z10;
    }

    public void X(byte[] bArr) {
        this.f96291d = bArr;
    }

    public void Y(byte[] bArr) {
        this.f96302o = bArr;
    }

    public void Z(int i10) {
        this.f96293f = i10;
    }

    public void a(o oVar, String str, k kVar, String str2, qc.a aVar, boolean z10) throws ZipException {
        if (oVar == null) {
            throw new ZipException("input zipModel is null");
        }
        if (!net.lingala.zip4j.util.h.f(str)) {
            throw new ZipException("Invalid output path");
        }
        new net.lingala.zip4j.unzip.c(oVar).f(this, str, kVar, str2, aVar, z10);
    }

    public void a0(long j10) {
        this.f96304q = j10;
    }

    public void b(o oVar, String str, k kVar, qc.a aVar, boolean z10) throws ZipException {
        a(oVar, str, kVar, null, aVar, z10);
    }

    public void b0(char[] cArr) {
        this.f96310w = cArr;
    }

    public void c(o oVar, String str, qc.a aVar, boolean z10) throws ZipException {
        b(oVar, str, null, aVar, z10);
    }

    public void c0(int i10) {
        this.f96288a = i10;
    }

    public a d() {
        return this.f96313z;
    }

    public void d0(long j10) {
        this.f96297j = j10;
    }

    public long e() {
        return this.f96296i;
    }

    public void e0(int i10) {
        this.f96289b = i10;
    }

    public int f() {
        return this.f96292e;
    }

    public void f0(int i10) {
        this.f96290c = i10;
    }

    public long g() {
        return this.f96294g & 4294967295L;
    }

    public void g0(n nVar) {
        this.f96312y = nVar;
    }

    public byte[] h() {
        return this.f96295h;
    }

    public int i() {
        return this.f96301n;
    }

    public int j() {
        return this.f96309v;
    }

    public byte[] k() {
        return this.f96303p;
    }

    public ArrayList l() {
        return this.A;
    }

    public int m() {
        return this.f96299l;
    }

    public String n() {
        return this.f96306s;
    }

    public int o() {
        return this.f96300m;
    }

    public String p() {
        return this.f96305r;
    }

    public int q() {
        return this.f96298k;
    }

    public byte[] r() {
        return this.f96291d;
    }

    public byte[] s() {
        return this.f96302o;
    }

    public int t() {
        return this.f96293f;
    }

    public long u() {
        return this.f96304q;
    }

    public char[] v() {
        return this.f96310w;
    }

    public int w() {
        return this.f96288a;
    }

    public long x() {
        return this.f96297j;
    }

    public int y() {
        return this.f96289b;
    }

    public int z() {
        return this.f96290c;
    }
}
