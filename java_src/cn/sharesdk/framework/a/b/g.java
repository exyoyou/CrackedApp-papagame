package cn.sharesdk.framework.a.b;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class g extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f2551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f2552c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2553a;

    @Override // cn.sharesdk.framework.a.b.e
    protected String a() {
        return "[EXT]";
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int c() {
        return 5;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long d() {
        return f2551b;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long e() {
        return f2552c;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void f() {
        f2551b++;
    }

    @Override // cn.sharesdk.framework.a.b.e
    public boolean g() {
        cn.sharesdk.framework.a.a.e eVarA = cn.sharesdk.framework.a.a.e.a();
        f2551b = eVarA.k("insertExitEventCount");
        f2552c = eVarA.j("lastInsertExitEventTime");
        return super.g();
    }

    @Override // cn.sharesdk.framework.a.b.e
    public void h() {
        super.h();
        cn.sharesdk.framework.a.a.e eVarA = cn.sharesdk.framework.a.a.e.a();
        eVarA.a("lastInsertExitEventTime", Long.valueOf(f2552c));
        eVarA.a("insertExitEventCount", f2551b);
    }

    @Override // cn.sharesdk.framework.a.b.e
    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2543l)) {
            sb2.append(this.f2543l);
        }
        sb2.append('|');
        sb2.append(Math.round(this.f2553a / 1000.0f));
        return sb2.toString();
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void a(long j10) {
        f2552c = j10;
    }
}
