package com.byazt.xx;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1007, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f22104a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f22105c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f22106da;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f22108n;
    public String sl;
    public double tt;
    public double uj;
    public double ve;
    public int sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f22109x = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f22107i = 0;

    public c(double d10, double d11, double d12, double d13, int i10, String str) {
        this.f22105c = d10;
        this.tt = d11;
        this.ve = d12;
        this.uj = d13;
        this.f22108n = str;
        this.f22104a = i10;
    }

    private boolean n() {
        return c(this.tt, this.uj);
    }

    private boolean uj() {
        return c(this.f22105c, this.ve);
    }

    public boolean c() {
        return uj();
    }

    public String toString() {
        return "adnName = " + this.f22106da + " adnRit = " + this.sl + ", send = " + this.sp + ", fill = " + this.f22109x + ", show = " + this.f22107i + " localSsr = " + this.f22105c + ", serviceSsr = " + this.ve + ", localSrr = " + this.tt + ", serviceSrr = " + this.uj + ", opt = " + this.f22108n + ", condition = " + this.f22104a + ", compareBehaviorSsr = " + uj() + ", compareBehaviorSrr = " + n() + ", checkBehaviorRule = " + c();
    }

    public double tt() {
        return this.f22105c;
    }

    public double ve() {
        return this.tt;
    }

    private boolean c(double d10, double d11) {
        String str = this.f22108n;
        str.hashCode();
        switch (str) {
            case "1":
                return d10 > d11;
            case "2":
                return d10 < d11;
            case "3":
                return d10 >= d11;
            case "4":
                return d10 <= d11;
            case "5":
                return d10 == d11;
            default:
                return true;
        }
    }

    public void tt(int i10) {
        this.f22109x = i10;
    }

    public void ve(int i10) {
        this.f22107i = i10;
    }

    public void c(int i10) {
        this.sp = i10;
    }

    public void tt(String str) {
        this.sl = str;
    }

    public void c(String str) {
        this.f22106da = str;
    }
}
