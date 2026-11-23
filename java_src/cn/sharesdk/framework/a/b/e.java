package cn.sharesdk.framework.a.b;

import com.mob.MobSDK;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2537f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f2538g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2541j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f2542k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f2543l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f2544m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f2545n;

    protected abstract String a();

    protected abstract void a(long j10);

    protected abstract int b();

    protected abstract int c();

    protected abstract long d();

    protected abstract long e();

    protected abstract void f();

    public boolean g() {
        int iB = b();
        int iC = c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - e() < iB) {
            return d() < ((long) iC);
        }
        a(jCurrentTimeMillis);
        return true;
    }

    public void h() {
        f();
    }

    public String toString() {
        return a() + ':' + this.f2536e + '|' + this.f2537f + '|' + MobSDK.getAppkey() + '|' + this.f2538g + '|' + this.f2539h + '|' + this.f2540i + '|' + this.f2541j + '|' + this.f2542k;
    }
}
