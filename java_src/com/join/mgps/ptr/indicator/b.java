package com.join.mgps.ptr.indicator;

/* JADX INFO: loaded from: classes3.dex */
public class b extends a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f72169p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f72170q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f72172s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f72173t;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f72168o = 0.5f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f72171r = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f72174u = -1.0f;

    private float O(float scrollTop) {
        float f10 = scrollTop / this.f72171r;
        this.f72172s = f10;
        Math.min(1.0f, Math.abs(f10));
        float f11 = this.f72171r;
        Math.pow(Math.max(0.0f, Math.min(scrollTop - f11, f11 * 2.0f) / this.f72171r) / 4.0f, 2.0d);
        return 0.0f;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void A() {
        super.A();
        this.f72173t = d();
        this.f72174u = this.f72172s;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void B() {
        this.f72173t = d();
        this.f72174u = N();
    }

    @Override // com.join.mgps.ptr.indicator.a
    protected void D(float currentX, float currentY, float offsetX, float offsetY) {
        float f10 = this.f72169p;
        if (currentY < f10) {
            super.D(currentX, currentY, offsetX, offsetY);
            return;
        }
        float f11 = ((currentY - f10) * this.f72168o) + this.f72170q;
        float f12 = f11 / this.f72171r;
        if (f12 < 0.0f) {
            G(offsetX, 0.0f);
            return;
        }
        this.f72172s = f12;
        float fMin = Math.min(1.0f, Math.abs(f12));
        float f13 = this.f72171r;
        double dMax = Math.max(0.0f, Math.min(f11 - f13, f13 * 2.0f) / this.f72171r) / 4.0f;
        float fPow = ((float) (dMax - Math.pow(dMax, 2.0d))) * 2.0f;
        float f14 = this.f72171r;
        G(currentX, ((int) ((f14 * fMin) + ((fPow * f14) / 2.0f))) - d());
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void F(int height) {
        super.F(height);
        this.f72171r = (height * 4.0f) / 5.0f;
    }

    public float N() {
        float fD;
        int iH;
        if (x()) {
            return this.f72172s;
        }
        float f10 = this.f72174u;
        if (f10 <= 0.0f) {
            fD = d() * 1.0f;
            iH = h();
        } else {
            fD = f10 * d();
            iH = this.f72173t;
        }
        return fD / iH;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public int h() {
        return i();
    }

    @Override // com.join.mgps.ptr.indicator.a
    public int i() {
        return (int) this.f72171r;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void z(float x10, float y10) {
        super.z(x10, y10);
        this.f72169p = y10;
        this.f72170q = d();
    }
}
