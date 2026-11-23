package qc;

import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f96718k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f96719l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f96720m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f96721n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f96722o = 2;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f96723p = 3;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f96724q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f96725r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f96726s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f96727t = 2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f96728u = 3;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f96729v = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f96730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f96731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f96732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f96733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f96734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f96735f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f96736g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Throwable f96737h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f96738i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f96739j;

    public a() {
        o();
        this.f96733d = 0;
    }

    public void a() {
        this.f96738i = true;
    }

    public void b(Throwable th) throws ZipException {
        o();
        this.f96736g = 2;
        this.f96737h = th;
    }

    public void c() throws ZipException {
        o();
        this.f96736g = 0;
    }

    public void d() {
        o();
        this.f96737h = null;
        this.f96736g = 0;
    }

    public int e() {
        return this.f96734e;
    }

    public Throwable f() {
        return this.f96737h;
    }

    public String g() {
        return this.f96735f;
    }

    public int h() {
        return this.f96733d;
    }

    public int i() {
        return this.f96736g;
    }

    public int j() {
        return this.f96730a;
    }

    public long k() {
        return this.f96731b;
    }

    public long l() {
        return this.f96732c;
    }

    public boolean m() {
        return this.f96738i;
    }

    public boolean n() {
        return this.f96739j;
    }

    public void o() {
        this.f96734e = -1;
        this.f96730a = 0;
        this.f96735f = null;
        this.f96731b = 0L;
        this.f96732c = 0L;
        this.f96733d = 0;
    }

    public void p(int i10) {
        this.f96734e = i10;
    }

    public void q(Throwable th) {
        this.f96737h = th;
    }

    public void r(String str) {
        this.f96735f = str;
    }

    public void s(boolean z10) {
        this.f96739j = z10;
    }

    public void setResult(int i10) {
        this.f96736g = i10;
    }

    public void t(int i10) {
        this.f96733d = i10;
    }

    public void u(int i10) {
        this.f96730a = i10;
    }

    public void v(long j10) {
        this.f96731b = j10;
    }

    public void w(long j10) {
        long j11 = this.f96732c + j10;
        this.f96732c = j11;
        long j12 = this.f96731b;
        if (j12 > 0) {
            int i10 = (int) ((j11 * 100) / j12);
            this.f96733d = i10;
            if (i10 > 100) {
                this.f96733d = 100;
            }
        }
        while (this.f96739j) {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException unused) {
            }
        }
    }
}
