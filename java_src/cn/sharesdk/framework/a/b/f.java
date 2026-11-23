package cn.sharesdk.framework.a.b;

/* JADX INFO: loaded from: classes7.dex */
public class f extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f2546d;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static long f2547o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2550c = "";

    @Override // cn.sharesdk.framework.a.b.e
    protected String a() {
        return "[EVT]";
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int c() {
        return 30;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long d() {
        return f2546d;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long e() {
        return f2547o;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void f() {
        f2546d++;
    }

    @Override // cn.sharesdk.framework.a.b.e
    public String toString() {
        return super.toString() + '|' + this.f2548a + '|' + this.f2549b + '|' + this.f2550c;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void a(long j10) {
        f2547o = j10;
    }
}
