package com.facebook.imagepipeline.common;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import com.facebook.imagepipeline.common.d;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d<T extends d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27785a = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27786b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f27787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f27789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f27790f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap.Config f27791g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap.Config f27792h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.decoder.b f27793i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private m4.a f27794j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private ColorSpace f27795k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f27796l;

    public d() {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        this.f27791g = config;
        this.f27792h = config;
    }

    public T A(boolean z10) {
        this.f27788d = z10;
        return (T) m();
    }

    public c a() {
        return new c(this);
    }

    public Bitmap.Config b() {
        return this.f27792h;
    }

    public Bitmap.Config c() {
        return this.f27791g;
    }

    @Nullable
    public m4.a d() {
        return this.f27794j;
    }

    @Nullable
    public ColorSpace e() {
        return this.f27795k;
    }

    @Nullable
    public com.facebook.imagepipeline.decoder.b f() {
        return this.f27793i;
    }

    public boolean g() {
        return this.f27789e;
    }

    public boolean h() {
        return this.f27787c;
    }

    public boolean i() {
        return this.f27796l;
    }

    public boolean j() {
        return this.f27790f;
    }

    public int k() {
        return this.f27786b;
    }

    public int l() {
        return this.f27785a;
    }

    protected T m() {
        return this;
    }

    public boolean n() {
        return this.f27788d;
    }

    public T o(Bitmap.Config config) {
        this.f27792h = config;
        return (T) m();
    }

    public T p(Bitmap.Config config) {
        this.f27791g = config;
        return (T) m();
    }

    public T q(@Nullable m4.a aVar) {
        this.f27794j = aVar;
        return (T) m();
    }

    public T r(ColorSpace colorSpace) {
        this.f27795k = colorSpace;
        return (T) m();
    }

    public T s(@Nullable com.facebook.imagepipeline.decoder.b bVar) {
        this.f27793i = bVar;
        return (T) m();
    }

    public T t(boolean z10) {
        this.f27789e = z10;
        return (T) m();
    }

    public T u(boolean z10) {
        this.f27787c = z10;
        return (T) m();
    }

    public T v(boolean z10) {
        this.f27796l = z10;
        return (T) m();
    }

    public T w(boolean z10) {
        this.f27790f = z10;
        return (T) m();
    }

    public d x(c options) {
        this.f27785a = options.f27773a;
        this.f27786b = options.f27774b;
        this.f27787c = options.f27775c;
        this.f27788d = options.f27776d;
        this.f27789e = options.f27777e;
        this.f27790f = options.f27778f;
        this.f27791g = options.f27779g;
        this.f27792h = options.f27780h;
        this.f27793i = options.f27781i;
        this.f27794j = options.f27782j;
        this.f27795k = options.f27783k;
        return m();
    }

    public T y(int i10) {
        this.f27786b = i10;
        return (T) m();
    }

    public T z(int i10) {
        this.f27785a = i10;
        return (T) m();
    }
}
