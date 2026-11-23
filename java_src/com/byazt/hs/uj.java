package com.byazt.hs;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1404, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f15103c;
    public final int tt;
    public int uj;
    public double ve = -1.0d;

    public uj(double d10) {
        this.f15103c = d10;
        this.tt = d10 == 0.0d ? Integer.MAX_VALUE : (int) Math.ceil(1.0d / d10);
    }

    public void c(double d10) {
        double d11 = 1.0d - this.f15103c;
        int i10 = this.uj;
        if (i10 > this.tt) {
            this.ve = Math.exp((d11 * Math.log(this.ve)) + (this.f15103c * Math.log(d10)));
        } else if (i10 > 0) {
            double d12 = (d11 * ((double) i10)) / (((double) i10) + 1.0d);
            this.ve = Math.exp((d12 * Math.log(this.ve)) + ((1.0d - d12) * Math.log(d10)));
        } else {
            this.ve = d10;
        }
        this.uj++;
    }

    public double c() {
        return this.ve;
    }
}
