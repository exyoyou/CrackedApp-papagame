package com.join.mgps.ptr.indicator;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f72154n = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f72157c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f72158d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f72161g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f72155a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PointF f72156b = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f72159e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f72160f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f72162h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f72163i = 1.2f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f72164j = 2.7f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f72165k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f72166l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f72167m = 0;

    public void A() {
        this.f72165k = false;
    }

    public void B() {
        this.f72167m = this.f72159e;
    }

    protected void C(int current, int last) {
    }

    protected void D(float currentX, float currentY, float offsetX, float offsetY) {
        G(offsetX, offsetY / this.f72164j);
    }

    public final void E(int current) {
        int i10 = this.f72159e;
        this.f72160f = i10;
        this.f72159e = current;
        C(current, i10);
    }

    public void F(int height) {
        this.f72161g = height;
        L();
    }

    protected void G(float x10, float y10) {
        this.f72157c = x10;
        this.f72158d = y10;
    }

    public void H(int offset) {
        this.f72166l = offset;
    }

    public void I(int offset) {
        this.f72163i = (this.f72161g * 1.0f) / offset;
        this.f72155a = offset;
    }

    public void J(float ratio) {
        this.f72163i = ratio;
        this.f72155a = (int) (this.f72161g * ratio);
    }

    public void K(float resistance) {
        this.f72164j = resistance;
    }

    protected void L() {
        this.f72155a = (int) (this.f72163i * this.f72161g);
    }

    public boolean M(int to) {
        return to < 0;
    }

    public void a(a ptrSlider) {
        this.f72159e = ptrSlider.f72159e;
        this.f72160f = ptrSlider.f72160f;
        this.f72161g = ptrSlider.f72161g;
    }

    public boolean b() {
        return this.f72160f < i() && this.f72159e >= i();
    }

    public float c() {
        int i10 = this.f72161g;
        if (i10 == 0) {
            return 0.0f;
        }
        return (this.f72159e * 1.0f) / i10;
    }

    public int d() {
        return this.f72159e;
    }

    public int e() {
        return this.f72161g;
    }

    public float f() {
        int i10 = this.f72161g;
        if (i10 == 0) {
            return 0.0f;
        }
        return (this.f72160f * 1.0f) / i10;
    }

    public int g() {
        return this.f72160f;
    }

    public int h() {
        int i10 = this.f72166l;
        return i10 >= 0 ? i10 : this.f72161g;
    }

    public int i() {
        return this.f72155a;
    }

    public float j() {
        return this.f72157c;
    }

    public float k() {
        return this.f72158d;
    }

    public float l() {
        return this.f72163i;
    }

    public float m() {
        return this.f72164j;
    }

    public boolean n() {
        return this.f72159e >= this.f72167m;
    }

    public boolean o() {
        return this.f72160f != 0 && u();
    }

    public boolean p() {
        return this.f72160f == 0 && r();
    }

    public boolean q() {
        int i10 = this.f72160f;
        int i11 = this.f72161g;
        return i10 < i11 && this.f72159e >= i11;
    }

    public boolean r() {
        return this.f72159e > 0;
    }

    public boolean s() {
        return this.f72159e != this.f72162h;
    }

    public boolean t(int to) {
        return this.f72159e == to;
    }

    public boolean u() {
        return this.f72159e == 0;
    }

    public boolean v() {
        return this.f72159e > h();
    }

    public boolean w() {
        return this.f72159e >= i();
    }

    public boolean x() {
        return this.f72165k;
    }

    public final void y(float x10, float y10) {
        PointF pointF = this.f72156b;
        D(x10, y10, x10 - pointF.x, y10 - pointF.y);
        this.f72156b.set(x10, y10);
    }

    public void z(float x10, float y10) {
        this.f72165k = true;
        this.f72162h = this.f72159e;
        this.f72156b.set(x10, y10);
    }
}
