package cn.sharesdk.framework.a.b;

/* JADX INFO: loaded from: classes7.dex */
public class a extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f2526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f2527d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2529b;

    @Override // cn.sharesdk.framework.a.b.e
    protected String a() {
        return "[API]";
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int c() {
        return 50;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long d() {
        return f2526c;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long e() {
        return f2527d;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void f() {
        f2526c++;
    }

    @Override // cn.sharesdk.framework.a.b.e
    public String toString() {
        return super.toString() + '|' + this.f2528a + '|' + this.f2529b;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void a(long j10) {
        f2527d = j10;
    }
}
